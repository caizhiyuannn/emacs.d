# emacs.d

emacs 配置文件

## 使用方法

```shell
git clone https://github.com/caizhiyuannn/emacs.git ~/.emacs.d
sh ~/.emacs.d/initialize.sh
# 选择是否安装 all-the-icons 支持字体， 第一次需要安装字体才能正常显示图标
# 选择需要安装字体的目录
# macOs 或 Linux 用户需要字体缓存，执行以下命令
fc-cache -f -v [指定字体目录]

```

## 按键绑定

1. 文件导航树 neotree-toggle 绑定为[F2]

## 项目目录结构

1. init.el 
项目入口，emacs从该文件读取处理

2. initialize.sh
初始化脚本，用于自动安装需要的包和环境

3. lisp/init-package.el
包管理文件， 所有需要安装的包都存在里面

4. lisp/init-function.el
函数包，提供额外函数自定义

5. lisp/init-setting.el
emacs内置命令，基础美化处理，不调用外部安装包命令

6. lisp/init-use-packages.el
emacs 外部所有下载包初始化配置存在的文件， 通过use-package 集中配置，便于管理
