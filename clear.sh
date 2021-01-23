#!/bin/sh

root_folder=$(cd $(dirname $0); cd ..; pwd)

exec 3>&1

function _out() {
  echo "$(date +'%F %H:%M:%S') $@"
}

function clear() {
  _out clear...
  rm -rf .tox
  rm docs/definitions.yaml
  rm index.html
  rm tests/tmp.bundle.yaml
  rm tmp.bundle.resolverd.yaml
  rm -rf venv
  _out done!
}

clear