FROM nginx
LABEL name="vue-front"
LABEL version="1.0"
RUN npm run build
COPY ./dist /usr/share/nginx/html
WORKDIR ./vue-front.conf /etc/nginx/conf.d
EXPOSE 80
