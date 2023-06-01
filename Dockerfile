FROM ubuntu:22.04
RUN apt-get update -y
RUN apt-get install -y nginx zip curl
RUN echo "daemon off;" >>/etc/nginx/nginx.conf
EXPOSE 80
CMD ["/usr/sbin/nginx","-c","/etc/nginx/nginx.conf"] 
