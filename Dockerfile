# Build Stage
#FROM nginx:alpine AS Base

# Copy static files to NGINX html directory
#COPY static /usr/share/nginx/html

# Expose default NGINX port
#EXPOSE 80

# Start NGINX server
#CMD ["nginx", "-g", "daemon off;"]


#### MULTI - STAGE BUILD ####

# Stage 1: Build SCSS to CSS
FROM node:alpine AS build
WORKDIR /app

# Install necessary tools for SCSS compilation
RUN npm install -g sass

# Copy SCSS files from the static directory
COPY static/styles/styles.scss static/styles/styles.scss

# Compile SCSS to CSS
RUN sass static/styles/styles.scss static/styles/styles.css

# Stage 2: Production Image with NGINX
FROM nginx:alpine
WORKDIR /usr/share/nginx/html

# Remove default NGINX static files
RUN rm -rf ./*

# Copy static files (including compiled CSS) from the build stage
COPY --from=build /app/static ./static
COPY static/index.html ./index.html

# Expose the port
EXPOSE 80

# Start NGINX
CMD ["nginx", "-g", "daemon off;"]
