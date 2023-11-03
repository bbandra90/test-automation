# start from the node:18 image
FROM node:18
# create a directory /usr/src/app inside the container
WORKDIR /usr/src/app
# copy the local file with pattern package*.json in the container
COPY package*.json ./
# run npm install
RUN npm install
# copy all the local files to the container
COPY . .
# expose the port 8080 inside the container
EXPOSE 5310
# run node with the file app.js when container starts
CMD ["node","app.js"]