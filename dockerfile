# Usa una imagen base de PHP 7.0-FPM
FROM php:7.0.4-fpm

# Instala extensiones necesarias
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Copia el código fuente al contenedor
COPY . /var/www/html/

# Configura el directorio de trabajo
WORKDIR /var/www/html/

# Expone el puerto 9000 para PHP-FPM
EXPOSE 9000
