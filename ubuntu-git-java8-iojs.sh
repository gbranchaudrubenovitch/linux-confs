# this bootstrapped a ubuntu 14.04 vm supplied by buyvm
# note: run the entire thing as root

apt-get install software-properties-common curl dialog

add-apt-repository ppa:git-core/ppa
add-apt-repository ppa:webupd8team/java
curl -sL https://deb.nodesource.com/setup_iojs_3.x | bash - # does apt-get update for us

apt-get upgrade
apt-get install git iojs oracle-java8-installer
