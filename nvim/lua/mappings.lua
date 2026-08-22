require "nvchad.mappings"

-- add yours here

local map = vim.keymap.set

map("n", ";", ":", { desc = "MY enter command mode" })
map({ "n", "i", "v" }, "<C-s>", "<cmd> w <cr>", { desc = "MY save in all modes" })
map({ "n", "i", "v" }, "<F2>", "<cmd> w <cr>", { desc = "MY save in all modes" })
map({"n", "i", "v" }, "<C-e>", "<Esc>:", { desc = "MY enter command mode" })

map({ "n", "i", "v" }, "<F10>", function()
  local choice = vim.fn.confirm("You are exiting Neovim:", "&Save-n-Exit\n&Discard Changes\n&Cancel")
  if choice == 1 then
    vim.cmd("wa")  -- Save all
    vim.cmd("qa")  -- Exit safely
  elseif choice == 2 then
    vim.cmd("qa!") -- Force exit without saving
  end
  -- choice 3 (Cancel) does nothing and returns to the editor
end, { desc = "MY exit prompt with save option" })


