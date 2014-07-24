# phusion/baseimage
FROM 35c2d5a269ff

# set up vagrant user
# password is 'vagrant'
RUN useradd vagrant -p '$6$PaDZdHXS$9P5GI6hK7Kb3Cx9TullNA92KFTGu8jsNEdOaUbjiOUcMN4dxXCDr06qf98cBhMpMRkzeLTSaD0e/F9Fj0YKnD0' -s /bin/bash && \
    usermod -a -G sudo vagrant && \
    mkdir /home/vagrant && \
    mkdir /home/vagrant/.ssh && \
    cat /etc/insecure_key.pub >> /home/vagrant/.ssh/authorized_keys && \
    touch /home/vagrant/.bashrc && \
    ln -s /home/vagrant/.bashrc /home/vagrant/.bash_profile && \
    chown -R vagrant.vagrant /home/vagrant && \
    chmod 700 /home/vagrant/.ssh

# install packages we will likely need for playgrounds
RUN apt-get update && \
    apt-get install -y \
      docker.io \
      build-essential
