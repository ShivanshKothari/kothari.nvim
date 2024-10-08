## My Neovim Config
This is my neovim config after many improvements. The latest improvements include:-
- Added option for accessing hidden files and folders especially those following Next.js convention such as route groups
- Auto save features
- Treesitter windows compatibility using Zig compiler for compiling parsers
- Modular configuration according to Lazy.nvim file convention
- Fast load with only essential plugins

### Plugins
- Lazy package manager (Great for fast plugin install and configuration)
- Catppuccin theme (IDK, just seems comfortable to the eyes ╰(*°▽°*)╯)
- Treesitter (Duh)
- Telescope (Probably the best for fuzzy finding files, live grep, searching git files etc.)
- Mason, mason-lspconfig, nvim-lspconfig (Great LSP support from install to config to community. Can't go YOLO here :) )
- Lualine (Dracula theme)
- Neotree (File explorer)
- Comment.nvim (Takes the load off commenting different languages in a flash)
- transparent.nvim (Ensures transparent background for neovim for each buffer/split window
- auto-save.nvim (Automatically saves files)

### Cloning and contributing
Feel free to make this config your own. Also, any contributions or improvements are welcome given they suit my taste. 
1. Go to the parent of your neovim config directory
2. Delete after backing up your previous `/nvim` config folder (if you have one previously)
3. Clone this repository
```
git clone https://github.com/ShivanshKothari/kothari.nvim nvim
```
4. Run neovim by running command `nvim`

