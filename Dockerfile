FROM centos:7

# Set one or more individual labels
LABEL dockeruser="intendo"
LABEL maintainer="Darren.Curtis@pnnl.gov"
LABEL description="A minimal CentOS image for sofware development"
LABEL vendor="Pacific Northwest National Laboratory"
LABEL package_name="centos7"
LABEL version="1.0.0"
LABEL release-date="2017-07-19"
LABEL version.is-production="yes"


# ##########################################################
#   CENTOS 7 Development Environment
# ##########################################################
RUN yum -y clean all                        && \
    yum -y update                           && \
    yum -y groupinstall 'Development Tools' && \
    yum -y install autotools                   \
                   libpcap-devel               \
                   libpcap                     \
                   wget                        \
                   which                    && \
    yum -y clean all                        && \
    yum -y update

ENTRYPOINT ["/bin/bash"]
