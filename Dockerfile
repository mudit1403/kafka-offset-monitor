FROM docker.phonepe.com:5000/pp-ops-xenial:0.6

EXPOSE 8080

ADD entrypoint.sh entrypoint.sh

RUN chmod +x entrypoint.sh

ENTRYPOINT ["/bin/bash", "entrypoint.sh"]