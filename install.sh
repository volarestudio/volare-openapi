#!/bin/sh

root_folder=$(cd $(dirname $0); cd ..; pwd)

exec 3>&1

function _out() {
  echo "$(date +'%F %H:%M:%S') $@"
}

function install() {
  _out installing...
  virtualenv -p `which python3` venv
  _out virtualenv activate...
  source venv/bin/activate
  pip install gitpython
  pip install PyYAML
  pip install nose
  pip install black
  pip install isort
  pip install git+https://github.com/ioggstream/openapi-resolver#master
  pip install tox
  _out virtualenv deactivate...
  deactivate
  _out done!
}

install