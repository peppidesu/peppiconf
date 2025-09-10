return {
  {
    "nvim-mini/mini.base16",
    version = "*",
    config = function()
      require("mini.base16").setup({
        palette = {
          base00 = "#171f28",
          base01 = "#1f2b36",
          base02 = "#283744",
          base03 = "#304452",
          base04 = "#415c6e",
          base05 = "#9bb0b5",
          base06 = "#b1c3c4",
          base07 = "#c7d5d2",
          base08 = "#ee6183",
          base09 = "#f08f4f",
          base0A = "#f9ef50",
          base0B = "#72ff78",
          base0C = "#7fe2e9",
          base0D = "#4faccd",
          base0E = "#f877dc",
          base0F = "#1bd07d",
        },
      })
    end,
  },
}
