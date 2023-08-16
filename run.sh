#!/bin/bash
nginx

#/bin/oauth2_proxy --upstream=http://0.0.0.0:8000 \
 # --http-address=0.0.0.0:80 \
 # --provider=github \
 # --redirect-url=https://docs.portnoxexp.io/oauth2/callback \
 # --client-id=740a47f72f6cf2ea68d5 \
 # --client-secret=0173cf403778e5b7b5cf0b2cec0d8f57325eb9f6 \
 # --cookie-secret=2yy84yPQKWySR2jw42Xr2q= \
 # --cookie-secure=false \
 # --github-org=KWIA-PortNox \
 # --github-team=6487584


/bin/oauth2_proxy  --upstream=http://0.0.0.0:8000 --http-address=0.0.0.0:80 --authenticated-emails-file=/opt/oauth2-authorized-users.conf  --provider=github --redirect-url=https://docs.portnoxexp.io/oauth2/callback --client-id=740a47f72f6cf2ea68d5  --client-secret=0173cf403778e5b7b5cf0b2cec0d8f57325eb9f6 --cookie-secret=2yy84yPQKWySR2jw42Xr2q= --cookie-secure=false  
#/bin/oauth2_proxy  --upstream=http://0.0.0.0:8000 --http-address=0.0.0.0:80  --authenticated-emails-file=/opt/oauth2-authorized-users.conf   --cookie-secure=false --cookie-secret=FNAh5PedsfadUJZc --client-id="740a47f72f6cf2ea68d5"  --client-secret="0173cf403778e5b7b5cf0b2cec0d8f57325eb9f6" --provider=github --redirect-url=https://docs.portnoxexp.io/oauth2/callback
