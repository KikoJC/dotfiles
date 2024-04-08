return {
    {"nvim-orgmode/orgmode",
        event = 'VeryLazy',
        config = function()
            require("orgmode").setup({
                org_agenda_files = "~/nextcloud/writing/**/*",
                org_default_notes_file = "~/nextcloud/refile.org",
            })
        end,
    }
}
