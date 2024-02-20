[[var]]

ln -sf /usr/share/zoneinfo/Europe/Zurich /etc/localtime && \
ls -la /etc/localtime && \
hwclock - systohc