USE join_test_db;

CREATE TABLE roles
(
    id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name VARCHAR(100) NOT NULL,
    PRIMARY KEY (id)
);

CREATE TABLE users
(
    id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
    name    VARCHAR(100) NOT NULL,
    email   VARCHAR(100) NOT NULL,
    role_id INT UNSIGNED DEFAULT NULL,
    PRIMARY KEY (id),
    FOREIGN KEY (role_id) REFERENCES roles (id)
);

INSERT INTO roles (name)
VALUES ('admin');
INSERT INTO roles (name)
VALUES ('author');
INSERT INTO roles (name)
VALUES ('reviewer');
INSERT INTO roles (name)
VALUES ('commenter');

INSERT INTO users (name, email, role_id)
VALUES ('bob', 'bob@example.com', 1),
       ('joe', 'joe@example.com', 2),
       ('sally', 'sally@example.com', 3),
       ('adam', 'adam@example.com', 3),
       ('jane', 'jane@example.com', null),
       ('mike', 'mike@example.com', null);

# code used to quickly create database tables for jdbc exercise in java 3 section
# USE adlister_db;
#
# CREATE TABLE users(
#                       id   INT UNSIGNED NOT NULL AUTO_INCREMENT,
#                       username VARCHAR(100) NOT NULL,
#                       email VARCHAR(100) NOT NULL,
#                       password VARCHAR(100) NOT NULL,
#                       PRIMARY KEY (id)
# )
#
# CREATE TABLE ads
# (
#     id      INT UNSIGNED NOT NULL AUTO_INCREMENT,
#     user_id INT UNSIGNED DEFAULT NULL,
#     title VARCHAR(100) NOT NULL,
#     description VARCHAR(500) NOT NULL,
#     PRIMARY KEY (id),
#     FOREIGN KEY (user_id) REFERENCES users (id)
# );




