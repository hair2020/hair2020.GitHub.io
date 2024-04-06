---
title: "Gin细节"
date: 2022-02-07T19:43:49+08:00
lastmod: 2022-02-07T19:43:49+08:00
draft: true
author: "hair"

tags: ["gin"]
categories: ["notes"]

hiddenFromHomePage: false
hiddenFromSearch: false
---
### gin.Model

```go
type Model struct {
   ID        uint `gorm:"primary_key"`
   CreatedAt time.Time
   UpdatedAt time.Time
   DeletedAt *time.Time `sql:"index"`
}
```

#### ID主键

从1开始增

在用*grom.DB.Where().Frist(&Model)查询时，if Model.ID == 0则此数据不存在

### gin.H{}

```go
// H is a shortcut for map[string]interface{}
type H map[string]interface{}
```



#### XML

```go
// 报错 xml和map没法直接互转，得marshal一下
*gin.Context.XML(200,map[string]interface{
	"msg" : "00"
})
// gin.H 里面给你做了marshal 不报错
*gin.Context.XML(200,gin.H{
	"msg" : "00"
})
```

