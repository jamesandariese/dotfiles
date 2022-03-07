#!/bin/sh

for f in ${HOME}/.sh-fragments/*/*.sh;do
  . "${f}"
done
