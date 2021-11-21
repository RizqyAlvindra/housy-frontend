FROM node:14

WORKDIR /usr/src/app/housy-frontend
COPY . .

RUN yarn install
RUN yarn build
#RUN npm install serve -g

EXPOSE 3000
CMD ["yarn", "run", "start"]
