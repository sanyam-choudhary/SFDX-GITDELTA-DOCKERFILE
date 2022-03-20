FROM salesforce/salesforcedx:latest-rc-full
MAINTAINER Sanyam Choudhary
RUN apt-get -y install git
RUN sfdx update
RUN echo 'y' | sfdx plugins:install @salesforce/sfdx-scanner
RUN echo 'y' | sfdx plugins:install sfpowerkit
RUN sfdx --version
RUN sfdx plugins --core