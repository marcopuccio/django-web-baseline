#!/usr/bin/env bash
. env/bin/activate

export ROOT=`pwd`
export APP="python $ROOT/manage.py"
export PYTHONPATH="$ROOT"

alias app="$APP"

export DEBUG='True'
export SECRET_KEY='Your Django Secret Key'

export DATABASE_NAME='Your Project Database Name'
export DATABASE_USER='Your Database User'
export DATABASE_PASSWORD='Your Database Password'

export STATIC_URL='/static/'
export STATIC_ROOT='static'
export MEDIA_URL='/media/'
export MEDIA_ROOT='media'


if [ ! -f workspace/local.sh ]; then
    echo $'echo \"Local constants\"' > workspace/local.sh
    chmod o+x workspace/local.sh
fi
. $ROOT/workspace/local.sh
