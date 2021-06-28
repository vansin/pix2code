FROM tensorflow/tensorflow:1.4.0-gpu
RUN pip install Keras==2.1.2 \
    && pip install numpy==1.13.3 \
    && pip install opencv-python==3.3.0.10 \
    && pip install h5py==2.7.1

RUN apt-get update \
    && apt-get install -y libsm6 \
    && apt-get install -y libxrender1 \
    && apt-get install -y libxext-dev


