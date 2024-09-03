# nanodanvim

Prerequisites: (Assuming you're on MacOS)
* Homebrew
* Ruby (the native version in macOS works fine)

Install nvim: `brew install neovim`
Install fzf: `brew install fzf`

Clone the contents of this repo into `~/config/nvim`

Open `nvim`, then run `:LazyHealth` to ensure LazyNvim is running correctly.
You may see LazyNvim run automatically on startup, that's my Neovim package manager of choice.

## LSP

I haven't configured MavenLSP to automatically maintain LSP servers yet. Because I'm lazy.

Instead, here's how to install the following LSPs currently configured:

### tsserver
`npm install -g typescript typescript-language-server`

### sourcekit
This one requires installing `Xcode`, since it's for Swift and Objective-C. If you're not in the business of screaming at Apple docs, you can skip this one.

### ruby_lsp
`gem install ruby-lsp` using Native Ruby's inbuilt package manager

### lua_ls
`brew install lua-language-server`

### eslint
`npm i -g vscode-langservers-extracted`

## Notes to self for tools that you like and will probably forget about
`brew install zoxide` cd replacement
`brew install joshuto` file explorer in the console
`brew install lazygit` console git GUI
`brew install eza` ls replacement

## TO-DOs
* Move LSP installations to use MavenLSP
* Add LSP plugins for GraphQL and Prisma
* Add LSP plugins for Java, Kotlin
