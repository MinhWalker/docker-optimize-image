# FROM node:14-alpine

# WORKDIR /dir

# COPY . .

# RUN yarn install
# RUN yarn build
# CMD ["yarn", "start"]


FROM node:14-alpine

WORKDIR /dir

COPY package.json yarn.lock ./
RUN yarn install
COPY . .
RUN yarn build
CMD ["yarn", "start"]
