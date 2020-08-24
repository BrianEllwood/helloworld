# helloworld
Collaboration project between Brian and Jason

Ruby Hello World

1   download app.rb, Dockerfile, Gemfile & Gemfile.lock

2   From within the working directory 
    docker build -t hello-world-ruby:1.4 .

3   docker run -p 3333:3333 hello-world-ruby:1.4

4   curl http://localhost:3333