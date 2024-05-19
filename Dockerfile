# Use the official NGINX image from the Docker Hub
FROM nginx:latest

# Copy custom configuration file from the current directory to the container
COPY nginx.conf /etc/nginx/nginx.conf

# Copy your website content to the NGINX html directory
COPY html /usr/share/nginx/html

# Expose port 80
EXPOSE 80

# Start NGINX server
CMD ["nginx", "-g", "daemon off;"]
