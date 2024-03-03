require('yarepl').setup {}

local yarepl = require 'yarepl'

yarepl.setup {
    -- see `:h buflisted`, whether the REPL buffer should be buflisted.
    buflisted = true,
    -- whether the REPL buffer should be a scratch buffer.
    scratch = true,
    -- the filetype of the REPL buffer created by `yarepl`
    ft = 'REPL',
    -- How yarepl open the REPL window, can be a string or a lua function.
    -- See below example for how to configure this option
    wincmd = 'belowright 10 split',
    -- wincmd = 'vertical 30 split',
    -- wincmd = 'vertical 80 split ',
    -- The available REPL palattes that `yarepl` can create REPL based on
    metas = {
        aichat = { cmd = 'aichat', formatter = yarepl.formatter.bracketed_pasting },
        radian = { cmd = 'radian', formatter = yarepl.formatter.bracketed_pasting },
        ipython = { cmd = 'ipython', formatter = yarepl.formatter.bracketed_pasting },
        python = { cmd = 'python', formatter = yarepl.formatter.trim_empty_lines },
        R = { cmd = 'R', formatter = yarepl.formatter.trim_empty_lines },
        bash = { cmd = 'bash', formatter = yarepl.formatter.trim_empty_lines },
        zsh = { cmd = 'zsh', formatter = yarepl.formatter.bracketed_pasting },
    },
    -- when a REPL process exits, should the window associated with those REPLs closed?
    close_on_exit = true,
    -- whether automatically scroll to the bottom of the REPL window after sending
    -- text? This feature would be helpful if you want to ensure that your view
    -- stays updated with the latest REPL output.
    scroll_to_bottom_after_sending = true,
    os = {
        -- Some hacks for Windows. macOS and Linux users can simply ignore
        -- them. The default options are recommended for Windows user.
        windows = {
            -- Send a final `\r` to the REPL with delay,
            send_delayed_cr_after_sending = true,
        },
    },
}


vim.api.nvim_set_keymap("n", "<localleader>r", "<cmd>REPLStart<CR><C-w>k", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<localleader>l", "<cmd>REPLSendLine<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("v", "<localleader>s", ":<C-u>REPLSendVisual<CR>", {noremap = true, silent = true})
vim.api.nvim_set_keymap("n", "<localleader>p", "vipj:<C-u>REPLSendVisual<CR>", {noremap = true, silent = true})



