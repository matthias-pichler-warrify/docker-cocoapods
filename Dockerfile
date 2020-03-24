FROM ruby

RUN apt-get --quiet update --yes
RUN apt-get --quiet upgrade --yes
RUN curl -sL https://deb.nodesource.com/setup_13.x | bash -
RUN apt-get --quiet install --yes nodejs

RUN node -v

RUN adduser cocoapods
USER cocoapods

RUN gem install cocoapods

RUN pod --version

RUN pod setup
