#!/usr/bin/env bash

printf "# Generating Django Secret Key #\n"
printf "\n"
printf "SECRET KEY: "
python $ROOT/workspace/key_generator.py
printf "\n"
printf "You should copy this key and paste it in your activate/local bash script"
printf "\n"
