FROM tensorflow/tensorflow:2.7.0-gpu

RUN apt-get update && apt-get install -y wget unzip git \
    # tensorrt uff-converter-tf git onnx-graphsurgeon \
    && apt-get clean

RUN pip install --upgrade setuptools pip

RUN pip install nvidia-pyindex

RUN apt-get install

# install python packages from requirements.txt
COPY requirements.txt /tmp/requirements.txt

RUN pip install -r /tmp/requirements.txt

# download spaCy models
RUN python -m spacy download en_core_web_lg

# # USER root
    
# RUN pip install --upgrade pip && pip install pandas matplotlib seaborn scikit-learn \
#     tensorflow-hub tensorflow-datasets tensorflow-text

# VOLUME /home/datascience/Documents/tensorflow-test/:/home/

# RUN git clone https://github.com/JeanFraga/tensorflow-deep-learning.git && \
#     cd tensorflow-deep-learning && \
#     git checkout master

# WORKDIR /home/tensorflow-deep-learning



# CMD ["jupyter", "notebook", "--ip=0.0.0.0", "--allow-root", \
#     "--no-browser", "--NotebookApp.token=''", "--NotebookApp.password=''"]

# EXPOSE 8888