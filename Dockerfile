FROM rocker/r-base

RUN mkdir -p /code
RUN mkdir -p /data

COPY data.csv /data/

COPY Install_packages.R /code/
RUN Rscript /code/Install_packages.R

COPY process_it.R /code/

COPY ./run.sh /code/
ENTRYPOINT ["/code/run.sh"]