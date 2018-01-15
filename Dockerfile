FROM hub.c.163.com/public/ubuntu:16.04

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN apt-get update \
    && apt-get update && apt-get install -y openssh-server vim tar wget curl rsync bzip2 iptables tcpdump less telnet net-tools lsof sysstat cron supervisor inetutils-ping \ 
    && rm -rf /var/lib/apt/lists/*
    
RUN echo 'root:Mzj134679' |chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
 
EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
