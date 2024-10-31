local ls = require("luasnip")
local snip = ls.snippet
local text = ls.text_node
local insert = ls.insert_node

-- Snippet for HTML
ls.add_snippets("html", {
  snip("!", {
    text({
      "<!DOCTYPE html>",
      '<html lang="en">',
      "<head>",
      '    <meta charset="UTF-8">',
      '    <meta name="viewport" content="width=device-width, initial-scale=1.0">',
      '    <meta http-equiv="X-UA-Compatible" content="ie=edge">',
      "    <title>",
    }),
    insert(1, "Document"), -- Placeholder for the document title
    text({
      "</title>",
      "</head>",
      "<body>",
      "    ",
    }),
    insert(0), -- Final cursor position
    text({
      "",
      "</body>",
      "</html>",
    }),
  }),
})
