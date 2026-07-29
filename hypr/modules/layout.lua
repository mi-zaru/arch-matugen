-- See https://wiki.hypr.land/Configuring/Layouts/Dwindle-Layout/ for more
hl.config({
    dwindle = {
        preserve_split = true, -- You probably want this
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Master-Layout/ for more
hl.config({
    master = {
        new_status = "master",
    },
})

-- See https://wiki.hypr.land/Configuring/Layouts/Scrolling-Layout/ for more
hl.config({
    scrolling = {
        fullscreen_on_one_column = true,
    },
})


hl.layer_rule({
    name = "rofi-popup",
    match = { namespace = "rofi" },
    animation = "fadeIn",
    dim_around = true
})

hl.layer_rule({
    name = "swaync-control-center",
    match = {
        namespace = "swaync-control-center",
    },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.5,
})

hl.layer_rule({
    name = "swaync-notifications",
    match = {
        namespace = "swaync-notification-window",
    },
    blur = true,
    blur_popups = true,
    ignore_alpha = 0.5,
})
hl.layer_rule({
    name = "wlogout-blur",
    match = {
        namespace = "logout_dialog",
    },
    blur = true,
})
