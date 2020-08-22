#!/usr/bin/bash 

PYTHON_PATH=/cygdrive/c/Python37/python
PIP=/cygdrive/c/Python37/Scripts/pip

case $1 in
    version) 
        echo version
        env PATH=$PYTHON_PATH:/bin /cygdrive/c/Python37/Scripts/youtube-dl --version
        ;;
    update) 
        echo update
        env PATH=$PYTHON_PATH:/bin /cygdrive/c/Python37/Scripts/pip install --upgrade youtube-dl
        ;;
    *)
        echo downloading with -F -f best
        env PATH=$PYTHON_PATH:/bin /cygdrive/c/Python37/Scripts/youtube-dl -F --no-check-certificate -o $1 $2
        env PATH=$PYTHON_PATH:/bin /cygdrive/c/Python37/Scripts/youtube-dl -f best --no-check-certificate -o $1 $2
        ;;
esac

