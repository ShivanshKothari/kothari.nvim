local function bootstrap_pckr()
  local pckr_path = vim.fn.stdpath("data") .. "/pckr/pckr.nvim"

  if not vim.loop.fs_stat(pckr_path) then
    vim.fn.system({
      'git',
      'clone',
      "--filter=blob:none",
      'https://github.com/lewis6991/pckr.nvim',
      pckr_path
    })
  end

  vim.opt.rtp:prepend(pckr_path)
end

bootstrap_pckr()

require('pckr').add{
  'wbthomason/packer.nvim';
  
  {
	'nvim-telescope/telescope.nvim', tag = '0.1.6',
	-- or                            , branch = '0.1.x',
	requires = { {'nvim-lua/plenary.nvim'} }
  };
  {
	'oxfist/night-owl.nvim',
	as = 'night-owl',
	config = function()
		vim.cmd('colorscheme night-owl')
	end
  };
  { 'nvim-treesitter/nvim-treesitter', {run = ":TSUpdate"}};
  'theprimeagen/harpoon';
  'mbbill/undotree';
  'tpope/vim-fugitive';
  'nvim-treesitter/playground';

  -- My plugins here
  -- 'foo1/bar1.nvim';
  -- 'foo2/bar2.nvim';
}
