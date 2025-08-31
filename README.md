本分支主要提供稳定版本支持高通的Immortalwrt，修了feed源，指定特定commit，并以tag方式固定版本  
需要克隆编译的，请使用  
```shell
git clone -b <tag> https://github.com/SAENE/immortalwrt
```

```
# 分支说明
main 为高通专用，无法编译其他平台，带满血NSS驱动。

owrt 为多平台通用，可编译高通平台，但没有NSS驱动。

# 自用 ImmortalWRT
高通部分源码取自以下项目：

https://github.com/JiaY-shi/openwrt.git

https://github.com/LiBwrt/openwrt-6.x.git

https://github.com/qosmio/openwrt-ipq.git

https://github.com/King-Of-Knights/openwrt-6.x.git
```