PYTHON_RUNTIME=python3.9
ACTIVATE=. venv/bin/activate;
PYTHON=$(ACTIVATE) python
PIP=$(ACTIVATE) pip
PACKAGES=

.PHONY: venv

clean:
	rm -rf dist
	rm -rf venv

dist:
	mkdir -p $@

install:
	$(PIP) install -r requirements.txt

lint:
	$(ACTIVATE) pycodestyle main.py $(PACKAGES)
	$(ACTIVATE) mypy main.py $(PACKAGES)

test:
	$(ACTIVATE) pytest -v

freeze:
	$(PIP) freeze > requirements.txt

venv:
	$(PYTHON_RUNTIME) -m venv venv
