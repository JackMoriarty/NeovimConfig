return {
  "milanglacier/minuet-ai.nvim",
  config = function()
    require("minuet").setup({
      provider = "openai_fim_compatible",
      provider_options = {
        openai_fim_compatible = {
          name = "RemoteService",
          end_point = "[RemoteURL]/completions",
          api_key = function()
            return "TERM"
          end,
          model = "FIMModel",
        },
      },
    })
    require("lualine").setup({
      sections = {
        lualine_x = {
          {
            require("minuet.lualine"),
            -- the follwing is the default configuration
            -- the name displayed in the lualine. Set to "provider", "model" or "both"
            -- display_name = 'both',
            -- separator between provider and model name for option "both"
            -- provider_model_separator = ':',
            -- whether show display_name when no completion requests are active
            -- display_on_idle = false,
          },
          "encoding",
          "fileformat",
          "filetype",
        },
      },
    })
  end,
  dependencies = {
    "nvim-lua/plenary.nvim",
  },
}
