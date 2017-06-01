FROM node
RUN mkdir /nodejs
WORKDIR /nodejs
COPY package.json /nodejs
RUN npm install --production
COPY . /nodejs
EXPOSE 3000
CMD ["npm", "start"]
