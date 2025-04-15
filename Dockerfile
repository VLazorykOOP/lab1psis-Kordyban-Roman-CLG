# Use the official Nginx image
FROM nginx:alpine

# Copy the HTML and CSS files to the Nginx directory
COPY index.html page1.html page2.html page3.html style.css /usr/share/nginx/html/

# Copy the Nginx configuration
COPY nginx-conf/default.conf /etc/nginx/conf.d/default.conf

# Expose port 8080
EXPOSE 8080

# Start Nginx
CMD ["nginx", "-g", "daemon off;"]