
local dependencies = {}
local init = function () end
local opts = {}
local keys = {
    {
        "<leader>a",
        mode = { "n" },
        function ()
            local harpoon = require("harpoon")
            harpoon:list():add()
        end,
        noremap = true,
        silent = true,
        desc = "add file to harpoon "
    }
}

return {
    "ThePrimeagen/harpoon",
    version = "*",
    branch = "harpoon2",
    enabled = true,
    lazy = true,
    event = {},
    cmd = {},
    ft = {},
    build = {},
    dependencies = dependencies,
    init = init,
    opts = opts,
    keys = keys,
}
