[TOC]

## 安装

### 通过 apt-get 安装

导入公钥

```bash
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 7F0CEB10
```

添加源列表

```bash
echo "deb http://repo.mongodb.org/apt/ubuntu trusty/mongodb-org/3.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.0.list
```

更新源信息

```bash
sudo apt-get update
```

执行安装

``` bash
apt-get -y install mongodb-org
```

安装完后各默认配置文件路径

- 配置文件：`/etc/mongod.con`

- 数据文件：`/var/lib/mongo`

- 日志文件：`/var/log/mongodb`

### 通过压缩包安装

下载 MongoDB

``` bash
wget https://fastdl.mongodb.org/linux/mongodb-linux-x86_64-rhel70-3.0.7.tgz
```

解压文件

``` bash
tar -zxvf mongodb-linux-x86_64-rhel70-3.0.7.tgz
```

### 验证安装

在命令行中执行 `mongo --version` 验证是否安装成功。





## 参考资料

- [install-mongodb-on-ubuntu](http://docs.mongodb.org/manual/tutorial/install-mongodb-on-ubuntu/)
