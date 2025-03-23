#!/usr/bin/env bash
#MISE description="Deploy the site"

set -eo pipefail

temp_dir=$(mktemp -d)
trap 'rm -rf "$temp_dir"' EXIT

logseq_commit="2d8e80954e5de53d62ff4713de0289e9a21c039d"
logseq_publish_spa_commit="353b3654d00d6a5df2bb7b8bfef93766cdaad01c"
build_directory="build/"
rm -rf $build_directory

logseq_directory=$temp_dir/logseq
git clone --depth 1 "https://$GITHUB_TOKEN@github.com/logseq/logseq.git" "$logseq_directory"
git -C "$logseq_directory" fetch --depth 1 origin "$logseq_commit"
git -C "$logseq_directory" checkout "$logseq_commit"
yarn install --frozen-lockfile --cwd $logseq_directory
yarn --cwd $logseq_directory gulp:build
(cd $logseq_directory && clojure -M:cljs release publishing)

logseq_publish_spa_directory=$temp_dir/logseq-publish-spa
git clone --depth 1 "https://$GITHUB_TOKEN@github.com/logseq/publish-spa.git" "$logseq_publish_spa_directory"
git -C "$logseq_publish_spa_directory" fetch --depth 1 origin "$logseq_publish_spa_commit"
git -C "$logseq_publish_spa_directory" checkout "$logseq_publish_spa_commit"
yarn install --frozen-lockfile --cwd $logseq_publish_spa_directory
yarn --cwd $logseq_publish_spa_directory nbb-logseq -e ':fetching-deps'

node $logseq_publish_spa_directory/publish_spa.mjs $build_directory --static-directory $logseq_directory/static --directory . --theme-mode light --accent-color blue

wrangler pages deploy $build_directory --project-name vault --branch main
