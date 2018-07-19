FROM python:2.7.15-slim-stretch
COPY . .
RUN apt update && \
  apt install -y libcurl4-openssl-dev build-essential libssl-dev curl && \
  pip install -r requirements.txt && \
  useradd -ms /bin/bash udocker && \
  mkdir /lib/modules

USER udocker
WORKDIR /home/udocker
RUN curl -o udocker https://raw.githubusercontent.com/indigo-dc/udocker/master/udocker.py && \
  chmod a+x udocker && \
  ./udocker install

USER root
RUN apt remove -y libcurl4-openssl-dev build-essential libssl-dev curl && \
  mv /home/udocker/udocker /bin/udocker
USER udocker

# This ENV is an attempt to fix a bug
ENV PROOT_NO_SECCOMP 1

ENTRYPOINT ["/bin/bash"]
