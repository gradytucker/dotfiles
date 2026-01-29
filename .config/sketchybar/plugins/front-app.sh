ICON_COLOR=0xffff7f17

case $INFO in
  *)
    INFO=$INFO
    ICON_COLOR=0xffff94c6
    ICON=﯂
    ;;
esac

sketchybar --set $NAME \
  label="$INFO"
