FROM nginx:latest
RUN rm /etc/nginx/conf.d/default.conf
#######Move config files######
COPY nginx.conf /etc/nginx/
COPY default.conf /etc/nginx/conf.d/
####Open Port 80###########
EXPOSE 80
EXPOSE 443
