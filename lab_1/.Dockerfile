FROM postgres:14

RUN apt update

RUN apt install -y build-essential wget postgresql-server-dev-14 make gcc git
RUN apt install -y python3 python3-dev python3-setuptools python3-pip python3-psycopg2 libpq-dev

RUN wget https://github.com/pgsql-io/multicorn2/archive/refs/tags/v2.3.tar.gz
RUN tar -xvf v2.3.tar.gz

RUN cd multicorn2-2.3 && make
RUN cd multicorn2-2.3 && make install
#RUN cd multicorn2-2.3 && pip3 install .


RUN pip install twx.botapi
RUN pip install https://github.com/DanilMir/telegram_fdw_temp/archive/master.zip

