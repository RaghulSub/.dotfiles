
local dependencies = {
    "hrsh7th/nvim-cmp",
}

function config()
    local autopairs = require("nvim-autopairs")

    autopairs.setup({
        check_ts = true,
        ts_config = {
            lua = {"string"},
            javascript = {"template_string"},
        },
    })
    local cmp_autopairs = require("nvim-autopairs.completion.cmp")
    local cmp = reqiure("cmp")

    cmp.event:on("confirm_done", cmp_autopairs.on_confirm_done())
end

return {
    "windwp/nvim-autopairs",
    event = { "InsertEnter" },
    dependencies = dependencies,
    config = config,

}
