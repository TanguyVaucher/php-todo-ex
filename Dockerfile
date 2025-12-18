FROM bitnami/php-fpm

COPY index.php /app/

RUN echo >> "/opt/bitnami/php/etc/php-fpm.d/www.conf" && \
    echo 'env["TODOLIST_DB_USER"] = $TODOLIST_DB_USER' >> "/opt/bitnami/php/etc/php-fpm.d/www.conf" && \
    echo 'env["TODOLIST_DB_PASS"] = $TODOLIST_DB_PASS' >> "/opt/bitnami/php/etc/php-fpm.d/www.conf" && \
    echo 'env["TODOLIST_DB_NAME"] = $TODOLIST_DB_NAME' >> "/opt/bitnami/php/etc/php-fpm.d/www.conf" && \
    echo 'env["TODOLIST_DB_HOST"] = $TODOLIST_DB_HOST' >> "/opt/bitnami/php/etc/php-fpm.d/www.conf" && \
    echo 'env["TODOLIST_DB_PORT"] = $TODOLIST_DB_PORT' >> "/opt/bitnami/php/etc/php-fpm.d/www.conf"
