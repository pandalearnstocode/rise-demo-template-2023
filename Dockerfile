FROM jupyter/minimal-notebook:python-3.8.13
COPY ./requirements.txt /tmp/requirements.txt
RUN python3 -m pip install -r /tmp/requirements.txt --force
ENV DOCKER_STACKS_JUPYTER_CMD=notebook
COPY . /home/jovyan/work
WORKDIR /home/jovyan/work
