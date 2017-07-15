FROM klajmajk/postgres
USER root
RUN  apt-get update
RUN  apt-get --assume-yes install python3-pip
RUN  pip3 install homeassistant
RUN  apt-get install nmap --assume-yes
RUN  apt-get install libpq-dev --assume-yes
RUN  pip3 install psycopg2
RUN  apt-get install net-tools --assume-yes

RUN apt-get install libffi-dev --assume-yes
RUN apt-get install libpython-dev --assume-yes
RUN apt-get install libssl-dev --assume-yes



EXPOSE 8123

#CMD hass --open-ui
CMD [ "hass", "--open-ui" ]


