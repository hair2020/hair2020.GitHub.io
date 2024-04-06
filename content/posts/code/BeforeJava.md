---
title: "BeforeJava"
date: 2022-02-06T21:56:13+08:00
lastmod: 2022-02-06T21:56:13+08:00
draft: false
author: "hair"

tags: ["java"]
categories: ["notes"]

hiddenFromHomePage: false
hiddenFromSearch: false
---

## Java运行机制：

​	{{< figure src="/images/java/beforeLearn/jvm.png">}}

## JVM  JRE  JDK

- JVM

  java虚拟机（有不同操作系统版本），翻译字节码（class文件）

- JRE

  包含JVM、库函数等

- JDK

  包含JRE，编译器和调试器等

​	{{< figure src="/images/java/beforeLearn/relation.png">}}

{{< admonition warning >}}
建议开发环境安JDK
{{< /admonition >}}