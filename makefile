.ONESHELL:
.DEFAULT_GOAL:= run
venv/bin/activate: requirements.txt
	python3 -m venv venv
	. ./venv/bin/activate
	pip install -r requirements.txt
venv: venv/bin/activate
	. ./venv/bin/activate
run: venv
	python3 app.py
clear:
	rm -rf __pycache__
	rm -rf venv
.PHONY: run
