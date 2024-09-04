# 使用官方的nginx作为基础镜像  
FROM nginx:stable-alpine  
  
# 将当前目录的内容复制到容器的/usr/share/nginx/html/  
COPY . /usr/share/nginx/html/  
  
# 暴露端口  
EXPOSE 80  
  
# 设置工作目录  
WORKDIR /usr/share/nginx/html/  
  
# 定义容器启动时执行的命令  
CMD ["nginx", "-g", "daemon off;"]

