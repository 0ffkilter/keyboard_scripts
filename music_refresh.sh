if pgrep "inotifywait" > /dev/null
    then
        exit 1
fi

inotifywait -q -m -e close --format %e /home/matthew/.config/Google\ Play\ Music\ Desktop\ Player/json_store/playback.json |
while read events; do
  pkill -RTMIN+15 i3blocks
done
