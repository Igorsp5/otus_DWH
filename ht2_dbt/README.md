### Домашняя работа №2 по курсу OTUS Data Warehouse Analyst
Целью домашнего задания является развертывание кластера ClickHouse в Яндекс.Облаке, 
создание учебного проекта dbt для загрузки данных из S3 и построения витрин.
Описание задания: https://gist.github.com/kzzzr/8d50126079df1a8e5646342f6247df22

### Создание кластера
Осуществляется запросом:
```
yc managed-clickhouse cluster create \
    --name clickhouse-dwh \
    --network-name default \
    --host type=clickhouse,zone-id=ru-central1-b,subnet-name=default-ru-central1-b,assign-public-ip \
    --user name=<name>,password=<password> \
    --database name=db \
    --clickhouse-resource-preset s2.micro \
    --clickhouse-disk-type network-ssd \
    --clickhouse-disk-size 70
```

### Модель данных
![Lineage Graph](graph.png)

### Запуск проекта 

по отдельности
```
    dbt run -m tag:staging
    dbt run -m tag:star
    dbt run -m tag:marts
```

либо  полностью проект 

```
    dbt run --full-refresh
```
![Lineage Graph](run.png)


### Тестирование проекта 

```
    dbt test -m tag:staging
    dbt test -m tag:star
    dbt test -m tag:marts

    dbt test
```
![Lineage Graph](test.png)


### Создание документа проекта

```
    dbt docs generate
    dbt docs serve
```
