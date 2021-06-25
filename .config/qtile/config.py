import os
import subprocess

from typing import List  # noqa: F401

from libqtile import bar, layout, widget, hook
from libqtile.config import Click, Drag, Group, Key, Match, Screen
from libqtile.lazy import lazy
from libqtile.utils import guess_terminal

from keys import mod, keys
from groups import groups

layouts = [
    layout.MonadTall(border_focus="#61afef", margin=20),
    layout.Max(),
]

widget_defaults = dict(
    font='Hack Nerd Font',
    fontsize=14,
    padding=1,
)
extension_defaults = widget_defaults.copy()

screens = [
    Screen(
        top=bar.Bar(
            [
                widget.CurrentLayoutIcon(
                    background="#aaaaaa",
                    scale=0.45,
                    padding=0,
                ),
                widget.GroupBox(
                    background="#282c34",
                    margin_y=3,
                    margin_x=0,
                    padding_y=10,
                    padding_x=12,
                    rounded=False,
                    borderwidth=1,
                    active="#ffffff",
                    inactive="#ffffff",
                    highlight_method="block",
                    this_current_screen_border="#61afef",
                ),
                widget.WindowName(padding=10),
                widget.Systray(
                    background="#61afef",
                    foreground="#282c34",
                    padding=10,
                ),
                widget.Sep(background="#61afef", linewidth=0, padding=10),
                widget.Clock(
                    background="#e5c07b",
                    foreground="#282c34",
                    format='%a %d %B, %H:%M',
                    padding=12,
                )
            ],
            35,
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
follow_mouse_focus = True
bring_front_click = False
cursor_warp = False
floating_layout = layout.Floating(float_rules=[
    # Run the utility of `xprop` to see the wm class and name of an X client.
    *layout.Floating.default_float_rules,
    Match(wm_class='confirmreset'),  # gitk
    Match(wm_class='makebranch'),  # gitk
    Match(wm_class='maketag'),  # gitk
    Match(wm_class='ssh-askpass'),  # ssh-askpass
    Match(title='branchdialog'),  # gitk
    Match(title='pinentry'),  # GPG key password entry
])
auto_fullscreen = True
focus_on_window_activation = "smart"
reconfigure_screens = True
auto_minimize = True
wmname = "LG3D"
