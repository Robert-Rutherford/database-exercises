USE codeup_test_db;

DROP TABLE IF EXISTS albums;
CREATE TABLE albums (
    id INT UNSIGNED NOT NULL AUTO_INCREMENT,
    artist VARCHAR(50) DEFAULT 'NONE',
    name VARCHAR(50) NOT NULL,
    release_date INT UNSIGNED NOT NULL,
    sales DOUBLE UNSIGNED DEFAULT 0,
    genre TEXT,
    PRIMARY KEY(id)
 );