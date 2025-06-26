#!/bin/sh

cat <<EOF > /usr/share/nginx/html/env-config.js
window.env = {
  API_BASE_URL: "${API_BASE_URL}",
  API_KEY: "${API_KEY}"
};
EOF

exec nginx -g 'daemon off;'
