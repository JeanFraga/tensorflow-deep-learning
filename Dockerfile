FROM tensorflow/tensorflow:2.7.4-gpu-jupyter
RUN pip install --upgrade pip
RUN pip install pandas scikit-learn matplotlib seaborn \ 
    tensorflow-datasets tensorflow-hub

# install requirements.txt
# COPY requirements.txt .
# RUN pip install -r requirements.txt

# mount the current directory to /app
WORKDIR /app
COPY . .

# run the app
# CMD ["python", "main.py"]
