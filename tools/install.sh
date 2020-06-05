# 更换aliyun软件源
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial main restricted universe multiverse' > /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-security main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-updates main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-proposed main restricted universe multiverse' >> /etc/apt/sources.list
echo 'deb http://mirrors.aliyun.com/ubuntu/ xenial-backports main restricted universe multiverse' >> /etc/apt/sources.list
apt-get update

# 安装sdcc
sudo apt-get -y install sdcc
echo 'finish' > /data/tools/install.lock

echo 'if [ -f /data/tools/root.sh ]; then' >> /root/.bashrc
echo '    source /data/tools/root.sh' >> /root/.bashrc
echo 'fi' >> /root/.bashrc
source /data/tools/root.sh