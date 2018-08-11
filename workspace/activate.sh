#!/usr/bin/env bash
. env/bin/activate

export ROOT=`pwd`
export APP="python $ROOT/manage.py"
export PYTHONPATH="$ROOT"

alias app="$APP"

if [ -z "$SECRET_KEY" ]; then
  export SECRET_KEY=`exec python $ROOT/workspace/keygen.py`
fi

export DEBUG='True'

export DATABASE_NAME=''
export DATABASE_USER=''
export DATABASE_PASSWORD=''

export STATIC_URL='/static/'
export STATIC_ROOT='static'
export MEDIA_URL='/media/'
export MEDIA_ROOT='media'



if [ ! -f workspace/local.sh ]; then
  echo $'echo \"Local constants\"' > workspace/local.sh
  chmod o+x workspace/local.sh
fi
. $ROOT/workspace/local.sh
