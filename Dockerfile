# Use the official Nginx image from Docker Hub
FROM nginx:latest

# Copy the test.js file into the directory from which Nginx serves files
COPY . /usr/share/nginx/html/test.js

# Optional: if you want to make changes to the default Nginx configuration, you can do so here
# For instance, to ensure that the MIME type for JavaScript is correctly set, although
# this should already be correctly handled by the default configuration

# Expose port 80 to the outside once the container is running
EXPOSE 80

# Use the default command from the Nginx image which starts Nginx in the foreground
#CMD ["nginx", "-g", "daemon off;"]
CMD nginx -g 'daemon off;'
