FROM debian:buster-slim

MAINTAINER TSUYOSHI TORII toritori0318

RUN apt-get -q -y update \
 && apt-get -q -y install build-essential wget curl unzip \
 && apt-get -q -y install perl libperl-dev libwww-perl liblogger-syslog-perl libnet-ssleay-perl libdatetime-perl libssl-dev \
 && apt-get clean \
 && rm -rf /var/lib/apt/lists/*

ENV SCRIPT_VERSION=1.2.2

RUN wget http://aws-cloudwatch.s3.amazonaws.com/downloads/CloudWatchMonitoringScripts-${SCRIPT_VERSION}.zip \
 && unzip CloudWatchMonitoringScripts-${SCRIPT_VERSION}.zip \
 && rm CloudWatchMonitoringScripts-${SCRIPT_VERSION}.zip \
 && perl -pi -e "s/df -k -l -P/df -k -P/" /aws-scripts-mon/mon-put-instance-data.pl

ADD start.sh /aws-scripts-mon/start.sh
RUN chmod +x /aws-scripts-mon/start.sh

CMD ["/aws-scripts-mon/start.sh"]
