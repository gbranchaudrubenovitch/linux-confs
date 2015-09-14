# this bootstrapped a ubuntu 14.04 vm supplied by buyvm
# note: run the entire thing as root

apt-get update
apt-get --yes upgrade
apt-get --yes install software-properties-common curl dialog

add-apt-repository --yes ppa:git-core/ppa
add-apt-repository --yes ppa:webupd8team/java
curl -sL https://deb.nodesource.com/setup_iojs_3.x | bash - # does apt-get update for us

# auto accept oracle's license
echo debconf shared/accepted-oracle-license-v1-1 select true | debconf-set-selections
echo debconf shared/accepted-oracle-license-v1-1 seen true | debconf-set-selections

apt-get --yes install git iojs oracle-java8-installer
