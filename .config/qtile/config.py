from typing import List  # noqa: F401

from libqtile import bar, layout, widget
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

mod = "mod4"
terminal = "xterm" #guess_terminal()

keys = [Key(key[0], key[1], *key[2:]) for key in [

    # Window Config
    ([mod], "j", lazy.layout.down()),
    ([mod], "k", lazy.layout.up()),
    ([mod], "h", lazy.layout.left()),
    ([mod], "l", lazy.layout.right()),

    # Change Window Size (MonadTall)
    ([mod, "shift"], "l", lazy.layout.grow()),
    ([mod, "shift"], "h", lazy.layout.shrink()),
     
    # Toggle floating
    ([mod, "shift"], "f", lazy.window.toggle_floating()),

    # Move windows up or down in current stack
    ([mod, "shift"], "j", lazy.layout.shuffle_down()),
    ([mod, "shift"], "k", lazy.layout.shuffle_up()),

    # Toggle between different layouts
    ([mod], "Tab", lazy.next_layout()),
    ([mod, "shift"], "Tab", lazy.prev_layout()),

    # Kill current window
    ([mod], "w", lazy.window.kill()),

    # Restart qtile
    ([mod, "control"], "r", lazy.restart()),

    # Quit qtile
    ([mod, "control"], "q", lazy.shutdown()),

    #Applications
    ([mod], "m", lazy.spawn("rofi -show run")), # Menu
    ([mod, "shift"], "m", lazy.spawn("rofi -show")), # Window Nav
    ([mod], "b", lazy.spawn("google-chrome-stable")), # Launch google chrome
    ([mod], "e", lazy.spawn("pcmanfm")), # Launch file explorer
    ([mod], "Return", lazy.spawn(terminal)), # Launch terminal

]]

groups = [
    Group(name="1", label=""), # icon = nf-fa-circle
    Group(name="2", label=""),
    Group(name="3", label=""),
    Group(name="4", label=""),
    Group(name="5", label=""),
]

for i, group in enumerate(groups):
    keys.extend([
        Key([mod], str(i + 1), lazy.group[group.name].toscreen()),
        Key([mod, "shift"], str(i + 1), lazy.window.togroup(group.name))
    ])

layout_config = {
    "border_focus": "#61afef",
    "border_width": 1,
    "margin": 20
}

layouts = [
    layout.MonadTall(**layout_config),
    layout.Max(),
    layout.Matrix(columns=2, **layout_config),
    # layout.MonadWide(**layout_config),
    # layout.Bsp(**layout_config),
    # layout.RatioTile(**layout_config),
    # layout.Columns(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

widget_defaults = dict(
    font='Segoe UI Semibold',
    fontsize=14,
    padding=0,
)
extension_defaults = widget_defaults.copy()
screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(scale=0.4, background="#61afef"),
                widget.Sep(linewidth=0, padding=14),
                widget.GroupBox(
                    borderwidth=0,
                    spacing=14,
                    fontsize=26,
                    rounded=False,
                    active="#e06c75",
                    inactive="#c8ccd4",
                    highlight_method="text",
                    this_current_screen_border="#61afef"
                ),
                widget.Spacer(),
                widget.Clock(
                    foreground="#c8ccd4",
                    format="%a %d %B, %H:%M",
                ),
                widget.Spacer(),
                widget.Sep(linewidth=0, padding=6, background="#61afef"),
                widget.Systray(padding=10, icon_size=14, background="#61afef"),
                widget.Sep(linewidth=0, padding=12, background="#61afef"),
            ],
            36,
            background="#282c34"
        ),
    ),
]

# Drag floating layouts.
mouse = [
    Drag([mod], "Button1", lazy.window.set_position_floating(),
         start=lazy.window.get_position()),
    Drag([mod], "Button3", lazy.window.set_size_floating(),
         start=lazy.window.get_size()),
    Click([mod], "Button2", lazy.window.bring_to_front())
]

dgroups_key_binder = None
dgroups_app_rules = []  # type: List
main = None  # WARNING: this is deprecated and will be removed soon
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(
    float_rules=[
        # Run the utility of `xprop` to see the wm class and name of an X client.
        *layout.Floating.default_float_rules,
        Match(wm_class='confirmreset'),  # gitk
        Match(wm_class='makebranch'),  # gitk
        Match(wm_class='maketag'),  # gitk
        Match(wm_class='ssh-askpass'),  # ssh-askpass
        Match(title='branchdialog'),  # gitk
        Match(title='pinentry'),  # GPG key password entry
    ],
    border_focus="#61afef",
)
auto_fullscreen = True
focus_on_window_activation = "smart"
wmname = "LG3D"
