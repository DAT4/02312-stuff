	((CURRENTWEEK=`date +%V`))
	((STARTWEEK=35))
	((WEEK=CURRENTWEEK-STARTWEEK))

	echo "WEEK-$WEEK"

	if (($WEEK < 10)); then
		FOLDER="Uge0$WEEK"
	else
		FOLDER="Uge$WEEK"
	fi
	
	echo "Folder: $FOLDER"

	git -C /home/ubuntu/java/20312Solutions pull
	cp -r /home/ubuntu/java/02312Solutions/$FOLDER /home/ubuntu/java/20312SolutionsPublic/
	git -C /home/ubuntu/java/20312SolutionsPublic add .
	git -C /home/ubuntu/java/20312SolutionsPublic commit -m "$FOLDER Offeltliggjort"
	git -C /home/ubuntu/java/20312SolutionsPublic push

	python3 /home/ubuntu/java/message.py $WEEK $FOLDER
