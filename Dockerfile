FROM debian:jessie
MAINTAINER Jan Koppe <post@jankoppe.de>

ENV OPENCAST_HOST="localhost"
RUN apt-get update \
    && DEBIAN_FRONTEND=noninteractive apt-get install -y --no-install-recommends \
    git \
    python-dev \
    libcurl4-gnutls-dev \
    gnutls-dev \
    python-pip \
    build-essential

RUN pip install \
    icalendar \
    python-dateutil \
    pycurl \
    configobj

WORKDIR /pyca

RUN git clone https://github.com/lkiesow/pyCA .

COPY ./run.sh .

CMD ./run.sh
