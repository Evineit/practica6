FROM nginx
ENV DOCUMENTROOT=/usr/servidor/html
ENV SERVER_NAME=servidor_prueba
COPY /build $DOCUMENTROOT
COPY init.sh /init.sh

RUN chmod 700 /init.sh

CMD ["/init.sh"]