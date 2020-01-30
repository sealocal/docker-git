FROM git-dependencies:latest

ARG VERSION
ENV VERSION ${VERSION:-2.25.0}

RUN curl --location https://github.com/git/git/archive/v${VERSION}.tar.gz --output git-${VERSION}.tar.gz
RUN tar -zxf git-${VERSION}.tar.gz

WORKDIR /git-${VERSION}
RUN make prefix=/usr all doc info ;# as yourself
RUN make prefix=/usr install install-doc install-html ;# as root

WORKDIR /
RUN rm /git-${VERSION}.tar.gz
RUN rm -r /git-${VERSION}

CMD [ "bash" ]
