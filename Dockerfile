FROM centos
COPY install.sh /opt
RUN /opt/install.sh
COPY startup.sh /opt/
COPY pkg/kafka .
COPY start.sh /opt/
WORKDIR /opt
RUN yum install wget 
RUN wget https://github.com/nicolas-van/multirun/releases/download/1.0.0/multirun-glibc-1.0.0.tar.gz && tar -zxvf multirun-glibc-1.0.0.tar.gz && mv multirun /bin && rm multirun-glibc-1.0.0.tar.gz
ENTRYPOINT ["/bin/bash", "/opt/startup.sh"]
