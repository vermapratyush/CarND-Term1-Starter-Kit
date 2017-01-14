#!/bin/bash
set -e
. activate carnd-term1

if [ -z "$1" ]
  then
    jupyter notebook 
elif [ "$1" == *".ipynb"* ]
  then
    THEANO_FLAGS=device=gpu,floatX=float32 jupyter notebook "$1"
else
    exec "$@"
fi

