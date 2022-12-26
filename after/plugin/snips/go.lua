local ls = require("luasnip")
-- some shorthands...
local snip = ls.snippet
local node = ls.snippet_node
local t = ls.text_node
local i = ls.insert_node
local func = ls.function_node
local choice = ls.choice_node
local dynamicn = ls.dynamic_node

-- local date = function() return { os.date('%Y-%m-%d') } end

ls.add_snippets(nil, {
  all = {
    snip({
      trig = "dumpJson",
      namr = "Dump Json",
      dscr = "Print out indented json",
    }, {
      t({ '// DUMP JSON',
        '// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',
        'j, err := json.MarshalIndent(' }),
      i(1, 'data'),
      t({ ', "", "  ")',
        'if err != nil { ',
        '\tcolor.Red("%s", err)',
        '}',
        'color.Yellow("%s", j)',
        '// ~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~~',
      }),
    })
  }
})

vim.keymap.set({ "i", "s" }, "<C-i>", function() ls.jump(1) end, { desc = "LuaSnip forward jump" })
vim.keymap.set({ "i", "s" }, "<M-i>", function() ls.jump(-1) end, { desc = "LuaSnip backward jump" })
