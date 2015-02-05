xsetroot -cursor_name left_ptr
xrdb -merge .Xresources
eval $(ssh-agent)
exec ck-launch-session xmonad
