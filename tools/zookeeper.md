[TOC]

## 安装

下载ZK

``` bash
wget http://mirrors.cnnic.cn/apache/zookeeper/zookeeper-3.4.6/zookeeper-3.4.6.tar.gz
```

解压文件

``` bash
tar -zxvf zookeeper-3.4.6.tar.gz
```

## 配置

### 伪集群搭建

ZooKeeper集群需要使用奇数服务器，因此示例会使用3个zk来搭建伪集群。

**示例文件夹结构**

- **zookeeper** 放置下载压缩包 zookeeper-3.4.6.tar.gz 的目录
  - **zk**
  - **zk2**
  - **zk3**
  - **zkdata**	快照目录
  - **zkdata2**
  - **zkdata3**
  - **zkdataLog**	事务日志目录
  - **zkdataLog2**
  - **zkdataLog3**

**步骤**

1. 定位到 `zookeeper` 目录

2. 建立快照目录和事务日志目录

   ``` bash
    mkdir zkdata
    mkdir zkdataLog
    mkdir zkdata2
    mkdir zkdataLog2
    mkdir zkdata3
    mkdir zkdataLog3
   ```

3. 重命名解压后的 `zookeeper-3.4.6` 目录

   ``` bash
    mv zookeeper-3.4.6 zk
   ```

4. 编辑配置文件

   ``` bash
    cd zk/conf
    cp zoo_sample.cfg zoo.cfg
    vim zoo.cfg
   ```

5. 修改 `zoo.cfg`

   ```
    # 快照日志目录
    dataDir=/home/tiger/dev/zookeeper/zkdata

    # 事务日志目录，如果不写的话都会写到快照日志目录中
    dataLogDir=/home/tiger/dev/zookeeper/zkdata/zkdataLog

    # 监听客户端连接的端口
    clientPort=2181

    # 集群之间的感知，格式为 机器标识:从连接到主的端口:选举的端口
    server.1-localhost:2888:3888
    server.2-localhost:2889:3889
    server.3-localhost:2890:3890
   ```

6. 修改快照文件，添加 ID

   ``` bash
    cd ../../zkdata
    echo "1" > myid
   ```

7. 拷贝zk目录2次以建立3个zk服务器

   ``` bash
    cd ..
    cp -r zk zk2
    cp -r zk zk3
   ```

8. 修改 `zk2` 和 `zk3` 的 `zoo.cfg` 文件中的 `dataDir`, `dataLogDir` ,`clientPort` 属性。

9. 添加ID到 `zkdata2` 和 `zkdata3`。

10. 分别启动三个ZK

    ``` bash
    cd bin
    ./zkServer.sh start
    ```

11. 启动完后可以查看状态检测是否启动成功

    ``` bash
    ./zkServer.sh status
    ```

    	控制台输出的信息中 Mode:leader 为 master节点，follower 为 slaver节点

	如果启动失败的话可以查看同目录下的 `zookeeper.out` 文件，该文件为ZooKeeper的启动日志。

### 日志清理

ZooKeeper会产生大量日志信息，如果不定时清理的话会大量消耗磁盘空间。

清理任务使用如下命令

``` bash
java -cp zookeeper.jar:log4j.jar:conf org.apache.zookeeper.server.PurgeTxnLog <dataDir> <snapDir> -n <count>
```

其中count为需要保留的数量，官方推荐为 `3`

**定时清理**

1. 新建 `cleanup.sh` 文件写入上述命令

2. 建立定时任务

   ``` bash
    crontab -e
   ```

    输入内容

   ```
    0 0 * * 0 sh cleanup.sh
   ```

	以上内容标识每个星期日的0点运行脚本，前面的数字格式为 `分 小时 天 月 星期(0-6)`。

1. 建立完毕后可以通过 `crontab -l` 查看当前所有定时任务。
