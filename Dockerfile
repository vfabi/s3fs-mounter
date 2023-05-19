FROM alpine:3.14

ENV MNT_POINT /var/s3

ARG S3FS_VERSION=v1.91


RUN apk --update --no-cache add fuse alpine-sdk automake autoconf libxml2-dev fuse-dev curl-dev git bash ca-certificates && \
    git clone https://github.com/s3fs-fuse/s3fs-fuse.git && \
    cd s3fs-fuse && \
    git checkout tags/${S3FS_VERSION} && \
    ./autogen.sh && \
    ./configure --prefix=/usr && \
    make && \
    make install && \
    make clean && \
    rm -rf /var/cache/apk/* && \
    apk del git automake autoconf;

RUN sed -i s/"#user_allow_other"/"user_allow_other"/g /etc/fuse.conf


COPY docker-entrypoint.sh /
RUN chmod +x /docker-entrypoint.sh
CMD /docker-entrypoint.sh
