ARG VERSION="19.2.0"

FROM buildpack-deps:curl as downloader

ARG VERSION

WORKDIR /tmp

RUN curl -sSLO https://github.com/oracle/graal/releases/download/vm-${VERSION}/graalvm-ce-linux-amd64-${VERSION}.tar.gz \
 && tar xf graalvm-ce-linux-amd64-${VERSION}.tar.gz

FROM buildpack-deps:stable

ARG VERSION

COPY --from=downloader /tmp/graalvm-ce-${VERSION} /usr/lib/jvm/graalvm-ce

ENV PATH /usr/lib/jvm/graalvm-ce/bin:${PATH}
