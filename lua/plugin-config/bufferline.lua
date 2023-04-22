require 'bufferline'.setup {
    auto_hide = true,
    tabpages = true,
    closable = true,
    clickable = true,
    --icons = true,
    insert_at_end = false,
    insert_at_start = false,
    maximum_padding = 1,
    minimum_padding = 1,
    maximum_length = 30,
    no_name_title = nil,
}
local status, bufferline = pcall(require, "bufferline")
if not status then
    print("ERROR bufferline")
    return
end
