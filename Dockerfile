FROM centos:7
ADD * /root/
RUN rm -rf /etc/systemd/system/*.wants/*;\
rm -rf /lib/systemd/system/basic.target.wants/*;\
rm -rf /lib/systemd/system/anaconda.target.wants/*;\
rm -rf /lib/systemd/system/local-fs.target.wants/*;\
rm -rf /lib/systemd/system/multi-user.target.wants/*;\
rm -rf /lib/systemd/system/sockets.target.wants/*udev*;\
rm -rf /lib/systemd/system/sockets.target.wants/*initctl*;\
rm -rf /lib/systemd/system/systemd-tmpfiles-setup.service;\
rm -rf /lib/systemd/system/sysinit.target.wants/systemd-tmpfiles-setup.service;\
\cp -rn /root/cgroup/* /sys/fs/cgroup/;
VOLUME [ "/sys/fs/cgroup" ]
CMD ["/usr/sbin/init"]
