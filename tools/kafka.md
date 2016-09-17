[TOC]

## 安装

下载ZK

```bash
wget http://apache.fayea.com/kafka/0.8.2.0/kafka_2.11-0.8.2.0.tgz
```

解压文件

```bash
tar -zxvf kafka_2.11-0.8.2.01.tgz
```

>官方网站： [Kafka](http://kafka.apache.org/)

## 配置

### 伪集群搭建

示例使用3个Kafka服务器来搭建伪集群。

**示例文件夹结构**

- **kafka_2** 放置下载压缩包 kafka_2.11-0.8.2.0.tgz 的目录
  - **kfk**
  - **kfk2**
  - **kfk3**
  - **kafkaLogs**
  - **kafkaLogs2**
  - **kafkaLogs3**

**步骤**

1. 定位到 `kafka` 目录

2. 建立日志目录
    ```bash
    mkdir kafkaLogs
    mkdir kafkaLogs2
    mkdir kafkaLogs3
    ```

3. 重命名解压后的 `kafka_2.11-0.8.2.01` 目录
    ```bash
    mv kafka_2.11-0.8.2.01 kfk
    ```

4. 编辑配置文件
    ```bash
    cd kfk/config
	vim server.properties
    ```

5. 修改 `server.properties`
    ```
    broker.id=0

    # 对外提供服务的端口
    port=9092

    # 消息最大字节数
    message.max.byte=5242880

    # 消息的持久化目录，可以多个目录用.分隔，如果配置多个，起码要保证num.io.threads数大于目录数
    log.dirs=/home/tiger/dev/kafka/kafkaLogs

    # 保存消息的副本数
    default.replication.factor=2

    # 副本集取消息的最大字节数
    replica.fetch.max.bytes=5242880

    # 连接三台zk集群
	zookeeper.connect=localhost:2181,localhost:2182,localhost:2183
    ```

6. 拷贝kfk目录2次以建立3个kfk服务器
    ```bash
    cd ../..
    cp -r kfk kfk2
    cp -r kfk kfk3
    ```

7. 修改 `kfk2` 和 `kfk3` 的 `server.properties` 文件中的 `broker.id`, `port` ,`log.dirs` 属性。

8. 分别启动三台Kafka
    ```bash
    cd bin
    ./kafka-server-start.sh -daemon ../config/server.properties
    ```

9. 测试是否创建成功
	- 创建 Topic
	```bash
    ./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 2 --partitions 1 --topic test
	```
    - 检查 Topic是否创建成功
    ```bash
    ./kafka-topics.sh --list --zookeeper localhost:2181
	```
    - 创建 Producer
    ```bash
    ./kafka-console-producer.sh --broker-list localhost:9092 --topic test
	```
    - 切换到另一台服务器，创建 Consumer
    ```bash
    ./kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning
	```
    - 在 Producer 控制台输入任意消息，查看 Consumer 控制台是否正常输出

### 常用命令

创建 Topic

```bash
./kafka-topics.sh --create --zookeeper localhost:2181 --replication-factor 2 --partitions 1 --topic test
```

查看 Topic 列表

```bash
./kafka-topics.sh --list --zookeeper localhost:2181
```

查看 Topic 详细信息

```bash
./kafka-topics.sh --describe --zookeeper localhost:2181 --topic test
```

创建 Producer

```bash
./kafka-console-producer.sh --broker-list localhost:9092 --topic test
```

创建 Consumer

```bash
./kafka-console-consumer.sh --zookeeper localhost:2181 --topic test --from-beginning
```

### ZooKeeper 相关

搭建好 Kafka 后可以通过 ZooKeeper 的客户端来查看 Kafka 的相关信息。

**使用ZK客户端**

定位到ZK安装目录下的 `bin` 目录

```bash
./zkCli.sh -server localhost:2181
```

执行以上命令后可以通过 `ls` 命令来查看文件目录，如果要查看所有文件需要使用 `ls /`。其中 `zookeeper` 是ZK创建的目录，其它都是由Kafka创建的。

例

查看 Kafaka 的 brokers 信息

```bash
ls /brokers/ids/0
```
