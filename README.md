# UNIVERSAL-ETL

A demo-model for an all-purpose etl.

## Version management

Versioning with [tool.setuptools.dynamic]
This project uses dynamic versioning via the [tool.setuptools.dynamic] section in pyproject.toml.
The version is read from the __version__ attribute in the universal_etl package.

How it works

* The version is defined in __init__.py (or another module as specified).

* During build and installation, setuptools reads the version from this attribute.

* You must manually update the __version__ value before each release.

Example:

    # universal_etl/__init__.py
    __version__ = "1.2.3"

Release workflow

1. Update the __version__ attribute in the code.
2. Commit the change.
3. Build and publish your package.

## Build and edlivery of artifacts
