#!/bin/bash

if [[ ! -d venv ]] ; then
    python3.8 -m venv venv
    source venv/bin/activate
    pip install --upgrade pip setuptools wheel build
else
    source venv/bin/activate
fi

if [[ ! -d jetson-nano-submodules/commons ]] ; then
    git submodule add git@github.com:jetson-nano-wheels/commons jetson-nano-wheels/commons
fi

