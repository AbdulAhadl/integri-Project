FROM node:16 as development
### set the dircorty path                                                                                               WORKDIR /temp                                                                                                           # copy the all dependent file
COPY package.*json /temp
#run the dependiencies
RUN  npm install
#expose the port
EXPOSE 3000
COPY . .
CMD ["node","app.js"]