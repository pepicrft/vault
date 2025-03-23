public:: true

- This page contains some ideas for projects or problems that I might tinker with in the future.
- ## An open-source version of Raycast
	- An alternative to Raycast, for example Librecast or Opencast, that's 
	  built with Rust to work cross-platform. It could use the same UI 
	  rendering layer as Zed.
- # Matching of designers with open source projects
	- Many open-source projects would benefit from having designers contribute
	   to them. However, this is not that common. I think we could build a 
	  simple directory where projects can list themselves, and they can be 
	  contacted by designers.
- ## A CLI to cache artifacts across environments
	- CI providers built caching solutions coupled to their CI platforms (e.g. [actions/cache](https://github.com/actions/cache))
	  making someone's automation hard to port across environments, and the 
	  cache artifacts not reusable outside of the CI environments.
	- We could build a CLI drawing some ideas from [Usage](https://usage.jdx.dev)
	  such that you can add some cache annotations to a script, and then the 
	  CLI restores and saves artifacts from and to the cache before and after 
	  the execution of the script.
- ## A dependency-updating tool
	- When setting up the Codefreude organization in 
	  Codeberg, I noticed that existing tools for updating dependencies like 
	  Dependabot or [Renovatebot](https://docs.renovatebot.com) are closed source and create a vendor locking with platforms like GitHub.
	- We could build an open-source alternative that works with multiple Git forges (e.g. GitHub, GitLab, Codeberg)
- ## A tool for democracy in open source projects
	- After what we've seen with WordPress, I expect 
	  open governance to be a thing soonish in open-source projects. It'd be 
	  great to have the tools to govern projects being transparent and 
	  democratic to build trust with the community of a project. The tool 
	  could include features like:
		- Intellectual properties (i.e. who owns what)
		- Roadmapping (i.e. proposal and voting of features)
		- Budgeting from donations
- ## An Apple-native Discourse client
	- I love Discourse as a forum platform, but I miss having a native experience in Apple platforms. We can build a simple client where people can add various forums, and check their topics, categories, and interact with other members on topics.
- ## Podcast hosting platform
	- A platform where people can create podcasts, design the frontend using a
	   template language like Liquid, and syndicate new episodes to various 
	  platforms by connecting their accounts. The platform also provides RSS 
	  feeds to pull the episodes from.
- ## Native knowledge management app
	- I like Obsidian and Logseq, but they don't feel native to the platforms in which they run (e.g. macOS). I'd love to have an app that's native to platforms like iOS and macOS, and that allows me to capture things on the go.
	- We could adopt a similar architecture as Ghostty, where the core is implemented in a programming language like Zig that can target multiple platforms, and then a presentation layer is added on top.
	- > Note: The state of building editors for Apple platforms is not ideal. We might want to use something like STTextView
- # Documentation app for macOS
	- Something akin to [Dash](https://kapeli.com/dash) but open source and made cross-platform, for example by using a Rust UI framework like the one that the Zed editor uses.