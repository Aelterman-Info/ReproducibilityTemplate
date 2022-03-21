# syntax=docker/dockerfile:1.2
ARG SRCVERSION=17
ARG SRCTAG=2021-10-13
ARG SRCHUBID=dataeditors

FROM ${SRCHUBID}/stata${SRCVERSION}:${SRCTAG}

# Setup for standard operation
USER statauser
WORKDIR /code
ENTRYPOINT ["stata-mp"]
