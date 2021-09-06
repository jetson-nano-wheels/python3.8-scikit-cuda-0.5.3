#!/bin/bash

./init.sh
source venv/bin/activate

source jetson-nano-wheels/commons/envs.sh

PIP_CONSTRAINT=constraints.txt \
  pip wheel -v -c constraints.txt --no-deps \
  --no-binary 'scikit-cuda' \
  -w dist \
  'scikit-cuda==0.5.3'
