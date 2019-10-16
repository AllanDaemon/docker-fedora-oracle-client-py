FROM fedora:30
# Fedora 30 already have Python 3.7
# RPMs from https://www.oracle.com/database/technologies/instant-client/linux-x86-64-downloads.html#ic_x64_inst"

WORKDIR /opt/oracle

RUN dnf -y update
RUN dnf -y install https://download.oracle.com/otn_software/linux/instantclient/193000/oracle-instantclient19.3-basic-19.3.0.0.0-1.x86_64.rpm https://download.oracle.com/otn_software/linux/instantclient/193000/oracle-instantclient19.3-sqlplus-19.3.0.0.0-1.x86_64.rpm https://download.oracle.com/otn_software/linux/instantclient/193000/oracle-instantclient19.3-tools-19.3.0.0.0-1.x86_64.rpm
RUN dnf clean all

RUN pip3 install -U cx_Oracle
