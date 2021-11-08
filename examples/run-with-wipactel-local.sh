#!/bin/bash

if [[ `basename "$PWD"` != "MQClient-GCP" ]] ; then
	echo "ERROR: Run from 'MQClient-GCP/'"
	exit 1
fi

export OTEL_EXPORTER_OTLP_ENDPOINT="http://localhost:4318/v1/traces"
export WIPACTEL_SERVICE_NAME_PREFIX=mqclient-gcp

pip install tox
tox --notest -vv
. .tox/py/bin/activate
./resources/gcp-install.sh

`dirname "$0"`/run.sh
