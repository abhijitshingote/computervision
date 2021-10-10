FROM tensorflow/tensorflow:latest-jupyter

RUN apt-get update ##[edited]
RUN apt-get install ffmpeg libsm6 libxext6  -y
RUN apt-get install -y graphviz
RUN pip install --upgrade pip
RUN pip install jupyter_contrib_nbextensions
RUN jupyter contrib nbextension install --system
RUN pip install pandas 
RUN pip install matplotlib
RUN pip install scikit-learn
RUN pip install opencv-python
RUN pip install pydot 
COPY . /tf/mynotebooks
