# Set the base image to Alpine
FROM alpine:3.17.0

# Создание каталога
RUN mkdir /data
WORKDIR /data
# Setup packages
RUN apk update && apk add --no-cache wget
#Скачивание файла
RUN wget -q https://lms.skillfactory.ru/static/edx-theme/images/favicon.ico
# Перенос файла в папку
RUN mv favicon.ico /data/
VOLUME /data
# Вывод версии OS после запуска.
CMD ["cat", "/etc/alpine-release"]
