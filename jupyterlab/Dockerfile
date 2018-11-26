FROM jpambrun/ml-base
RUN mkdir /notebooks && chmod a+rwx /notebooks
RUN mkdir /.local && chmod a+rwx /.local
WORKDIR /notebooks
EXPOSE 8888

RUN pip install jupyterlab google-cloud-storage google-cloud-firestore itkwidgets
RUN jupyter labextension install @jupyterlab/git @jupyter-widgets/jupyterlab-manager itk-jupyter-widgets

RUN npm install -g ijavascript && ijsinstall

CMD ["bash", "-c", "jupyter lab --notebook-dir=/notebooks --ip 0.0.0.0 --no-browser --allow-root  --NotebookApp.token=''"]
