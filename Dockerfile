ARG VERSION="19.3.0"

FROM buildpack-deps:curl as downloader

ARG VERSION

WORKDIR /tmp

RUN curl -sSLO https://github.com/graalvm/graalvm-ce-builds/releases/download/vm-${VERSION}/graalvm-ce-java11-linux-amd64-${VERSION}.tar.gz \
 && tar xf graalvm-ce-java11-linux-amd64-${VERSION}.tar.gz

FROM buildpack-deps:stable

ARG VERSION

COPY --from=downloader /tmp/graalvm-ce-java11-${VERSION} /usr/lib/jvm/graalvm-ce

ENV PATH /usr/lib/jvm/graalvm-ce/bin:${PATH}

RUN groupadd -g 1000 java \
 && useradd -g 1000 -l -m -s /bin/false -u 1000 java

USER java
