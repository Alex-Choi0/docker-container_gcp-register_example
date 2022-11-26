# /Dockerfile
# 사용할 node버전
FROM node:16.18.0

# 저장할 컨테이너 경로
WORKDIR /

COPY package.json /
COPY package-lock.json /

RUN yarn install

COPY . /

RUN yarn build

EXPOSE 3000

CMD ["node","dist/main"]
