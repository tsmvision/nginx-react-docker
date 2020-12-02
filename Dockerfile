# install and build
FROM nginx:stable-alpine as builder

WORKDIR /www
RUN apk add --update npm

COPY package.json .
COPY package-lock.json .
RUN npm install

COPY tsconfig.json tsconfig.json
COPY public public
COPY src src
RUN npm run build

# deploy
FROM nginx:stable-alpine

WORKDIR /www
COPY --from=builder /www/build .
COPY nginx.conf /etc/nginx/

CMD ["nginx", "-g", "daemon off;"]
