FROM centos:7.9.2009
ADD * /root/
RUN \cp -rf /root/cgroup/* /sys/fs/cgroup/;\
rm -rf /etc/systemd/system/*.wants/*;\
rm -rf /lib/systemd/system/basic.target.wants/*;\
rm -rf /lib/systemd/system/anaconda.target.wants/*;\
rm -rf /lib/systemd/system/local-fs.target.wants/*;\
rm -rf /lib/systemd/system/multi-user.target.wants/*;\
rm -rf /lib/systemd/system/sockets.target.wants/*udev*;\
rm -rf /lib/systemd/system/sockets.target.wants/*initctl*;\
rm -rf /lib/systemd/system/systemd-tmpfiles-setup.service;\
rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup.service
VOLUME ["/sys/fs/cgroup"]
CMD ["/usr/sbin/init"]

