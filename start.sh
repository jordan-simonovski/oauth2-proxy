#!/bash/bin

oauth2_proxy --email-domain="${EMAIL_DOMAIN}" --upstream=${UPSTREAM_SERVICE_URL} --cookie-secret=${COOKIE_SECRET} --client-id=${CLIENT_ID} --client-secret=${CLIENT_SECRET} --http-address=http://$(awk 'END{print $1}' /etc/hosts):4180 --pass-access-token=false --pass-basic-auth=false