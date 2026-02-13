
update-tools:
	pip install pip==26.0.1

install:
	pip install .
	pip install ."[format]"
	pip install ."[lint]"
	pip install ."[test]"
	pip install ."[build]"

lint:
	black universal_etl/ tests/ demo/
	ruff check universal_etl/ tests/ demo/
	mypy universal_etl/ tests/ demo/

test:
	pytest tests

all: lint test

build-project:
	ci/build-project
	