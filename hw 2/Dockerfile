#Установка образа
FROM ubuntu:latest

#Автор
MAINTAINER Naumova Alyona <alyonaa.dm@mail.ru>

#Отключение локации
ENV DEBIAN_FRONTEND noninteractive

#Установка Nginx и PostgreSQL
RUN apt-get update && apt-get install -y postgresql postgresql-contrib nginx-extras

#Команда по умолчанию при запуске контейнера
CMD ["nginx", "-g", "daemon off;"]

#Задание рабочей директории
WORKDIR /var/www/html

#Копирую приложение
#ADD app /Users/Alyona/Desktop/devOps/app

#Устанавливаю переменные окружения для базы данных PostgreSQL
ENV POSTGRES_USER postgres
ENV POSTGRES_PASSWORD postgres
ENV POSTGRES_DB postgres

#Конфигурационный файл Nginx
COPY ./nginx.conf /Users/Alyona/Desktop/devOps/nginx.conf

#Конфигурационный файл PostgreSQL
COPY ./pg_hba.conf /Users/Alyona/Desktop/devOpsHw/pg_hba.conf

#Директории для монтирования тома
VOLUME ["/var/lib/postgresql/data"]

#Задания пользователя
USER www-data

#Открытие портов для веб-сервера и базы данных
EXPOSE 80 5432

