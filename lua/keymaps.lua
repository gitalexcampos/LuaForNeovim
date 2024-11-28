-- set leader key to space
vim.g.mapleader = " "

local keymap = vim.keymap
-- increment/decrement numbers
keymap.set("n", "<A-k>", "<C-x>", { desc = "Increment number" })
keymap.set("n", "<A-j>", "<C-a>", { desc = "Decrement number" })
keymap.set("n", "<leader>+", "<C-x>", { desc = "Increment number" })
keymap.set("n", "<leader>-", "<C-a>", { desc = "Decrement number" })
-- tab management
keymap.set("n", "<S-n>", ":tabnew<CR>", { desc = "Create new tab", noremap = true, silent = true })
keymap.set(
	"n",
	"<S-Right>",
	":tabmove +1<CR>",
	{ desc = "Move the current tab to the right", noremap = true, silent = true }
)
keymap.set(
	"n",
	"<S-Left>",
	":tabmove -1<CR>",
	{ desc = "Move the current tab to the left", noremap = true, silent = true }
)
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
keymap.set("n", "|", ":vsplit<CR>", { desc = "Make a Vsplit", noremap = true, silent = true })
keymap.set("n", "_", ":split<CR>", { desc = "Make a Hsplit", noremap = true, silent = true })
keymap.set("n", "<C-k>", "<C-w>k", { desc = "Move cursor to up window", noremap = true, silent = true })
keymap.set("n", "<C-j>", "<C-w>j", { desc = "Move cursor to down window", noremap = true, silent = true })
keymap.set("n", "<C-l>", "<C-w>l", { desc = "Move cursor to right window", noremap = true, silent = true })
keymap.set("n", "<C-h>", "<C-w>h", { desc = "Move cursor to left window", noremap = true, silent = true })
keymap.set("n", "<C-Up>", ":resize +2<CR>", { desc = "Increase window height size", noremap = true, silent = true })
keymap.set("n", "<C-Down>", ":resize -2<CR>", { desc = "Decrease window height size", noremap = true, silent = true })
keymap.set(
	"n",
	"<C-Left>",
	":vertical resize -2<CR>",
	{ desc = "Decrease a window width size", noremap = true, silent = true }
)
keymap.set(
	"n",
	"<C-Right>",
	":vertical resize +2<CR>",
	{ desc = "Increase current window width size", noremap = true, silent = true }
)
keymap.set(
	"n",
	"<leader>tf",
	"<cmd>ToggleTerm direction=float<cr>",
	{ desc = "Float Terminal", noremap = true, silent = true }
)
keymap.set(
	"n",
	"<leader>tv",
	"<cmd>ToggleTerm size=80 direction=vertical<cr>",
	{ desc = "Vertical Terminal", noremap = true, silent = true }
)
keymap.set(
	"n",
	"<leader>tt",
	"<cmd>ToggleTerm size=10 direction=horizontal<cr>",
	{ desc = "Horizontal Terminal", noremap = true, silent = true }
)
keymap.set(
	"v",
	"<leader>y",
	'"+y',
	{ desc = "Copia seleção para área de transferência", noremap = true, silent = true }
)
keymap.set(
	"v",
	"<C-c>",
	'"+y',
	{ desc = "Copia a seleção para área de transferência", noremap = true, silent = true }
)
