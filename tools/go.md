[TOC]

## 安装

1. 前往 [官方网站](https://golang.org/dl/) 或者 [Golang 中国](http://golangtc.com/download) 获得 Go 的安装包地址。

   ``` bash
   wget https://storage.googleapis.com/golang/go1.5.1.linux-amd64.tar.gz
   ```

2. 解压文件

   ``` bash
   tar -zxvf go1.5.1.linux-amd64.tar.gz -C /usr/local
   ```

3. 配置环境变量

   ``` bash
   sudo vi /etc/profile.d/golang.sh
   ```

   内容如下

   ```
   export GOROOT=/usr/local/go
   export GOPATH=/home/tiger/dev/go
   export PATH=$GOROOT/bin:$PATH
   ```

   接着执行

   ``` bash
   source /etc/profile
   ```

4. 执行 `go version` 检查配置是否正确。

### 安装 IDE

#### LiteIDE

1. 前往 [Download](http://sourceforge.net/projects/liteide/files/) 下载安装包。
2. 选择 "查看" -> "编辑当前环境变量" -> 修改 GOROOT 和 PATH。
