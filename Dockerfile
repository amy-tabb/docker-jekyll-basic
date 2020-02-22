FROM ubuntu:18.04

RUN apt-get update
RUN apt-get -y upgrade

RUN apt-get -y install ruby-full build-essential zlib1g-dev

RUN apt-get -y install ruby-bundler

RUN useradd jekylluser 

RUN mkdir /home/jekylluser

RUN mkdir /write_directory

RUN chown jekylluser /home/jekylluser

USER jekylluser

WORKDIR /home/jekylluser/

ENV HOME "/home/jekylluser"
ENV GEM_HOME "$HOME/gems"
ENV PATH "$HOME/gems/bin:$PATH"

RUN gem install github-pages

RUN gem install bundler

WORKDIR /write_directory/


