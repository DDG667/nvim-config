-- Automatically generated packer.nvim plugin loader code

if vim.api.nvim_call_function('has', {'nvim-0.5'}) ~= 1 then
  vim.api.nvim_command('echohl WarningMsg | echom "Invalid Neovim version for packer.nvim! | echohl None"')
  return
end

vim.api.nvim_command('packadd packer.nvim')

local no_errors, error_msg = pcall(function()

_G._packer = _G._packer or {}
_G._packer.inside_compile = true

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
  if threshold then
    table.insert(results, '(Only showing plugins that took longer than ' .. threshold .. ' ms ' .. 'to load)')
  end

  _G._packer.profile_output = results
end

time([[Luarocks path setup]], true)
local package_path_str = "/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/share/lua/5.1/?/init.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?.lua;/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/luarocks/rocks-5.1/?/init.lua"
local install_cpath_pattern = "/data/data/com.termux/files/home/.cache/nvim/packer_hererocks/2.1.0-beta3/lib/lua/5.1/?.so"
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
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/LuaSnip",
    url = "https://github.com/L3MON4D3/LuaSnip"
  },
  ["barbar.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/barbar.nvim",
    url = "https://github.com/romgrk/barbar.nvim"
  },
  ["cmp-buffer"] = {
    after_files = { "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-buffer/after/plugin/cmp_buffer.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-buffer",
    url = "https://github.com/hrsh7th/cmp-buffer"
  },
  ["cmp-nvim-lsp"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/cmp-nvim-lsp",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp"
  },
  ["cmp-nvim-lsp-signature-help"] = {
    after_files = { "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help/after/plugin/cmp_nvim_lsp_signature_help.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lsp-signature-help",
    url = "https://github.com/hrsh7th/cmp-nvim-lsp-signature-help"
  },
  ["cmp-nvim-lua"] = {
    after_files = { "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua/after/plugin/cmp_nvim_lua.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-nvim-lua",
    url = "https://github.com/hrsh7th/cmp-nvim-lua"
  },
  ["cmp-path"] = {
    after_files = { "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-path/after/plugin/cmp_path.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-path",
    url = "https://github.com/hrsh7th/cmp-path"
  },
  ["cmp-under-comparator"] = {
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp-under-comparator",
    url = "https://github.com/lukas-reineke/cmp-under-comparator"
  },
  cmp_luasnip = {
    after_files = { "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp_luasnip/after/plugin/cmp_luasnip.lua" },
    load_after = {},
    loaded = true,
    needs_bufread = false,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/opt/cmp_luasnip",
    url = "https://github.com/saadparwaiz1/cmp_luasnip"
  },
  ["code_runner.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/code_runner.nvim",
    url = "https://github.com/CRAG666/code_runner.nvim"
  },
  ["feline.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/feline.nvim",
    url = "https://github.com/feline-nvim/feline.nvim"
  },
  ["formatter.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/formatter.nvim",
    url = "https://github.com/mhartington/formatter.nvim"
  },
  ["indent-blankline.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/indent-blankline.nvim",
    url = "https://github.com/lukas-reineke/indent-blankline.nvim"
  },
  ["lspkind.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/lspkind.nvim",
    url = "https://github.com/onsails/lspkind.nvim"
  },
  ["lspsaga.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/lspsaga.nvim",
    url = "https://github.com/glepnir/lspsaga.nvim"
  },
  ["mason.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/mason.nvim",
    url = "https://github.com/williamboman/mason.nvim"
  },
  ["mkdir.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/mkdir.nvim",
    url = "https://github.com/jghauser/mkdir.nvim"
  },
  ["nvim-autopairs"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-autopairs",
    url = "https://github.com/windwp/nvim-autopairs"
  },
  ["nvim-cmp"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-cmp",
    url = "https://github.com/hrsh7th/nvim-cmp"
  },
  ["nvim-custom-diagnostic-highlight"] = {
    config = { "\27LJ\2\nR\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup%nvim-custom-diagnostic-highlight\frequire\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-custom-diagnostic-highlight",
    url = "https://github.com/Kasama/nvim-custom-diagnostic-highlight"
  },
  ["nvim-lastplace"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-lastplace",
    url = "https://github.com/ethanholz/nvim-lastplace"
  },
  ["nvim-lint"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-lint",
    url = "https://github.com/mfussenegger/nvim-lint"
  },
  ["nvim-lspconfig"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-lspconfig",
    url = "https://github.com/neovim/nvim-lspconfig"
  },
  ["nvim-tree.lua"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-tree.lua",
    url = "https://github.com/nvim-tree/nvim-tree.lua"
  },
  ["nvim-treesitter"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-treesitter",
    url = "https://github.com/nvim-treesitter/nvim-treesitter"
  },
  ["nvim-ts-rainbow"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-ts-rainbow",
    url = "https://github.com/p00f/nvim-ts-rainbow"
  },
  ["nvim-web-devicons"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/nvim-web-devicons",
    url = "https://github.com/kyazdani42/nvim-web-devicons"
  },
  ["onedark.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/onedark.nvim",
    url = "https://github.com/navarasu/onedark.nvim"
  },
  ["packer.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/packer.nvim",
    url = "https://github.com/wbthomason/packer.nvim"
  },
  ["plenary.nvim"] = {
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/plenary.nvim",
    url = "https://github.com/nvim-lua/plenary.nvim"
  },
  ["wilder.nvim"] = {
    config = { "\27LJ\2\n�\3\0\0\n\0\24\00156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0005\6\t\0B\4\2\0A\1\1\0019\1\6\0'\3\a\0009\4\b\0005\6\v\0009\a\n\0B\a\1\2=\a\f\6B\4\2\0A\1\1\0019\1\6\0'\3\a\0009\4\b\0009\6\r\0005\b\15\0005\t\14\0=\t\16\bB\6\2\0A\4\0\0A\1\1\0019\1\6\0'\3\a\0009\4\b\0005\6\17\0009\a\n\0B\a\1\2=\a\f\0065\a\18\0009\b\19\0B\b\1\0?\b\0\0=\a\20\0065\a\21\0009\b\22\0B\b\1\0?\b\0\0=\a\23\6B\4\2\0A\1\1\1K\0\1\0\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\23popupmenu_devicons\1\2\0\0\6 \1\0\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\16highlighter\1\0\0\22basic_highlighter\1\0\1\rpumblend\3\20\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5����\4\0" },
    loaded = true,
    path = "/data/data/com.termux/files/home/.local/share/nvim/site/pack/packer/start/wilder.nvim",
    url = "https://github.com/gelguy/wilder.nvim"
  }
}

time([[Defining packer_plugins]], false)
-- Config for: wilder.nvim
time([[Config for wilder.nvim]], true)
try_loadstring("\27LJ\2\n�\3\0\0\n\0\24\00156\0\0\0'\2\1\0B\0\2\0029\1\2\0005\3\4\0005\4\3\0=\4\5\3B\1\2\0019\1\6\0'\3\a\0009\4\b\0005\6\t\0B\4\2\0A\1\1\0019\1\6\0'\3\a\0009\4\b\0005\6\v\0009\a\n\0B\a\1\2=\a\f\6B\4\2\0A\1\1\0019\1\6\0'\3\a\0009\4\b\0009\6\r\0005\b\15\0005\t\14\0=\t\16\bB\6\2\0A\4\0\0A\1\1\0019\1\6\0'\3\a\0009\4\b\0005\6\17\0009\a\n\0B\a\1\2=\a\f\0065\a\18\0009\b\19\0B\b\1\0?\b\0\0=\a\20\0065\a\21\0009\b\22\0B\b\1\0?\b\0\0=\a\23\6B\4\2\0A\1\1\1K\0\1\0\nright\24popupmenu_scrollbar\1\2\0\0\6 \tleft\23popupmenu_devicons\1\2\0\0\6 \1\0\0\15highlights\1\0\1\vborder\frounded\1\0\1\vborder\vNormal\27popupmenu_border_theme\16highlighter\1\0\0\22basic_highlighter\1\0\1\rpumblend\3\20\23popupmenu_renderer\rrenderer\15set_option\nmodes\1\0\0\1\4\0\0\6:\6/\6?\nsetup\vwilder\frequire\5����\4\0", "config", "wilder.nvim")
time([[Config for wilder.nvim]], false)
-- Config for: nvim-custom-diagnostic-highlight
time([[Config for nvim-custom-diagnostic-highlight]], true)
try_loadstring("\27LJ\2\nR\0\0\3\0\3\0\a6\0\0\0'\2\1\0B\0\2\0029\0\2\0004\2\0\0B\0\2\1K\0\1\0\nsetup%nvim-custom-diagnostic-highlight\frequire\0", "config", "nvim-custom-diagnostic-highlight")
time([[Config for nvim-custom-diagnostic-highlight]], false)
-- Load plugins in order defined by `after`
time([[Sequenced loading]], true)
vim.cmd [[ packadd nvim-cmp ]]
vim.cmd [[ packadd cmp-nvim-lua ]]
vim.cmd [[ packadd cmp-under-comparator ]]
vim.cmd [[ packadd cmp_luasnip ]]
vim.cmd [[ packadd cmp-path ]]
vim.cmd [[ packadd cmp-nvim-lsp-signature-help ]]
vim.cmd [[ packadd cmp-buffer ]]
time([[Sequenced loading]], false)

_G._packer.inside_compile = false
if _G._packer.needs_bufread == true then
  vim.cmd("doautocmd BufRead")
end
_G._packer.needs_bufread = false

if should_profile then save_profiles() end

end)

if not no_errors then
  error_msg = error_msg:gsub('"', '\\"')
  vim.api.nvim_command('echohl ErrorMsg | echom "Error in packer_compiled: '..error_msg..'" | echom "Please check your config for correctness" | echohl None')
end