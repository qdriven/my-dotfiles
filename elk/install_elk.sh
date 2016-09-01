#! /bin/sh
pkgs=(elasticsearch logstash)

function brew_install {
  echo "install $1"
  brew install $1
  echo "$1 installation is done"
}

for pkg in ${pkgs[*]}
do
  echo $pkg
  brew_install $pkg
done

# install kibana
 wget https://download.elastic.co/kibana/kibana/kibana-3.1.3.tar.gz -o ~/kibana-3.1.3.tar.gz
 cd ~
 tar zxvf kibana-3.1.3.tar.gz
 rm -rf kibana-3.1.3.tar.gz


## do configuartion

echo http.cors.allow-origin: "/.*/" >> /usr/local/etc/elasticsearch/elasticsearch.yml
echo http.cors.enabled: true >> /usr/local/etc/elasticsearch/elasticsearch.yml


## configuration
mkdir /usr/local/logstash/patterns.d/
cd /usr/local/logstash/patterns.d/
touch apache-errors
echo "APACHE_ERROR_LOG \[(?<timestamp>%{DAY:day} %{MONTH:month} %{MONTHDAY} %{TIME} %{YEAR})\] \[.*:%{LOGLEVEL:loglevel}\] \[pid %{NUMBER:pid}\] \[client %{IP:clientip}:.*\] %{GREEDYDATA:message}" >> apache-error
cp logstash.conf ~/logstash/
