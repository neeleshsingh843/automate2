#!/bin/bash
cd /root/automate2 || exit

while inotifywait -r -e modify,create,delete .; do
  echo "Changes detected at $(date)" >> ~/git_debug.log
  git add . >> ~/git_debug.log
  git commit -m "AUTO COMMIT $(date)" >> ~/git_debug.log
  git push origin main >> ~/git_debug.log
done

