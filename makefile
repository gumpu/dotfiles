all :
	echo 'Select an architecture'

pi :
	python3 ./dotty/dotty.py -r pi.json

ubuntu :
	python3 ./dotty/dotty.py -r ubuntu.json

clean :
	echo 'Done'

