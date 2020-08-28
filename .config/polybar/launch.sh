killall -q polybar

PRIMARY=$(xrandr --query | grep " connected" | grep "primary" | cut -d" " -f1)

MONITOR=$PRIMARY polybar --reload simple &
OTHERS=$(xrandr --query | grep " connected" | grep -v "primary" | cut -d" " -f1)


for m in $OTHERS; do
  MONITOR=$m polybar --reload simple &
done
