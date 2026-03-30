#!/bin/bash
# Script 2: FOSS Package Inspector

PACKAGE="git"

if dpkg -l | grep -qw $PACKAGE; then
    echo "$PACKAGE is installed."
    dpkg -s $PACKAGE | grep -E 'Version|Maintainer|Description'
else
    echo "$PACKAGE is NOT installed."
fi

case $PACKAGE in
    git) echo "Git: distributed version control system built for collaboration" ;;
    apache2) echo "Apache: powers the open web" ;;
    mysql) echo "MySQL: database for scalable applications" ;;
    firefox) echo "Firefox: open web browser" ;;
esac
