#! /bin/sh
docker build base -t jpambrun/ml-base:latest
docker build jupyterlab -t jpambrun/ml-jupyterlab:latest
docker build theia -t jpambrun/ml-theia:latest
