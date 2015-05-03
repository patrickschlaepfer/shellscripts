#!/bin/bash

find /storage/music/mp3 -type d -exec sh -c 'cd "{}" ; mp3val -nb -t -f *.mp3 ;' \;

