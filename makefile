all :
	echo 'Select an architecture'

pi :
	python3 ./dotty/dotty.py -r pi.json

arch :
	python3 ./dotty/dotty.py -r arch.json

