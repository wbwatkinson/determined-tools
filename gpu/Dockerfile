FROM determinedai/environments:cuda-11.0-pytorch-1.7-lightning-1.2-tf-2.4-gpu-0.14.0

MAINTAINER Blair Watkinson <warren.watkinson@afit.edu>

# Custom Configuration
RUN apt-get update && \
   DEBIAN_FRONTEND="noninteractive" apt-get -y install tzdata && \
   apt-get install -y unzip python-opencv graphviz
COPY context/environment.yml /tmp/environment.yml
COPY context/pip_requirements.txt /tmp/pip_requirements.txt
# RUN conda env update --name base --file /tmp/environment.yaml
RUN conda env update --file /tmp/environment.yml --name base
RUN conda clean --all --force-pkgs-dirs --yes
RUN eval "$(conda shell.bash hook)" && \
   conda activate base && \
   pip install --requirement /tmp/pip_requirements.txt
RUN python -m pip install jupyterthemes
RUN python -m pip install --upgrade jupyterthemes
RUN python -m pip install jupyter_contrib_nbextensions   