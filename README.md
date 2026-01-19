# jssbx

本地创建一个名为Dockerfile的文件，需要修改固定隧道参数为自己的，然后将这个文件打包一个zip压缩包 上传 部署即可

```Dockerfile
FROM node:20-alpine3.20

# 建议使用 /app 作为工作目录，除非不仅限于临时文件
WORKDIR /app

# 安装依赖
# 将 npm install -g 全局安装，这样可以直接调用命令，也利用了 Docker 缓存
RUN apk add --no-cache bash openssl curl && \
    npm install -g jssbx

# 设置默认环境变量（可以是空的或占位符，不要放真实密钥）
ENV UUID="" \
    ARGO_DOMAIN="" \
    ARGO_AUTH=""

# 直接运行命令
CMD ["jssbx"]
```
