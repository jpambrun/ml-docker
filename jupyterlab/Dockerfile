FROM jpambrun/ml-base
RUN mkdir /notebooks && chmod a+rwx /notebooks
RUN mkdir /.local && chmod a+rwx /.local
WORKDIR /notebooks
EXPOSE 8888

CMD ["bash", "-c", "jupyter lab --notebook-dir=/notebooks --ip 0.0.0.0 --no-browser --allow-root  --NotebookApp.token=''"]
