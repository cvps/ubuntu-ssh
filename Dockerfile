FROM ubuntu:17.04

RUN apt-get update

RUN apt-get install -y openssh-server
RUN mkdir /var/run/sshd

RUN echo 'root:Mzj134679' |chpasswd

RUN sed -ri 's/^PermitRootLogin\s+.*/PermitRootLogin yes/' /etc/ssh/sshd_config
RUN sed -ri 's/UsePAM yes/#UsePAM yes/g' /etc/ssh/sshd_config
RUN echo "nameserver 114.114.114.114" | tee /etc/resolv.conf > /dev/null  


EXPOSE 22

CMD    ["/usr/sbin/sshd", "-D"]
