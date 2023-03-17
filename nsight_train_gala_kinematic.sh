#!/usr/bin/env bash
# Copyright (c) Meta Platforms, Inc. All Rights Reserved
export HABITAT_PROFILING=1
/opt/nvidia/nsight-systems/2021.5.1/bin/nsys profile --output=profile$1 --sample=none --trace=nvtx --trace-fork-before-exec=true  --export=sqlite python ./habitat_baselines/run.py --exp-config habitat_baselines/config/rearrange/gala_kinematic.yaml --run-type train
