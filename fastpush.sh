#!/bin/bash
python3 BoostToMd.py
clear
git add ./
git status
# sleep 5
echo "Commit? (1 - yes, anything else - no)"
read yon
dt=$(date '+%d/%m/%Y %H:%M:%S');
if [[ $yon = "1" ]]
then
	echo "Maybe some comment? (Not necessarily)"
	read comment
	git commit -m "$dt \| $comment"
fi

