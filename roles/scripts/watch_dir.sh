#!/usr/bin/env bash

## The target and source can contain spaces as
## long as they are quoted.
target="/home/parker/media/music"
source="/home/parker/soulseek/data/downloads";

while true; do
  ## Watch for new files, the grep will return ture if a file has
  ## been copied, modified or created.
  inotifywatch -e modify -e create -e moved_to -t 1 "$source" 2>/dev/null |
      grep total && 

  sleep 5 # prevent syncing before files are complete
  rsync -ac "$source/" "$target/" --remove-source-files
done
