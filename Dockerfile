# Build Stage
FROM nginx:alpine AS Base

# Copy static files to NGINX html directory
COPY static /usr/share/nginx/html

# Expose default NGINX port
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
