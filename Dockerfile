FROM nginx
SHELL ["bash", "-c"]
WORKDIR /usr/share/nginx
COPY . .
COPY default.conf /etc/nginx/conf.d/default.conf
RUN sed -i -e "s/{{timestamp}}/$(TZ='Asia/Tokyo' date)/" public/index.html
RUN rm -fr html && ln -sfn public html
