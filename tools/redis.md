[TOC]

## 安装

如果是安装在 Docker 中，请先执行本节最后的 Docker 安装环境

下载 Redis

``` bash
wget http://download.redis.io/releases/redis-3.0.5.tar.gz
```

解压文件

``` bash
tar -xzf redis-3.0.5.tar.gz -C /opt
```

执行安装

``` bash
mv /opt/redis-3.0.5 /opt/redis
cd /opt/redis
make
```

### Docker 环境

如果将 Redis 安装在 Docker 中，则需要先安装以下软件

安装 wget

```bash
yum -y install wget
```

安装 gcc

```bash
yum -y install gcc make
```

安装 tcl

```bash
yum -y install tcl
```


### 验证安装

创建 log 目录

```bash
mkdir -p /var/log/redis/
touch /var/log/redis/redis-server.log
```

复制配置文件

```bash
mkdir -p /etc/redis
cp redis.conf /etc/redis/redis.conf
```

修改 `redis.conf`，将 `daemonize` 值改为 `true`，将 `logfile` 改为 `/var/log/redis/redis-server.log`。

启动服务器

``` bash
src/redis-server /etc/redis/redis.conf
```

启动客户端

``` bash
src/redis-cli
```

测试存取数据功能

``` bash
127.0.0.1:6379> set foo bar
OK
127.0.0.1:6379> get foo
"bar"
```

## MAC Installation

```shell
brew install redis
```
