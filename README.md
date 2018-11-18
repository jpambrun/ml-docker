# ml-docker
Personal docker stuff


to bypass hub
```
docker build base -t jpambrun/ml-base:latest
docker build jupyterlab -t jpambrun/ml-jupyterlab:latest
docker build theia -t jpambrun/ml-theia:latest

```


To install new pyton packages

```
conda install -n py3 google-cloud-storage
pip install google-cloud-storage
```