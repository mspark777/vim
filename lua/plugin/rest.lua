return {
	"rest-nvim/rest.nvim",
	ft = { "http", "https" },
	dependencies = { "luarocks" },
	config = function()
		require("rest-nvim").setup()
	end,
}
