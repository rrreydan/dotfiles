local function default_header()
	return {
		"",
		"",
		"",
		"███╗   ██╗██╗   ██╗██╗███╗   ███╗",
		"████╗  ██║██║   ██║██║████╗ ████║",
		"██╔██╗ ██║██║   ██║██║██╔████╔██║",
		"██║╚██╗██║╚██╗ ██╔╝██║██║╚██╔╝██║",
		"██║ ╚████║ ╚████╔╝ ██║██║ ╚═╝ ██║",
		"╚═╝  ╚═══╝  ╚═══╝  ╚═╝╚═╝     ╚═╝",
		"",
		"",
		"",
	}
end

require("dashboard").setup({
	config = {
		header = default_header(),
	},
})
