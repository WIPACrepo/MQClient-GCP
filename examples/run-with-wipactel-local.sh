#!/bin/bash

export OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:4318/v1/traces"

pip install tox
tox --notest -vv
. .tox/py/bin/activate
./resources/gcp-install.sh

`dirname "$0"`/run.sh
