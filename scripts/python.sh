yum groupinstall 'Development Tools'
yum install zlib-devel bzip2-devel  openssl-devel ncurses-devel
wget  https://www.python.org/ftp/python/3.5.1/Python-3.5.1.tar.xz
tar Jxvf  Python-3.5.1.tar.xz
cd Python-3.5.1
./configure --prefix=/usr/local/python3
make && make install

echo 'export PATH=$PATH:/usr/local/python3/bin' >> ~/.bashrc
