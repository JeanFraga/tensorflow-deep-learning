FROM tensorflow/tensorflow:latest-gpu

# RUN apt-get update && apt-get install -y wget unzip  && apt-get clean

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