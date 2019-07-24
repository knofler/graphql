FROM node:latest

COPY . graphql/


WORKDIR graphql/

# ENV NODE_ENV=development API_URL_Docker=test


RUN apt-get update && apt-get install -y curl
RUN curl -sL https://deb.nodesource.com/setup_8.x | bash -
RUN apt-get update && apt-get install -y nodejs


RUN npm install -g yarn

# RUN yarn
RUN npm install

EXPOSE 3001

CMD ["yarn", "dev"]

# ENTRYPOINT ["yarn", "run", "dev"]