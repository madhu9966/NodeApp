# use a node base image

FROM node:8-onbuild



# set maintainer

LABEL maintainer "madhavineelam5@gmail.com"



# set a health check

HEALTHCHECK --interval=5s \

            --timeout=5s \

            CMD curl -f http://100.26.58.138:8000 || exit 1



# tell docker what port to expose

EXPOSE 8000


