创建服务
```bash
fly -t lite l -c http://127.0.0.1:18080
fly -t lite sync
fly -t lite e -c task-unit.yml -i cities-repo=..
fly -t lite sp -c cities-service.yml -p cities-service
fly -t lite up -p cities-service
```

销毁服务
```bash
fly -t lite dp -p cities-service
```