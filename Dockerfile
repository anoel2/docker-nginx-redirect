FROM nginx:latest

ENV HOSTNAME my-hostname
ENV IP_ADDRESS my-ip-address

RUN rm /etc/nginx/conf.d/default.conf

COPY nginx.conf /etc/nginx/conf.d/${HOSTNAME}/
COPY default.conf /etc/nginx/conf.d/${HOSTNAME}/

EXPOSE 80:${HOSTNAME}
EXPOSE 443:${HOSTNAME}
