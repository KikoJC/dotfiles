-- ~/.config/nvim/lua/default/options.lua
-- |option-list| |vim.opt| |vim.o| |vim.cmd| |vim.g| |options|
vim.opt.autochdir = true
vim.opt.autowrite = true
vim.opt.breakindent = true
vim.opt.buflisted = false
vim.opt.cmdheight = 1
vim.opt.completeopt = {"menu", "menuone", "noselect", "noinsert", "preview"}
vim.opt.confirm = true
vim.opt.colorcolumn = "80"
vim.opt.cpoptions:append("IW")
vim.opt.cursorline = true
vim.opt.expandtab = true
vim.opt.fillchars = {vert = "│"}
vim.opt.formatoptions:remove("tcro")
vim.opt.formatoptions:append("l,n")
vim.opt.grepformat = "%f:%l:%c:%m"
vim.opt.grepprg = "rg --vimgrep"
vim.opt.hlsearch = false
vim.opt.ignorecase = true
vim.opt.inccommand = "nosplit"
vim.opt.iskeyword:append("-")
vim.opt.keymodel = "startsel"
vim.opt.keywordprg = ":help"
vim.opt.laststatus = 3
vim.opt.linebreak = true
vim.opt.list = true
vim.opt.listchars:append("conceal:͋, eol:⤶")
vim.opt.matchpairs:append("<:>")
vim.opt.nrformats:append("alpha")
vim.opt.number = true
vim.opt.pumblend = 10
vim.opt.pumheight = 5
vim.opt.relativenumber = true
vim.opt.scrolloff = 4
vim.opt.shiftwidth = 4
vim.opt.shortmess:append("WIcC")
vim.opt.showcmdloc = "statusline"
vim.opt.showmode = false
vim.opt.sidescrolloff = 20
vim.opt.signcolumn = "yes"
vim.opt.smartcase = true
vim.opt.smartindent = true
vim.opt.softtabstop = 4
vim.opt.spelllang = { "en" }
vim.opt.splitbelow = true
vim.opt.splitkeep = "screen"
vim.opt.splitright = true
vim.opt.swapfile = false
vim.opt.syntax = "off"
vim.opt.tabstop = 4
vim.opt.termguicolors = true
vim.opt.textwidth = 100
vim.opt.timeout = true
vim.opt.timeoutlen = 500
vim.opt.title = true
vim.opt.undofile = true
vim.opt.undolevels = 10000
vim.opt.updatetime = 300
vim.opt.wildmode = "longest:full,full"
vim.opt.winbar = '%m%r%= %F'
vim.opt.winblend = 10
vim.opt.winminwidth = 5
vim.opt.wrap = false

-- Markdown indentation and folding settings
vim.g.markdown_folding = 0
vim.g.markdown_recommended_style = 0

-- Colorscheme
vim.cmd.colorscheme "habamax"

-- Json
vim.g.vim_json_conceal = 0

-- Default browser
-- vim.g.netrw_browsex_viewer = "wyeb"

-- make zsh files recognized as sh for bash-ls & treesitter
-- https://nanotipsforvim.prose.sh/treesitter-and-lsp-support-for-zsh
vim.filetype.add {
	extension = {
		zsh = "sh",
		sh = "sh", -- force sh-files with zsh-shebang to still get sh as filetype
	},
	filename = {
		[".zshrc"] = "sh",
		[".zshenv"] = "sh",
	},
}
