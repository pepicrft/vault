#!/usr/bin/env bash
#MISE description="Deploy the site"

set -eo pipefail

wrangler pages deploy build/ --project-name vault --branch main
