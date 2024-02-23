local commands = require("multiedit.commands")

local function setup_commands()
    local augroup_id = vim.api.nvim_create_augroup("MultiEdit", { clear = true })

    local create_multiedit_command = function(name, method)
        vim.api.nvim_create_autocmd(name, {
            callback = print("Potato"),
            group = augroup_id,
        })
    end

    create_multiedit_command("Hello", commands:print_hello())
end

setup_commands()
