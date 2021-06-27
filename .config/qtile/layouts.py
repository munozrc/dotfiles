from libqtile import layout
from libqtile.config import Match

layout_config = {
    "border_focus": "#61afef",
    "margin": 20
}

layouts = [
    layout.Max(),
    layout.MonadTall(**layout_config),
    layout.MonadWide(**layout_config),
    layout.Bsp(**layout_config),
    layout.Matrix(columns=2, **layout_config),
    layout.RatioTile(**layout_config),
    # layout.Columns(),
    # layout.Tile(),
    # layout.TreeTab(),
    # layout.VerticalTile(),
    # layout.Zoomy(),
]

floating_layout = layout.Floating(
    float_rules=[
        *layout.Floating.default_float_rules,
        Match(wm_class="confirmreset"),
        Match(wm_class="makebranch"),
        Match(wm_class="maketag"),
        Match(wm_class="ssh-askpass"),
        Match(title="branchdialog"),
        Match(title="pinentry"),
    ],
    border_focus="#61afef"
)
