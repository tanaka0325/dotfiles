#!/bin/bash
cd `dirname $0`

# install other applications
for f in applications/*.sh; do bash "$f" -H; done
