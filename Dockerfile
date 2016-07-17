FROM 140.211.168.31:5000/git2.4

RUN apt-get update
RUN apt-get install -y openssl ssl-cert ca-certificates
RUN cat /etc/ssl/certs/*.pem > /etc/ssl/certs/ca-certificates.crt

ADD assets/ /opt/resource/

ADD test/ /opt/resource-tests/
#RUN /opt/resource-tests/all.sh && \
RUN rm -rf /tmp/*
