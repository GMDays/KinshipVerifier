.PHONY: init deps freeze clean start

install: init deps freeze
	PYTHONPATH=venv ; source venv/bin/activate

init:
	if [ ! -e "venv/bin/activate_this.py" ] ; then PYTHONPATH=venv ; virtualenv --clear venv ; fi

deps:
	PYTHONPATH=venv ; . venv/bin/activate && venv/bin/pip install -U -r requirements.txt && if [ "$(ls requirements)" ] ; then venv/bin/pip install -U -r requirements/* ; fi

freeze:
	. venv/bin/activate && venv/bin/pip freeze > requirements.txt

clean:
	rm -rf venv

start:
	. venv/bin/activate && docker-compose up -d
