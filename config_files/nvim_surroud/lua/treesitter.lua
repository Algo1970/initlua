--- treesitter setting -----
local ts = require('nvim-treesitter.configs')

ensure_installed_langs = {
	'python', 
-- 	'latex',
-- 	'lua',
--  'fish'
}

ts.setup {
    -- one of "all", "maintained" (parsers with maintainers), or a list of languages
    ensure_installed = ensure_installed_langs,
    -- install languages synchronously (only applied to `ensure_installed`)
    sync_install = false, 
    -- List of parsers to ignore installing
    -- ignore_install = { "javascript" }, 
    highlight = {
        -- false will disable the whole extension
        enable = true,    
        -- list of language that will be disabled          
        disable = { "vimdoc" },  
        -- Setting this to true will run `:h syntax` and tree-sitter at the same time.
        -- Set this to `true` if you depend on 'syntax' being enabled (like for indentation).
        -- Using this option may slow down your editor, and you may see some duplicate highlights.
        -- Instead of true it can also be a list of languages
        additional_vim_regex_highlighting = false,
    },
	
	incremental_selection = {
		enable = true,
		keymaps = {
			init_selection = "gnn",
			node_incremental = "grn",
			scope_incremental = "grc",
			node_decremental = "grm",
		},
	},
  
	indent = { enable = true },
	
	rainbow = {
		enable = true,
		-- disable = { "jsx", "cpp" }, list of languages you want to disable the plugin for
		extended_mode = true, -- Also highlight non-bracket delimiters like html tags, boolean or table: lang -> boolean
		max_file_lines = nil, -- Do not enable for files with more than n lines, int
		colors = {  
			"#458588",
			"#d65d0e",  
			"#689d6a", 
			"#d79921",  
			"#b16286", 
			"#a89984",
			"#cc241d",
  
		}, -- table of hex strings
		-- termcolors = {} -- table of colour name strings
	},

    refactor = {
        highlight_definitions = {
            enable = true,
            -- Set to false if you have an `updatetime` of ~100.
            clear_on_cursor_move = true,
        },
        highlight_current_scope = {
            enable = true
        },
        smart_rename = {
            enable = true,
            keymaps = {
                smart_rename = 'grr'
            }
        },
        navigation = {
            enable = true,
            keymaps = {
                goto_definition = "gnd",
                list_definitions = "gnD",
                list_definitions_toc = "gO",
                goto_next_usage = "<a-*>",
                goto_previous_usage = "<a-#>",
            }
        }
    },
    
    textobjects = {
        move = {
            enable = true,
            set_jumps = true, -- whether to set jumps in the jumplist
            goto_next_start = {
                ["]m"] = "@function.outer",
                ["]]"] = "@class.outer",
            },
            goto_next_end = {
                ["]M"] = "@function.outer",
                ["]["] = "@class.outer",
            },
            goto_previous_start = {
                ["[m"] = "@function.outer",
                ["[["] = "@class.outer",
            },
            goto_previous_end = {
                ["[M"] = "@function.outer",
                ["[]"] = "@class.outer",
            },
        },
    }
}

