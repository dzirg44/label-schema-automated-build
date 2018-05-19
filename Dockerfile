FROM alpine:3.4

ARG BUILD_DATE
ARG VCS_REF
ARG P_VERSION

ENV vversion=$P_VERSION
ENV bdate=$BUILD_DATE
ENV vcsref=$VCS_REF
LABEL org.label-schema.build-date=$BUILD_DATE \
      org.label-schema.vcs-url="https://github.com/dzirg44/label-schema-automated-build.git" \
      org.label-schema.vcs-ref=$VCS_REF \
      org.label-schema.schema-version="1.0.0-rc1"

COPY sleep.sh /

ENTRYPOINT ["/sleep.sh"]
