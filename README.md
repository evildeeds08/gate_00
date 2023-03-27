# Gate Task (Slurm Навыкум "Build Containers!")

## start project
Запуск проекта

```docker run -dp 9000:9000 ghcr.io/evildeeds08/gate_00:main@sha256:ef73ea7626b2dd6918bc16892e1213f148f99a8758a9264684c37b2a8b0c7d01```

Тест работы

Либо зайти напрямую в контейнер ```docker exec -it <container-id> sh```, где <container-id> можно получить с помощью docker ps
и выполнить запрос
```curl -X POST localhost:9000 -H "Content-Type: application/json" -d '{"data": "data-for-hmac"}'```
Либо попытаться выполнить локально, если не заняты порты. 
