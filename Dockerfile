FROM tensorflow/tensorflow:latest-jupyter

RUN apt-get update &&  apt-get install -y  ffmpeg libsm6 libxext6  graphviz
RUN pip install --upgrade pip
RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install --system
RUN pip install  pandas  matplotlib scikit-learn opencv-python pydot  nibabel h5py imageio
COPY . /tf/mynotebooks
