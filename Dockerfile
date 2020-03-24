FROM ruby

RUN adduser cocoapods
USER cocoapods

RUN gem install cocoapods

RUN pod setup
