---
title: "无损扩容C盘"
date: 2022-02-09T16:43:13+08:00
lastmod: 2022-02-09T16:43:13+08:00
draft: false
author: "hair"

tags: ["tutorial"]
categories: ["memos"]

hiddenFromHomePage: false
hiddenFromSearch: false
---

{{< admonition abstract>}}

#### 我的小本由于Edge和开发环境的原因，C盘快爆了，想给他加20个G。

{{< /admonition >}}

## 环境

win10

有C,D,E仨盘，采用GPT分区

## 开搞

### 过程：

从 [(怎样将d盘的空间划分给c盘？ 左岸花开的回答](https://www.zhihu.com/question/266348064/answer/1568263447) 得知：**任意盘只能对其右侧未分配的分区进行拓展**

思路如下：

1. 将D盘数据备份（不要的数据的跳过第1，4步）
2. 格式化、压缩卷使得D盘剩20G，右键->把他的驱动器号改成其他盘
3. 把未分配的容量在新建卷中新建分区D
4. 还原备份数据
4. 重启检查

### 所用工具：

- 系统自带<u>磁盘管理</u>工具
- [傲梅轻松备份](https://www.disktool.cn/backup/download.html)

### 意外：

还原备份后，在我的系统环境变量中，有一条路径把一行拆分成两行了。原因不明，改过来就好了
