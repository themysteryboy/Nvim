local status_ok, lsp_installer = pcall(require, "nvim-lsp-installer")
if not status_ok then
	return
end

require("nvim-lsp-installer").setup({
    automatic_installation = true,
})
