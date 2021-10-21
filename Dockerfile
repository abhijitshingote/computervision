FROM tensorflow/tensorflow:latest-gpu-jupyter

RUN apt-get update &&  apt-get install -y  ffmpeg libsm6 libxext6  graphviz protobuf-compiler
RUN pip install --upgrade pip
RUN pip install jupyter_contrib_nbextensions && jupyter contrib nbextension install --system
RUN pip install  pandas  matplotlib scikit-learn opencv-python pydot  nibabel h5py imageio seaborn tensorflow_datasets

