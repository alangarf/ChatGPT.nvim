vim.api.nvim_create_user_command("ChatGPT", function()
  require("chatgpt").openChat()
end, {})

vim.api.nvim_create_user_command("ChatGPTActAs", function()
  require("chatgpt").selectAwesomePrompt()
end, {})

vim.api.nvim_create_user_command("ChatGPTEditWithInstructions", function()
  require("chatgpt").edit_with_instructions()
end, {})

vim.api.nvim_create_user_command("ChatGPTInlineEdit", function(opts)
  require("chatgpt").inline_edit(opts)
end, { nargs = "*", range = true })
