-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- increment/decrement numbers
keymap.set("n", "<leader>k", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>j", "<C-x>", { desc = "Decrement number" })

-- tab management
keymap.set("n", "tn", "<cmd>tabnew<CR>", { desc = "Open new tab" })
keymap.set("n", "tx", "<cmd>tabclose<CR>", { desc = "Close current tab" })
keymap.set("n", "tl", "<cmd>tabn<CR>", { desc = "Go to next tab" })
keymap.set("n", "th", "<cmd>tabp<CR>", { desc = "Go to previous tab" })
keymap.set("n", "tc", "<cmd>tabnew %<CR>", { desc = "Open current buffer in new tab" })
keymap.set("n", "<leader><leader>", "<C-w>w", { desc = "Change current window" })

-- window management
keymap.set("n", "<leader>sv", "<C-w>v", { desc = "Split window vertically" })
keymap.set("n", "<leader>sh", "<C-w>s", { desc = "Split window horizontally" })
keymap.set("n", "<leader>s=", "<C-w>=", { desc = "Make splits equal size" })
keymap.set("n", "<leader>sx", "<cmd>close<CR>", { desc = "Close current split" })
