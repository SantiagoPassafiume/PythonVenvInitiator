#!/bin/bash

mkdir $1 && cd $1

python3 -m venv $1

source ${1}/bin/activate

pip install black

deactivate

git init

echo $1 > .gitignore

source ${1}/bin/activate

pip freeze > requirements.txt

git add .

git commit -m "initialize ${1} project"
