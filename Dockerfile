#stage1
FROM node:latest as build
WORKDIR /usr/local/app
COPY ./ /usr/local/app
RUN npm install --force
RUN npm run build
#stage2
FROM nginx:latest
COPY --from=build /usr/local/app/dist/admin-dashboard /usr/share/nginx/html
EXPOSE 90