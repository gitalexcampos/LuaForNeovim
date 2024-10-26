-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap

-- increment/decrement numbers
keymap.set("n", "<leader>k", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>j", "<C-a>", { desc = "Increment number" })
keymap.set("n", "<leader>+", "<C-x>", { desc = "Decrement number" })
keymap.set("n", "<leader>-", "<C-x>", { desc = "Decrement number" })

-- tab management
keymap.set("n", "<S-n>", ":tabnew<CR>", { desc = "Create new tab", noremap = true, silent = true })
keymap.set("n", "<S-Right>", ":tabnext<CR>", { desc = "Go to next tab", noremap = true, silent = true })
keymap.set("n", "<S-Left>", ":tabprevious<CR>", { desc = "Go to previous tab", noremap = true, silent = true })
keymap.set("n", "<S-l>", ":tabnext<CR>", { desc = "Go to next tab", noremap = true, silent = true })
keymap.set("n", "<S-h>", ":tabprevious<CR>", { desc = "Go to previous tab", noremap = true, silent = true })
keymap.set("n", "<S-x>", ":tabclose<CR>", { desc = "Close current tab", noremap = true, silent = true })
keymap.set(
	"n",
	"<S-c>",
	"<cmd>tabnew %<CR>",
	{ desc = "Open current buffer in new tab", noremap = true, silent = true }
)

-- window management
keymap.set("n", "<C-=>", "<C-w>=", { desc = "Make splits equal size", noremap = true, silent = true })
keymap.set("n", "<C-x>", "<cmd>close<CR>", { desc = "Close current split", noremap = true, silent = true })
keymap.set("n", "<CR><CR>", ":vsplit<CR>", { desc = "Make a Vsplit", noremap = true, silent = true })
keymap.set("n", "<Leader><Leader>", ":split<CR>", { desc = "Make a Hsplit", noremap = true, silent = true })
keymap.set("n", "<C-Up>", "<C-w>k", { desc = "Move cursor to up window", noremap = true, silent = true })
keymap.set("n", "<C-Down>", "<C-w>j", { desc = "Move cursor to down window", noremap = true, silent = true })
keymap.set("n", "<C-Left>", "<C-w>h", { desc = "Move cursor to left window", noremap = true, silent = true })
keymap.set("n", "<C-Right>", "<C-w>l", { desc = "Move cursor to right window", noremap = true, silent = true })
