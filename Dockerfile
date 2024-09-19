# //From wher we get main iamge our base image of project
FROM node:20
# We create a folder in our container by the name of myapp
WORKDIR /myapp
# COPY . . mean copy all the files in directory in conatiner myapp folder.
COPY . .
# Using run command we intall npm because we dont have node module folder and to run this in container we need to install node npm for node module folder.
RUN npm install
# We can also give port to node to run on system you can use this port on google to run node
EXPOSE 3000

# After First 4 steps our application need to start so we use this command.
CMD ["npm","start"]


