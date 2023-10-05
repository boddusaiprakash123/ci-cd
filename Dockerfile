# Use the official Ubuntu base image
FROM ubuntu

# Update package lists and install NGINX
RUN apt-get update && \
    apt-get install -y nginx && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Copy your custom index.html file to the NGINX web root directory
COPY index.html /var/www/html/

# Expose port 80 (the default NGINX HTTP port)
EXPOSE 80

# Start NGINX when the container starts
CMD ["nginx", "-g", "daemon off;"]

