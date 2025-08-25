#!/bin/sh

set -x
source venv/bin/activate &&
unset PIP_LOG &&
unset PIP_LOG_FILE
