FROM debian:buster

RUN apt update && apt upgrade -y

RUN apt install -y python3

RUN python3 -c "import sys; print(sys.version)"

RUN apt install -y python3-pip

RUN python3 -m pip install --upgrade pip

RUN python3 -m pip install -U ciphey

RUN ciphey -t `echo 'test' | base64`
