# axe.store


# 介绍

axe.store 是一款 Mac 下的包管理工具，同时支持命令行软件和图形界面软件安装

axe.store 相对 Homebrew 的核心优势为:

- 速度快
- 安装时自动换源

```
比如在使用 Homebrew 的时候，即便使用了国内的源
总是会有一些文件下载下来坏的导致安装中断

比如 ffmpeg 这个软件有数十个依赖，下载安装都费时
假设在你完成了前面 10 个依赖软件的安装后，遇到一个错误的文件
你就不得不上网搜索然后换一个源

然后完成了前面 15 个依赖软件的安装后
遇到一个错误的文件（现在的阿里云和腾讯源就会发生这样真实的案例）
```

`axe.store` 支持安装时自动换源，阿里云下的文件坏了会自动换腾讯云下，轻松解决文件错误问题


PS: 图形界面软件由软件提供商提供下载服务，部分软件可能在国内下载速度会很慢，甚至无法下载

-----

# 安装

本软件支持 `10.14` 和 `10.15` 系统

```bash
/bin/bash -c "$(curl -fsSL https://github.com/kuaibiancheng/axe.store/raw/master/install.sh)"
```

复制以上命令到终端执行即可安装，下面是安装成功的截图

![安装成功截图](https://github.com/kuaibiancheng/axe.store/raw/master/images/install.png)



# 使用

- 搜索: `store.axe sou [软件名]` 同时搜索图形界面软件和命令行软件，输入搜索结果相应的编号后即可安装
- 是的，虽然软件的名字叫 `axe.store` 但是安装后的命令却是 `store.axe`，这是我们规定的
- 请一定要在输入 `sto` 3 个字符后用 TAB 键补全命令，尽量优先用 TAB 补全而非手敲所有字符

下面的例子
- 使用了 `store.axe sou qq` 命令来搜索，并且输入了数字 3 来安装 `QQ 音乐`
- 使用了 `store.axe sou wget` 命令来搜索并安装了
- 红色西瓜图标的软件是 `Unix 命令行软件`
- 青色苹果图标的软件是 `苹果图形界面软件`


![](https://github.com/kuaibiancheng/axe.store/raw/master/images/sou1.png)

![](https://github.com/kuaibiancheng/axe.store/raw/master/images/sou2.png)

![](https://github.com/kuaibiancheng/axe.store/raw/master/images/sou3.png)

![](https://github.com/kuaibiancheng/axe.store/raw/master/images/sou4.png)


- 下图演示了直接安装 `QQ 音乐`: `store.axe get qqmusic` (推荐使用 `store.axe sou` 来安装)

![](https://github.com/kuaibiancheng/axe.store/raw/master/images/get.png)


- 卸载: `store.axe rm qqmusic` 卸载刚才安装的图形界面软件 `QQ 音乐`

![](https://github.com/kuaibiancheng/axe.store/raw/master/images/rm.png)



- 帮助: `store.axe help`

![](https://github.com/kuaibiancheng/axe.store/raw/master/images/help.png)


- 配置文件路径: `/usr/local/axe/axe_store_config.gua` 支持修改默认镜像地址，修改后即生效

通常来说这是不必要的，一个需要改配置的场景是你作为国外用户可能把 `active_mirror_url_index` 改为 `4` 下载速度更快





# 感谢

- 你的使用

- Homebrew

- 斧头班许多参与开发和测试同学



# 关于

这个软件是我们班上的同学在学习了编译器设计和操作系统机制后，完成的一个方便大家使用苹果电脑的工具

为此我们发明了一个编程语言来并优化到了非常易用的程度来编写这个程序

这整个过程大家都乐在其中



# 捐赠

axe.store 是一个免费软件，你可以免费使用

也可以到公众号 快编程 后台留言鼓励我们

如果你想花钱或者捐赠，下面是 `免费午餐项目` 的捐赠链接和二维码

```
我们这些人能够从事程序员这份职业，拿着高于绝大多数人的收入，更大的原因是我们运气好

无论是运气好喜欢了这个行业还是运气好进入了这个行业，这些都是时代的馈赠

有很多很多人不比我们差，但并没有我们这样的机会

我们班上很多同学，会抱怨工作辛苦买不起房子，抱怨自己明明技术好但只是因为学历不好或者不善逢迎交际却要付出更多才能获得与别人同等的回报

这些的确是事实，但我们在这整个不公平的链上已经是很不错的了

多关注世界上其他的人和事，会极大帮助我们更看清自己的定位

只往上面看是盲目的，看清自己的位置才能更好地立足当下勇攀高峰
```

我们中的一些人，本来每年也会向这个项目捐许多钱

所以如果你想捐赠我们这个项目，直接捐赠给 `免费午餐项目` 即可

[点此链接进入免费午餐捐赠页面链接](http://www.mianfeiwucan.org/donate/donate1/)

下面的二维码是从上面的链接中引用而来，你也可以直接进入上面的链接来捐赠
![捐赠](https://images.gitee.com/uploads/images/2020/0705/012100_e3139064_5616235.png)

![](https://images.gitee.com/uploads/images/2020/0705/012100_3721be6b_5616235.png)

![](https://images.gitee.com/uploads/images/2020/0705/012100_0ff4c282_5616235.png)




# 其他

本软件不欢迎某些作恶的公司使用

这个世界因你们变得更糟糕
