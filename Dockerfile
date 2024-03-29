# 建立 python 环境
FROM python:3.10.13

# 镜像作者
MAINTAINER leafsflower


# 在容器内/var/www/html/下创建 mysite1文件夹
RUN mkdir -p /var/www/html/mysite1

# 设置容器内工作目录
WORKDIR /var/www/html/mysite1

# 将当前目录文件加入到容器工作目录中（. 表示当前宿主机目录）
ADD . /var/www/html/mysite1

# 利用 pip 安装依赖 使用清华源加速镜像
RUN pip install -i https://pypi.tuna.tsinghua.edu.cn/simple/ -r requirements.txt

