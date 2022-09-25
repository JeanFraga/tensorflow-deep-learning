FROM tensorflow/tensorflow:2.7.4-gpu

RUN apt-get update && apt-get install -y curl wget unzip git && apt-get clean

# install python packages from requirements.txt
COPY requirements.txt /tmp/requirements.txt

RUN pip install --upgrade pip && pip install -r /tmp/requirements.txt

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