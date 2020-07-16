FROM hmlandregistry/dev_base_ruby:4.1

WORKDIR /src

ADD Gemfile* /src/
RUN bundle install

# Docker is the container so ensure the environment variables are set here (they will be set in jenkins in test environments)
# The services in docker containers can not be accessed by localhost so need their container name and port 8080 specified
ENV SERVICE_UI_DOMAIN 'http://docker-container:8080'

ENV DRIVER 'chrome'
ENV CHROMEDRIVER_VERSION 2.19
ENV CHROMEDRIVER_DIR /chromedriver
RUN mkdir $CHROMEDRIVER_DIR
# Download and install Chromedriver
RUN wget -q --continue -P $CHROMEDRIVER_DIR "http://chromedriver.storage.googleapis.com/$CHROMEDRIVER_VERSION/chromedriver_linux64.zip"
RUN unzip $CHROMEDRIVER_DIR/chromedriver* -d $CHROMEDRIVER_DIR
# Put Chromedriver into the PATH
ENV PATH $CHROMEDRIVER_DIR:$PATH
