
update-tools:
	pip install pip==26.0.1 pip-tools==7.5.3

deps: update-tools
	pip-compile pyproject.toml --output-file requirements.txt
	pip-compile pyproject.toml --extra format --output-file requirements-format.txt
	pip-compile pyproject.toml --extra lint --output-file requirements-lint.txt
	pip-compile pyproject.toml --extra test --output-file requirements-test.txt
	pip-compile pyproject.toml --extra build --output-file requirements-build.txt

install: update-tools
	pip install -r requirements.txt
	pip install -r requirements-format.txt
	pip install -r requirements-lint.txt
	pip install -r requirements-test.txt
	pip install -r requirements-build.txt

lint:
	black universal_etl/ tests/ demo/
	ruff check universal_etl/ tests/ demo/
	mypy universal_etl/ tests/ demo/

test:
	pytest tests

all: lint test

build-project:
	ci/build-project
	