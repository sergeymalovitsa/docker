#!/bin/bash

if [ $# -eq 0 ]
  then
    echo "No arguments supplied !"
    exit 1
fi

case $1 in
     "build")
         if [ -z $2 ]
         then
            echo "No container name !"
            exit 1
          fi
          docker build -t $2 .
          ;;
     "start")
         if [ -z $2 ]
         then
            echo "No container name !"
            exit 1
          fi
          docker run -it $2 bash
          ;;
     "clean")
          docker rm -f $(docker ps -a -q)
          ;;
     *)
          echo "Invalid command!"
          ;;
esac
