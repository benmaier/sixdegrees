default: 
	make python

clean:
	-rm -f *.o
	make pyclean

clean_all:
	make clean
	make pyclean

pyclean:
	-rm -f *.so
	-rm -rf *.egg-info*
	-rm -rf ./tmp/
	-rm -rf ./build/

python:
	pip install -e ../sixdegrees

grootinstall:
	. /opt/rh/devtoolset-2/enable
	/opt/python36/bin/pip3.6 install --user ../sixdegrees

groot:
	git fetch
	git pull
	make clean
	make grootinstall
