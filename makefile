all :
	cat 'Select an architecture'

pi :
	python3 ./dotty/dotty.py -r pi.json

arch :
	python3 ./dotty/dotty.py -r arch.json

ubuntu :
	python3 ./dotty/dotty.py -r ubuntu.json

clean :
	echo 'Done'

