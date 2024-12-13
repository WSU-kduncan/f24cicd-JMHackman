# Step 1: Use the Node.js image as a base image
FROM node:18-bullseye AS build-stage

# Step 2: Set the working directory
WORKDIR /app

# Step 3: Copy the package.json and package-lock.json
COPY angular-site/wsu-hw-ng-main/package*.json ./ 

# Step 4: Install the dependencies
RUN npm install

# Step 5: Install Angular CLI globally
RUN npm install -g @angular/cli

# Step 6: Copy the rest of the application files
COPY angular-site/wsu-hw-ng-main/ ./

# Step 7: Build the Angular application for production
RUN ng build --configuration production

# Step 8: Expose port 80 for serving the application
EXPOSE 80

# Step 9: Install a static file server and serve the application
RUN npm install -g http-server

# Step 10: Serve the production build using http-server from the correct directory
CMD ["http-server", "dist/wsu-hw-ng", "--port", "80"]

