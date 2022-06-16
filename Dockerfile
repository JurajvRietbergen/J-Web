FROM node:16-alpine

# create destination directory
RUN mkdir -p /usr/src/jweb
WORKDIR /usr/src/jweb

# update and install dependency
RUN apk update && apk upgrade && apk add git

# Install dependencies
COPY package.json package-lock.json /usr/src/jweb/
RUN npm ci

# copy the app, note .dockerignore
COPY . /usr/src/jweb/

# build necessary, even if no static files are needed,
# since it builds the server as well
RUN npm run build

# expose 5000 on container
EXPOSE 3000

# set app serving to permissive / assigned
ENV NUXT_HOST=0.0.0.0
# set app port
ENV NUXT_PORT=3000

# start the app
CMD [ "npm", "start" ]