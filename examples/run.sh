#!/bin/bash

gcloud beta emulators pubsub start --project="i3-gcp-proj" &
export PUBSUB_EMULATOR_HOST=localhost:8085
sleep 2

python examples/worker.py &
python examples/server.py