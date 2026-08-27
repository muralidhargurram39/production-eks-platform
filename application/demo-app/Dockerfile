FROM nginx:1.30-alpine

# Remove the default NGINX configuration.
RUN rm /etc/nginx/conf.d/default.conf

# Create directories required by NGINX and make them writable
# by the non-root nginx user.
RUN mkdir -p \
      /var/cache/nginx \
      /var/run \
      /var/log/nginx \
    && chown -R nginx:nginx \
      /var/cache/nginx \
      /var/run \
      /var/log/nginx \
      /usr/share/nginx/html

# Create a non-root NGINX configuration.
RUN cat > /etc/nginx/conf.d/default.conf <<'NGINX_CONF'
server {
    listen 8080;
    server_name _;

    root /usr/share/nginx/html;
    index index.html;

    location / {
        try_files $uri $uri/ =404;
    }
}
NGINX_CONF

COPY --chown=nginx:nginx index.html /usr/share/nginx/html/index.html

# Run the application as the built-in nginx user.
USER nginx

EXPOSE 8080

CMD ["nginx", "-g", "daemon off;"]
