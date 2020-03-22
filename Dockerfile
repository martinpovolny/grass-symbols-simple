FROM docker.io/mundialis/grass-py3-pdal
RUN ["mkdir", "/usr/local/grass79/etc/symbol/ujc"]
COPY symbols/* /usr/local/grass79/etc/symbol/ujc
