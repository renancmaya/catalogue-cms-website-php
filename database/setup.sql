/* CREATE TABLES */

CREATE TABLE service_categories (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500),
    url VARCHAR(500) UNIQUE,
    featured_image VARCHAR(500),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50)
);

CREATE TABLE service_groups (
    id INT PRIMARY KEY AUTO_INCREMENT,
    category_id INT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500),
    url VARCHAR(500) UNIQUE,
    featured_image VARCHAR(500),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50),
    FOREIGN KEY (category_id) REFERENCES service_categories(id)
);

CREATE TABLE service_group_galleries (
    id INT PRIMARY KEY AUTO_INCREMENT,
    group_id INT,
    url VARCHAR(500) UNIQUE,
    alt VARCHAR(500),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50),
    FOREIGN KEY (group_id) REFERENCES service_groups(id)
);

CREATE TABLE services (
    id INT PRIMARY KEY AUTO_INCREMENT,
    group_id INT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500),
    duration_minutes INT NOT NULL,
    price DECIMAL(10,2) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50),
    FOREIGN KEY (group_id) REFERENCES service_groups(id)
);

CREATE TABLE professionals (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    description VARCHAR(500),
    instagram VARCHAR(50),
    url VARCHAR(500) UNIQUE,
    featured_image VARCHAR(500),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50)
);

CREATE TABLE categories_professionals (
    category_id INT,
    professional_id INT,
    PRIMARY KEY (category_id, professional_id),
    FOREIGN KEY (category_id) REFERENCES service_categories(id),
    FOREIGN KEY (professional_id) REFERENCES professionals(id)
);

CREATE TABLE specialties (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(50) NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50)
);

CREATE TABLE professionals_specialties (
    professional_id INT,
    specialty_id INT,
    PRIMARY KEY (professional_id, specialty_id),
    FOREIGN KEY (professional_id) REFERENCES professionals(id),
    FOREIGN KEY (specialty_id) REFERENCES specialties(id)
);

CREATE TABLE list_items (
    id INT PRIMARY KEY AUTO_INCREMENT,
    heading VARCHAR(500) NOT NULL,
    text VARCHAR(500),
    icon VARCHAR(50),
    type ENUM('features', 'talking points') NOT NULL,
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50)
);

CREATE TABLE options (
    id INT PRIMARY KEY AUTO_INCREMENT,
    `key` VARCHAR(50) UNIQUE NOT NULL,
    value VARCHAR(2000),
    created_at DATETIME DEFAULT CURRENT_TIMESTAMP,
    updated_at DATETIME DEFAULT CURRENT_TIMESTAMP on UPDATE CURRENT_TIMESTAMP,
    created_by VARCHAR(50) NOT NULL,
    updated_by VARCHAR(50)
);