FROM mgibio/samtools-cwl:1.0.0
MAINTAINER John Garza <johnegarza@wustl.edu>

LABEL \
    description="Image containing sambamba and picard"

RUN apt-get update -y && apt-get install -y \
    apt-utils \
    bzip2 \
    default-jre \
    wget

RUN mkdir /opt/picard-2.18.1/ \
    && cd /tmp/ \
    && wget --no-check-certificate https://github.com/broadinstitute/picard/releases/download/2.18.1/picard.jar \
    && mv picard.jar /opt/picard-2.18.1/ \
    && ln -s /opt/picard-2.18.1 /opt/picard \
    && ln -s /opt/picard-2.18.1 /usr/picard
