FROM nginx:1.30-alpine

# Remove the default NGINX configuration.
RUN rm -f /etc/nginx/conf.d/default.conf

# Store the NGINX PID in a writable location.
RUN sed -i \
    's|^pid .*|pid /tmp/nginx.pid;|' \
    /etc/nginx/nginx.conf

# Create directories required by NGINX.
RUN mkdir -p \
      /var/cache/nginx \
      /tmp \
    && chown -R nginx:nginx \
      /var/cache/nginx \
      /tmp \
      /usr/share/nginx/html

# Create the application NGINX configuration.
RUN printf '%s\n' \
    'server {' \
    '    listen 8081;' \
    '    server_name _;' \
    '' \
    '    root /usr/share/nginx/html;' \
    '    index index.html;' \
    '' \
    '    location / {' \
    '        try_files $uri $uri/ =404;' \
    '    }' \
    '}' \
    > /etc/nginx/conf.d/default.conf

# Copy the application.
COPY --chown=nginx:nginx index.html /usr/share/nginx/html/index.html

# Run as non-root.
USER nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
