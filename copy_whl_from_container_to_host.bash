#!/bin/bash

set -euo pipefail

container=$(docker ps -aqf ancestor=pptk:base_latest)

docker exec "$container" /bin/sh -c 'tar -cf - /pptk/build/dist' | tar -xvf -
