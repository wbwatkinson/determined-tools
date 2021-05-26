FROM determinedai/environments:py-3.7-pytorch-1.7-lightning-1.2-tf-2.4-cpu-0.14.0

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
RUN npm install -g npm@7.14.0

RUN python -m pip install --upgrade --no-deps --force-reinstall notebook
RUN python -m pip install jupyterthemes
RUN python -m pip install --upgrade jupyterthemes
RUN python -m pip install jupyter_contrib_nbextensions 
# enable the Nbextensions

RUN jupyter nbextension enable contrib_nbextensions_help_item/main
RUN jupyter nbextension enable autosavetime/main
RUN jupyter nbextension enable codefolding/main
RUN jupyter nbextension enable code_font_size/code_font_size
RUN jupyter nbextension enable code_prettify/code_prettify
RUN jupyter nbextension enable collapsible_headings/main
RUN jupyter nbextension enable comment-uncomment/main
RUN jupyter nbextension enable equation-numbering/main
RUN jupyter nbextension enable execute_time/ExecuteTime 
RUN jupyter nbextension enable gist_it/main 
RUN jupyter nbextension enable hide_input/main 
RUN jupyter nbextension enable spellchecker/main
RUN jupyter nbextension enable toc2/main
RUN jupyter nbextension enable toggle_all_line_numbers/main