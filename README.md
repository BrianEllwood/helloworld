# helloworld
Collaboration project between Brian and Jason

Ruby Hello World

1   download helloworld.rb, Dockerfile, Gemfile, Gemfile.lock and makefile 

2   From within the working directory 
    make

3   docker run -p 3333:3333 dexydogz/helloworld:latest

4   curl http://localhost:3333

The image is also stored in docker hub so you can also do the following

docker pull dexydogz/helloworld:latest

# As a result of the github action pushing to docker hub use the lastest tag 