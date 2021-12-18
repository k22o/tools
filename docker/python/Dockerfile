FROM ubuntu

WORKDIR /home
COPY ./requirement.txt /home 
COPY ./sample.py /home

RUN apt update && apt install -y python3 python3-pip
RUN pip3 install -r requirement.txt

# CMD python3 ./sample.py

