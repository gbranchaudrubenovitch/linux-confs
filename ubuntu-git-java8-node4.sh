# this bootstrapped a ubuntu 14.04 vm supplied by buyvm
# note: run the entire thing as root

apt-get update
apt-get --yes upgrade
apt-get --yes install dialog software-properties-common curl sudo

add-apt-repository --yes ppa:git-core/ppa
add-apt-repository --yes ppa:webupd8team/java
curl -sL https://deb.nodesource.com/setup_4.x | sudo -E bash - # does apt-get update for us

# auto accept oracle's license
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt-get --yes install git nodejs oracle-java8-installer nano

# add a new gbrdev user (with sudo)
adduser gbrdev
adduser gbrdev sudo
