#����centos����
FROM centos:6

#ά���˵���Ϣ
MAINTAINER jackchow "jack_chow621@sina.com"

#��װhttpd�����
RUN yum -y update && \
    yum -y install httpd

#����80�˿�
EXPOSE 80

#������վ��ҳ�ļ���������webվ����
ADD index.html /var/www/html/index.html

#���Ƹýű��������У����޸���Ȩ��
ADD run.sh /run.sh

RUN chmod 775 /run.sh

#����������ʱִ�еĽű��ļ�
CMD ["/run.sh"]