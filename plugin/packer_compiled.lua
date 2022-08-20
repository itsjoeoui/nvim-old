-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

  local time
  local profile_info
  local should_profile = false
  if should_profile then
    local hrtime = vim.loop.hrtime
    profile_info = {}
    time = function(chunk, start)
      if start then
        profile_info[chunk] = hrtime()
      else
        profile_info[chunk] = (hrtime() - profile_info[chunk]) / 1e6
      end
    end
  else
    time = function(chunk, start) end
  end
  
local function save_profiles(threshold)
  local sorted_times = {}
  for chunk_name, time_taken in pairs(profile_info) do
    sorted_times[#sorted_times + 1] = {chunk_name, time_taken}
  end
  table.sort(sorted_times, function(a, b) return a[2] > b[2] end)
  local results = {}
  for i, elem in ipairs(sorted_times) do
    if not threshold or threshold and elem[2] > threshold then
      results[i] = elem[1] .. ' took ' .. elem[2] .. 'ms'
    end
  end

  _G._packer = _G._packer or {}
  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/Users/itsjoeoui/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/Users/itsjoeoui/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/Users/itsjoeoui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/Users/itsjoeoui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/Users/itsjoeoui/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
if not string.find(package.path, package_path_str, 1, true) then
  package.path = package.path .. ';' .. package_path_str
end

if not string.find(package.cpath, install_cpath_pattern, 1, true) then
  package.cpath = package.cpath .. ';' .. install_cpath_pattern
end

time([[Luarocks path setup]], false)
time([[try_loadstring definition]], true)
local function try_loadstring(s, component, name)
  local success, result = pcall(loadstring(s), name, _G.packer_plugins[name])
  if not success then
    vim.schedule(function()
      vim.api.nvim_notify('packer.nvim: Error running ' .. component .. ' for ' .. name .. ': ' .. result, vim.log.levels.ERROR, {})
    end)
  end
  return result
end

time([[try_loadstring definition]], false)
time([[Defining packer_plugins]], true)
_G.packer_plugins = {
  LuaSnip = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["cmp-buffer"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-tabnine"] = {
    config = { "\27LJ\2\nd\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\16cmp_tabnine\nsetup\bcmp\frequire\0" },
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/cmp-tabnine",
    url = "https://github.com/tzachar/cmp-tabnine"
  },
  ["gitsigns.nvim"] = {
    config = { "\27LJ\2\nd\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\23current_line_blame\2\15signcolumn\2\nnumhl\2\nsetup\rgitsigns\frequire\0" },
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/gitsigns.nvim",
    url = "https://github.com/lewis6991/gitsigns.nvim"
  },
  ["lspkind-nvim"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/lspkind-nvim",
    url = "https://github.com/onsails/lspkind-nvim"
  },
  ["lspsaga.nvim"] = {
    config = { "\27LJ\2\n}\0\0\4\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0006\3\3\0009\3\4\0039\3\5\0039\3\6\3=\3\5\2B\0\2\1K\0\1\0\1\0\0\nERROR\rseverity\15diagnostic\bvim\14goto_prev\23lspsaga.diagnostic\frequire}\0\0\4\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0006\3\3\0009\3\4\0039\3\5\0039\3\6\3=\3\5\2B\0\2\1K\0\1\0\1\0\0\nERROR\rseverity\15diagnostic\bvim\14goto_next\23lspsaga.diagnostic\frequire4\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\2À\27smart_scroll_with_saga4\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ÿÿB\0\2\1K\0\1\0\2À\27smart_scroll_with_saga’\t\1\0\t\0007\0q6\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\2\5\1B\2\1\1\18\2\0\0'\4\6\0'\5\a\0'\6\b\0005\a\t\0B\2\5\1\18\2\0\0'\4\6\0'\5\n\0'\6\v\0005\a\f\0B\2\5\1\18\2\0\0'\4\r\0'\5\n\0'\6\14\0005\a\15\0B\2\5\1\18\2\0\0'\4\6\0'\5\16\0'\6\17\0005\a\18\0B\2\5\1\18\2\0\0'\4\6\0'\5\19\0'\6\20\0005\a\21\0B\2\5\1\18\2\0\0'\4\6\0'\5\22\0'\6\23\0005\a\24\0B\2\5\1\18\2\0\0'\4\6\0'\5\22\0'\6\25\0005\a\26\0B\2\5\1\18\2\0\0'\4\6\0'\5\27\0'\6\28\0005\a\29\0B\2\5\1\18\2\0\0'\4\6\0'\5\30\0'\6\31\0005\a \0B\2\5\1\18\2\0\0'\4\6\0'\5!\0003\6\"\0005\a#\0B\2\5\1\18\2\0\0'\4\6\0'\5$\0003\6%\0005\a&\0B\2\5\1\18\2\0\0'\4\6\0'\5'\0'\6(\0005\a)\0B\2\5\1\18\2\0\0'\4\6\0'\5*\0'\6+\0005\a,\0B\2\5\1\18\2\0\0'\4\6\0'\5-\0'\6.\0005\a/\0B\2\5\0016\2\3\0'\0040\0B\2\2\0026\3\0\0009\3\1\0039\3\2\3'\5\6\0'\0061\0003\a2\0005\b3\0B\3\5\0016\3\0\0009\3\1\0039\3\2\3'\5\6\0'\0064\0003\a5\0005\b6\0B\3\5\0012\0\0€K\0\1\0\1\0\1\vsilent\2\0\n<C-b>\1\0\1\vsilent\2\0\n<C-f>\19lspsaga.action\1\0\1\vsilent\2$<Cmd>Lspsaga signature_help<CR>\ags\1\0\1\vsilent\2\31<cmd>Lspsaga hover_doc<CR>\6K\1\0\1\vsilent\2\29<cmd>LSoutlineToggle<CR>\14<leader>o\1\0\1\vsilent\2\0\a]E\1\0\1\vsilent\2\0\a[E\1\0\1\vsilent\2*<cmd>Lspsaga diagnostic_jump_prev<CR>\a]e\1\0\1\vsilent\2*<cmd>Lspsaga diagnostic_jump_next<CR>\a[e\1\0\1\vsilent\2-<cmd>Lspsaga show_cursor_diagnostics<CR>\1\0\1\vsilent\2+<cmd>Lspsaga show_line_diagnostics<CR>\15<leader>cd\1\0\1\vsilent\2(<cmd>Lspsaga preview_definition<CR>\agd\1\0\1\vsilent\2\28<cmd>Lspsaga rename<CR>\agr\1\0\1\vsilent\2,<cmd><C-U>Lspsaga range_code_action<CR>\6v\1\0\1\vsilent\2!<cmd>Lspsaga code_action<CR>\15<leader>ca\1\0\1\vsilent\2 <cmd>Lspsaga lsp_finder<CR>\agh\6n\18init_lsp_saga\flspsaga\frequire\bset\vkeymap\bvim\0" },
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["lualine.nvim"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/lualine.nvim",
    url = "https://github.com/nvim-lualine/lualine.nvim"
  },
  neogit = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/neogit",
    url = "https://github.com/TimUntersberger/neogit"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["telescope.nvim"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/telescope.nvim",
    url = "https://github.com/nvim-telescope/telescope.nvim"
  },
  ["tokyonight.nvim"] = {
    loaded = true,
    path = "/Users/itsjoeoui/.local/share/nvim/site/pack/packer/start/tokyonight.nvim",
    url = "https://github.com/folke/tokyonight.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: gitsigns.nvim
time([[Config for gitsigns.nvim]], true)
try_loadstring("\27LJ\2\nd\0\0\3\0\4\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\3\0B\0\2\1K\0\1\0\1\0\3\23current_line_blame\2\15signcolumn\2\nnumhl\2\nsetup\rgitsigns\frequire\0", "config", "gitsigns.nvim")
time([[Config for gitsigns.nvim]], false)
-- Config for: cmp-tabnine
time([[Config for cmp-tabnine]], true)
try_loadstring("\27LJ\2\nd\0\0\5\0\6\0\v6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\4\0004\3\3\0005\4\3\0>\4\1\3=\3\5\2B\0\2\1K\0\1\0\fsources\1\0\0\1\0\1\tname\16cmp_tabnine\nsetup\bcmp\frequire\0", "config", "cmp-tabnine")
time([[Config for cmp-tabnine]], false)
-- Config for: lspsaga.nvim
time([[Config for lspsaga.nvim]], true)
try_loadstring("\27LJ\2\n}\0\0\4\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0006\3\3\0009\3\4\0039\3\5\0039\3\6\3=\3\5\2B\0\2\1K\0\1\0\1\0\0\nERROR\rseverity\15diagnostic\bvim\14goto_prev\23lspsaga.diagnostic\frequire}\0\0\4\0\b\0\f6\0\0\0'\2\1\0B\0\2\0029\0\2\0005\2\a\0006\3\3\0009\3\4\0039\3\5\0039\3\6\3=\3\5\2B\0\2\1K\0\1\0\1\0\0\nERROR\rseverity\15diagnostic\bvim\14goto_next\23lspsaga.diagnostic\frequire4\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2\1\0B\0\2\1K\0\1\0\2À\27smart_scroll_with_saga4\0\0\3\1\1\0\5-\0\0\0009\0\0\0)\2ÿÿB\0\2\1K\0\1\0\2À\27smart_scroll_with_saga’\t\1\0\t\0007\0q6\0\0\0009\0\1\0009\0\2\0006\1\3\0'\3\4\0B\1\2\0029\2\5\1B\2\1\1\18\2\0\0'\4\6\0'\5\a\0'\6\b\0005\a\t\0B\2\5\1\18\2\0\0'\4\6\0'\5\n\0'\6\v\0005\a\f\0B\2\5\1\18\2\0\0'\4\r\0'\5\n\0'\6\14\0005\a\15\0B\2\5\1\18\2\0\0'\4\6\0'\5\16\0'\6\17\0005\a\18\0B\2\5\1\18\2\0\0'\4\6\0'\5\19\0'\6\20\0005\a\21\0B\2\5\1\18\2\0\0'\4\6\0'\5\22\0'\6\23\0005\a\24\0B\2\5\1\18\2\0\0'\4\6\0'\5\22\0'\6\25\0005\a\26\0B\2\5\1\18\2\0\0'\4\6\0'\5\27\0'\6\28\0005\a\29\0B\2\5\1\18\2\0\0'\4\6\0'\5\30\0'\6\31\0005\a \0B\2\5\1\18\2\0\0'\4\6\0'\5!\0003\6\"\0005\a#\0B\2\5\1\18\2\0\0'\4\6\0'\5$\0003\6%\0005\a&\0B\2\5\1\18\2\0\0'\4\6\0'\5'\0'\6(\0005\a)\0B\2\5\1\18\2\0\0'\4\6\0'\5*\0'\6+\0005\a,\0B\2\5\1\18\2\0\0'\4\6\0'\5-\0'\6.\0005\a/\0B\2\5\0016\2\3\0'\0040\0B\2\2\0026\3\0\0009\3\1\0039\3\2\3'\5\6\0'\0061\0003\a2\0005\b3\0B\3\5\0016\3\0\0009\3\1\0039\3\2\3'\5\6\0'\0064\0003\a5\0005\b6\0B\3\5\0012\0\0€K\0\1\0\1\0\1\vsilent\2\0\n<C-b>\1\0\1\vsilent\2\0\n<C-f>\19lspsaga.action\1\0\1\vsilent\2$<Cmd>Lspsaga signature_help<CR>\ags\1\0\1\vsilent\2\31<cmd>Lspsaga hover_doc<CR>\6K\1\0\1\vsilent\2\29<cmd>LSoutlineToggle<CR>\14<leader>o\1\0\1\vsilent\2\0\a]E\1\0\1\vsilent\2\0\a[E\1\0\1\vsilent\2*<cmd>Lspsaga diagnostic_jump_prev<CR>\a]e\1\0\1\vsilent\2*<cmd>Lspsaga diagnostic_jump_next<CR>\a[e\1\0\1\vsilent\2-<cmd>Lspsaga show_cursor_diagnostics<CR>\1\0\1\vsilent\2+<cmd>Lspsaga show_line_diagnostics<CR>\15<leader>cd\1\0\1\vsilent\2(<cmd>Lspsaga preview_definition<CR>\agd\1\0\1\vsilent\2\28<cmd>Lspsaga rename<CR>\agr\1\0\1\vsilent\2,<cmd><C-U>Lspsaga range_code_action<CR>\6v\1\0\1\vsilent\2!<cmd>Lspsaga code_action<CR>\15<leader>ca\1\0\1\vsilent\2 <cmd>Lspsaga lsp_finder<CR>\agh\6n\18init_lsp_saga\flspsaga\frequire\bset\vkeymap\bvim\0", "config", "lspsaga.nvim")
time([[Config for lspsaga.nvim]], false)
if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end
