set TTY1 (tty)
set -gx _JAVA_AWT_WM_NONREPARENTING 1
[ "$TTY1" = "/dev/tty1" ] && startx