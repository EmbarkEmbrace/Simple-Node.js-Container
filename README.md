# Simple-Node.js-Container
  + ## Dockerfile
    + Specify a base image:
      + FROM node:alpine
    + Working directory:
      + WORKDIR /usr/app
    + Dependencies:
      + COPY ./package.json ./
        + Prevents dependencies from having to be re-installed every time index.js commit is made
          + Placement is important
      + RUN npm install
      + RUN npm install -g npm@8.4.0
        + As of 1/29/22)
      + COPY ./ ./
        + COPY <src-path> <destination-path>
    + Default command
      + CMD ["npm", "start"]
  + ## index.js
    + ![Screenshot from 2022-01-29 17-59-34](https://user-images.githubusercontent.com/75050777/151683825-237ba5fa-3cf4-4ba8-92b2-911a58e49d1a.png)
  + ## package.json
    + ![Screenshot from 2022-01-29 18-02-57](https://user-images.githubusercontent.com/75050777/151683879-dfea5a4f-3d9f-4159-a586-b82e9126dcda.png)

