FROM node:12.16-slim as node

EXPOSE 4200
WORKDIR /app

RUN yarn global add @angular/cli@9.0.4

# Reference: https://github.com/jfroom/docker-compose-rails-selenium-example
COPY ./docker-entrypoint.sh /
ENTRYPOINT ["/docker-entrypoint.sh"]
RUN chmod +x /docker-entrypoint.sh
