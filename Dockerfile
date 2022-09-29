FROM debian:bullseye-slim

RUN apt update && apt upgrade -y \
  && apt install -y --no-install-recommends python3 python3-pip \
  && rm -rf /var/lib/apt/lists/*

RUN python3 -c "import sys; print(sys.version)"

RUN python3 -m pip install --upgrade pip \
  && python3 -m pip install -U ciphey

CMD ciphey -t `echo 'test' | base64`
