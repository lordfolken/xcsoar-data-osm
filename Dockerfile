FROM folken/xcsoar-base

ENV APT_OPTS="-y"

RUN apt-get update
RUN apt-get install $APT_OPTS wget ca-certificates && apt-get clean
RUN apt-get install $APT_OPTS pbzip2 gzip pigz bzip2 && apt-get clean
RUN apt-get install $APT_OPTS osmctools && apt-get clean
RUN apt-get install $APT_OPTS gdal-bin && apt-get clean
RUN apt-get install $APT_OPTS rename && apt-get clean

VOLUME /data
