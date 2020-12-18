# Git

> Git 是一个开源的分布式版本控制系统，用于敏捷高效地处理任何或小或大的项目。
>
> Git 是 Linus Torvalds 为了帮助管理 Linux 内核开发而开发的一个开放源码的版本控制软件。
>
> Git 与常用的版本控制工具 CVS, Subversion 等不同，它采用了分布式版本库的方式，不必服务器端软件支持。

## 对比svn

> svn:集中式管理,管理员可以轻松掌握每个人的开发权限

> > 缺点:服务器单点故障,容错性低

![image-20201216193155083](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216193155083.png)

> git:分布式版本控制,没有中央服务器,有本地仓库

![image-20201216193121529](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216193121529.png)

## Git工作流程

![image-20201216193416075](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216193416075.png)

## Git下载与安装

[下载地址](https://git-scm.com/download)

一路next

### 安装TortoiseGit辅助工具

[下载地址](https://tortoisegit.org/download/)

关键选择

![image-20201216195905484](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216195905484.png)

<img src="C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216200224175.png" alt="image-20201216200224175" style="zoom:80%;" />

## Git命令

与Linux差不多

### Git 常用命令速查  [来源](https://www.jianshu.com/p/d220c88bb516)

> ```
> > 检出仓库：$ git clone [git://github.com/jquery/jquery.git](https://link.jianshu.com?t=git://github.com/jquery/jquery.git)
> >  查看远程仓库：$ git remote -v
> >  添加远程仓库：$ git remote add [name] [url]
> >  删除远程仓库：$ git remote rm [name]
> >  修改远程仓库：$ git remote set-url --push [name] [newUrl]
> >  拉取远程仓库：$ git pull [remoteName] [localBranchName]
> >  推送远程仓库：$ git push [remoteName] [localBranchName]
> 
> > *如果想把本地的某个分支test提交到远程仓库，并作为远程仓库的master分支，或者作为另外一个名叫test的分支，如下：*
> 
> > $git push origin test:master         // 提交本地test分支作为远程的master分支
> >  $git push origin test:test              // 提交本地test分支作为远程的test分支
> >
> > ---
> 
> git branch 查看本地所有分支
> 
> git status 查看当前状态
> 
> git commit 提交
> 
> git branch -a 查看所有的分支
> 
> git branch -r 查看远程所有分支
> 
> git commit -am "init" 提交并且加注释
> 
> git remote add origin git@192.168.1.119:ndshow
> 
> git push origin master 将文件给推到服务器上
> 
> git remote show origin 显示远程库origin里的资源
> 
> git push origin master:develop
> 
> git push origin master:hb-dev 将本地库与服务器上的库进行关联
> 
> git checkout --track origin/dev 切换到远程dev分支
> 
> git branch -D master develop 删除本地库develop
> 
> git checkout -b dev 建立一个新的本地分支dev
> 
> git merge origin/dev 将分支dev与当前分支进行合并
> 
> git checkout dev 切换到本地dev分支
> 
> git remote show 查看远程库
> 
> git add .
> 
> git rm 文件名(包括路径) 从git中删除指定文件
> 
> git clone [git://github.com/schacon/grit.git](https://link.jianshu.com?t=git://github.com/schacon/grit.git) 从服务器上将代码给拉下来
> 
> git config --list 看所有用户
> 
> git ls-files 看已经被提交的
> 
> git rm [file name] 删除一个文件
> 
> git commit -a 提交当前repos的所有的改变
> 
> git add [file name] 添加一个文件到git index
> 
> git commit -v 当你用－v参数的时候可以看commit的差异
> 
> git commit -m "This is the message describing the commit" 添加commit信息
> 
> git commit -a -a是代表add，把所有的change加到git index里然后再commit
> 
> git commit -a -v 一般提交命令
> 
> git log 看你commit的日志
> 
> git diff 查看尚未暂存的更新
> 
> git rm a.a 移除文件(从暂存区和工作区中删除)
> 
> git rm --cached a.a 移除文件(只从暂存区中删除)
> 
> git commit -m "remove" 移除文件(从Git中删除)
> 
> git rm -f a.a 强行移除修改后文件(从暂存区和工作区中删除)
> 
> git diff --cached 或 $ git diff --staged 查看尚未提交的更新
> 
> git stash push 将文件给push到一个临时空间中
> 
> git stash pop 将文件从临时空间pop下来
> 
> ---
> 
> git remote add origin [git@github.com](https://link.jianshu.com?t=mailto:git@github.com):username/Hello-World.git
> 
> git push origin master 将本地项目给提交到服务器中
> 
> ---
> 
> git pull 本地与服务器端同步
> 
> ---
> 
> git push (远程仓库名) (分支名) 将本地分支推送到服务器上去。
> 
> git push origin server fix:awesome branch
> 
> ---
> 
> git fetch 相当于是从远程获取最新版本到本地，不会自动merge
> 
> git commit -a -m "log_message" (-a是提交所有改动，-m是加入log信息) 本地修改同步至服务器端 ：
> 
> git branch branch_0.1 master 从主分支master创建branch_0.1分支
> 
> git branch -m branch_0.1 branch_1.0 将branch_0.1重命名为branch_1.0
> 
> git checkout branch_1.0/master 切换到branch_1.0/master分支
> 
> du -hs
> 
> git branch 删除远程branch
> 
> git push origin:branch_remote_name
> 
> git branch -r -d branch_remote_name
> 
> ---
> 
> 初始化版本库，并提交到远程服务器端
> 
> mkdir WebApp
> 
> cd WebApp
> 
> git init本地初始化
> 
> touch README
> 
> git add README添加文件
> 
> git commit -m 'first commit'
> 
> git remote add origin [git@github.com](https://link.jianshu.com?t=mailto:git@github.com):daixu/WebApp.git增加一个远程服务器端
> 
> 上面的命令会增加URL地址为'[git@github.com](https://link.jianshu.com?t=mailto:git@github.com):daixu/WebApp.git'，名称为origin的远程服务器库，以后提交代码的时候只需要使用 origin别名即可
> ```



## Git创建本地仓库[^注1]

### 方法1: Git GUI Here

![image-20201216202345601](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216202345601.png)

### 方法2: Git Bash

![image-20201216202639870](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216202639870.png)

### 方法3:  TortoiseGit 

![image-20201216202953318](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216202953318.png)

![image-20201216203049263](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216203049263.png)

---

## 添加文件

### 提交新文件

1.添加至暂存区

![](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216203456046.png)

注[^注2]

2.提交

![image-20201216204753751](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216204753751.png)

3.提交成功 :![image-20201216205055283](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216205055283.png)

---

## 查看已提交文件

右键菜单点击"版本库浏览器"

![image-20201216205605661](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216205605661.png)

即可查看

![image-20201216205733872](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216205733872.png)

---

## 修改文件

### 修改后提交

直接点击提交即可

![image-20201216210046948](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216210046948.png)

---

### 查看修改日志

右键菜单选择'显示日志'

![image-20201216210624894](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216210624894.png)

查看具体修改

![image-20201216210815804](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216210815804.png)



---

## 删除文件与恢复

> 版本库和本地都删除

> > 删除后提交![image-20201216211426597](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216211426597.png)

> 删除版本库文件但保留本地文件
>
> ![image-20201216211756346](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216211756346.png)

> 还原 (右键菜单)[^注3]
>
> ![image-20201216211309815](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216211309815.png)
> 

  


---

## 工作区与暂存区

> 工作区就是在电脑里能看到的目录

>Git的版本库里存放了很多东西,最重要的的是stage(或称index)的暂存区,以及Git自动创建的第一个分支 master,以及指向 master的一个指针 HEAD
>
>![image-20201216204603225](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201216204603225.png)  



## 使用TortoiseGit通过SSH推送本地文件到GitHub

![image-20201218175826614](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218175826614.png)

![image-20201218175922792](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218175922792.png)

### 输入GitHub仓库SHH key

![image-20201218174007300](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218174007300.png)

### 用puttygen.exe 导入私钥生成.ppk文件

![image-20201218175039391](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218175039391.png)

### putty密钥,选择私钥

![image-20201218174944919](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218174944919.png)



### 删除原先建立的bash连接origin

![image-20201218173443162](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218173443162.png)

### 选择SSH客户端

![image-20201218173801833](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218173801833.png)

## 使用TortoiseGit通过https推送本地文件到GitHub

![image-20201218175949626](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218175949626.png)

> 使用https推送需要使用GitHub账号密码登陆验证

## ssh协议

​	SSH 为 Secure Shell的缩写，由 IETF 的网络小组（Network Working Group）所制定；SSH 为建立在应用层基础上的安全协议。SSH 是较可靠，专为远程登录会话和其他网络服务提供安全性的协议。利用 SSH 协议可以有效防止远程管理过程中的信息泄露问题。

## 克隆GitHub上的文件

![image-20201218180457965](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218180457965.png)

![image-20201218183546796](C:\Users\NPC\AppData\Roaming\Typora\typora-user-images\image-20201218183546796.png)



---


[^注1]:".git" 文件夹是本地版本库
[^注2]:该操作只是将文件添加到暂存区

[^注3]:仅限删除本地文件