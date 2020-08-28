from libqtile.config import Group, Match

terminal = "alacritty"

groups = [
    Group("term", spawn=terminal),
    Group("web", spawn="google-chrome-stable", layout="max", matches=[Match(wm_class=["Google Chrome"])], persist=True),
    Group("coding", spawn=terminal),
    Group("kali", spawn=terminal, matches=[Match(wm_class=["Oracle VM VirtualBox"])], layout="max"),
    Group("chat", spawn=terminal)
]
