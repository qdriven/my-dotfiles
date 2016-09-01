# install in CentOS
sudo wget -O /etc/yum.repos.d/jenkins.repo http://pkg.jenkins-ci.org/redhat/jenkins.repo
sudo rpm --import http://pkg.jenkins-ci.org/redhat/jenkins-ci.org.key

yum install jenkins

sudo service jenkins start/stop/restart
sudo chkconfig jenkins on
