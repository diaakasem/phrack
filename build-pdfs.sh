#!/bin/bash - 
#===============================================================================
#
#          FILE: build-pdfs.sh
# 
#         USAGE: ./build-pdfs.sh 
# 
#   DESCRIPTION: 
# 
#       OPTIONS: ---
#  REQUIREMENTS: ---
#          BUGS: ---
#         NOTES: ---
#        AUTHOR: YOUR NAME (), 
#  ORGANIZATION: 
#       CREATED: 07/19/2019 20:27
#      REVISION:  ---
#===============================================================================

set -o nounset                              # Treat unset variables as an error

for d in $(ls -1d ./*/);do
  cd $d;
  cat *.txt > all.txt;
  pandoc all.txt -o all.pdf
  #rm -f all.txt;
  #mv all.pdf ../$(basename `pwd`)
  cd ..;
done


