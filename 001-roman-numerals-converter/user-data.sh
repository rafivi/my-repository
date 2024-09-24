#!/bin/bash -x

yum update -y

yum install python3 -y
yum install pip -y
pip install flask

cd/home/ec2-user

FOLDER=https://raw.githubusercontent.com/rafivi/my-repository/main/001-roman-numerals-converter
wget ${FOLDER}/app.py

mkdir template
cd templates
wget ${FOLDER} https://raw.githubusercontent.com/rafivi/my-repository/main/001-roman-numerals-converter/templates/index.html
wget ${FOLDER}https://raw.githubusercontent.com/rafivi/my-repository/main/001-roman-numerals-converter/templates/result.html

cd ..
python3 app.py