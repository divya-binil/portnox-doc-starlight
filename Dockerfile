FROM node:16 as builder
WORKDIR /app
COPY package*.json ./
RUN npm install
COPY . .
##RUN npm run build -- --mode custom
RUN npm run build

FROM nginx:alpine AS runtime
# Install oauth2_proxy
RUN apk update && apk add git wget ca-certificates
#RUN cd /opt && wget https://github.com/oauth2-proxy/oauth2-proxy/releases/download/v7.4.0/oauth2-proxy-v7.4.0.linux-amd64.tar.gz
#RUN cd /opt && tar -xvf oauth2-proxy-v7.4.0.linux-amd64.tar.gz
#RUN mv /opt/oauth2-proxy-v7.4.0.linux-amd64/oauth2-proxy /bin/oauth2_proxy && rm -rf /opt/oauth2-proxy-v7.4.0.linux-amd64.tar.gz
RUN cd /opt && wget https://github.com/pusher/oauth2_proxy/releases/download/v3.1.0/oauth2_proxy-v3.1.0.linux-amd64.go1.11.tar.gz
RUN cd /opt && tar -xvf oauth2_proxy-v3.1.0.linux-amd64.go1.11.tar.gz
RUN mv /opt/release/oauth2_proxy-linux-amd64 /bin/oauth2_proxy && rm -rf /opt/oauth2_proxy-v3.1.0.linux-amd64.go1.11.tar.gz /opt/release

# Copy Nginx configuration and htpasswd file for oauth2_proxy
COPY ./nginx.conf /etc/nginx/nginx.conf
#COPY ./htpasswd /etc/nginx/.htpasswd
COPY ./oauth2-authorized-users.conf  /opt/oauth2-authorized-users.conf
RUN chmod +r /opt/oauth2-authorized-users.conf

# Start oauth2_proxy and Nginx together with ENTRYPOINT
COPY --from=builder /app/dist /usr/share/nginx/html
#CMD /bin/oauth2_proxy  --upstream=http://0.0.0.0:8000 --http-address=0.0.0.0:80  --authenticated-emails-file=/opt/oauth2-authorized-users.conf   --cookie-secure=false --cookie-secret=FNAh5PedsfadUJZc --client-id="740a47f72f6cf2ea68d5"  --client-secret="0173cf403778e5b7b5cf0b2cec0d8f57325eb9f6" --provider=github --redirect-url=https://docs.portnoxexp.io/oauth2/callback
COPY ./run.sh /root/run.sh
CMD sh /root/run.sh
