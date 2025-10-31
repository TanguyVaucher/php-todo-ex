CREATE DATABASE IF NOT EXISTS todolist;

-- Some older versions of MySQL might require you to add "WITH
-- mysql_native_password" between "IDENTIFIED" and "BY" in the following query.
CREATE USER IF NOT EXISTS 'todolist'@'127.0.0.1' IDENTIFIED BY 'ArchiDep2025#+TVR';

GRANT ALL PRIVILEGES ON todolist.* TO 'todolist' @'127.0.0.1';

USE todolist;

CREATE TABLE IF NOT EXISTS `todo` (
    `id` bigint(20) NOT NULL AUTO_INCREMENT,
    `title` varchar(2048) NOT NULL,
    `done` tinyint(1) NOT NULL DEFAULT '0',
    `created_at` TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
    PRIMARY KEY (`id`)
);