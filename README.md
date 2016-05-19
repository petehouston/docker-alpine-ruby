# Docker Alpine Ruby

[![](https://imagelayers.io/badge/petehouston/docker-alpine-ruby:latest.svg)](https://imagelayers.io/?images=petehouston/docker-alpine-ruby:latest 'Get your own badge on imagelayers.io')

[![nodesource/node](http://dockeri.co/image/petehouston/docker-alpine-ruby)](https://registry.hub.docker.com/u/petehouston/docker-alpine-ruby/)


A very small Docker image to bootstrap your Ruby code.

This Ruby Docker image is based on Alpine Linux, so it is quite small in terms of size. Sometimes, I want to have a quick run of a Ruby script and don't want to setup a complicated Ruby environment and packages, and I build this image. There are already [official Ruby images](https://hub.docker.com/_/ruby/), but its size is huge and it contains quite lots of unnecessary packages that I don't use often.

```
REPOSITORY                       TAG                 IMAGE ID            CREATED             SIZE
petehouston/docker-alpine-ruby   latest              3a72bea4506c        10 seconds ago      30.8 MB
ruby                             alpine              d9290c19ae60        9 days ago          125.3 MB
```

### How to use?

Just pull the image to your local machine,

```
$ docker pull petehouston/docker-alpine-ruby
```

To execute command,

```
$ docker run --rm petehouston/docker-alpine-ruby ruby [your_ruby_options]
```

*For example,*

- **Evaluate a Ruby statement**

```
$ docker run --rm petehouston/docker-alpine-ruby ruby -e "puts 'Hello Docker Ruby!'"
Hello Docker Ruby
```

- **Execute a Ruby script**

```
$ ls
code.rb

$ cat code.rb
#!/usr/bin/ruby

puts "Hello Docker Ruby!"

$ docker-alpine-ruby docker run --rm -v $(pwd):/home -w /home petehouston/docker-alpine-ruby ruby code.rb
Hello Docker Ruby!
```

### Notes

Feel free to share your words. Always welcome :)