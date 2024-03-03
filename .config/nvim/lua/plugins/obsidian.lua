require("obsidian").setup({
  workspaces = {
    {
      name = "personal",
      path = "/mnt/c/Users/rrrey/OneDrive/Документы/ObsidianVault",
    },
  },

  notes_subdir = "Заметки",

  completion = {
    nvim_cmp = true,
    min_chars = 2,
  },

  new_notes_location = "notes_subdir",
  preferred_link_style = "wiki",
  disable_frontmatter = true,

  picker = {
    name = "telescope.nvim",
    mappings = {
      new = "<C-x>",
      insert_link = "<C-l>",
    },
  },

  sort_by = "modified",
  sort_reversed = true,
  open_notes_in = "current",

  ui = {
    enable = true,  -- set to false to disable all additional syntax features
  }
})
