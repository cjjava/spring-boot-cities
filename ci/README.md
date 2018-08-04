创建服务
```bash
./set-pipeline.sh
fly -t lite up -p cities-service
```

销毁服务
```bash
fly -t lite dp -p cities-service
```