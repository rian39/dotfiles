#!/bin/bash

sleep 1
rdiff-backup -v5 ~ /run/media/tp/5b1bb3d2-f3bd-4d05-9c6d-a4f7fcb52661/oy/ --exclude ~/Dropbox
wait
sleep 1
umount /run/media/tp/5b1bb3d2-f3bd-4d05-9c6d-a4f7fcb52661/
