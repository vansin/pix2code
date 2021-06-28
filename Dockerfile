FROM tensorflow/tensorflow:1.4.0-gpu-py3
RUN pip install Keras==2.1.2 \
    && pip install numpy==1.13.3 \
    && pip install opencv-python==3.3.0.10 \
    && pip install h5py==2.7.1  \
    && pip install tensorflow==1.4.0


RUN sed -i "s/archive.ubuntu./mirrors.aliyun./g" /etc/apt/sources.list
RUN sed -i "s/deb.debian.org/mirrors.aliyun.com/g" /etc/apt/sources.list
RUN sed -i "s/security.debian.org/mirrors.aliyun.com\/debian-security/g" /etc/apt/sources.list
RUN sed -i "s/httpredir.debian.org/mirrors.aliyun.com\/debian-security/g" /etc/apt/sources.list

RUN apt-get update \
    && apt-get install -y libsm6 \
    && apt-get install -y libxrender1 \
    && apt-get install -y libxext-dev


