FROM node:18-bullseye AS build-stage
WORKDIR /app
COPY package*.json ./
RUN npm install
RUN npm install -g @angular/cli
COPY . .
RUN ng build --prod

FROM nginx:alpine AS production-stage
COPY --from=build-stage /app/dist/angular-site /usr/share/nginx/html
EXPOSE 80
CMD ["nginx", "-g", "daemon off;"]

