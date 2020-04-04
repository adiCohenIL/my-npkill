FROM node:11

ENV npkill_dir=/node_modules_path

WORKDIR /usr/src/app

COPY package.json ./

RUN npm install -g npkill

cmd  [ "/bin/bash" , "-c", "npkill  -d  ${npkill_dir}" ]
