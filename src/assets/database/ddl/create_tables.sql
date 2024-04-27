-- Tabela 'title'
CREATE TABLE title (
    id INT PRIMARY KEY,
    type VARCHAR(255),
    title VARCHAR(255)
);

-- Tabela 'info'
CREATE TABLE info (
    title_id INT PRIMARY KEY,
    rating VARCHAR(10),
    listed_in VARCHAR(255),
    description TEXT,
    FOREIGN KEY (title_id) REFERENCES title(id)
);

-- Tabela 'date'
CREATE TABLE date (
    title_id INT PRIMARY KEY,
    date_added DATE,
    release_year INT,
    rating VARCHAR(10),
    duration INT,
    FOREIGN KEY (title_id) REFERENCES title(id)
);

-- Tabela 'person'
CREATE TABLE person (
    title_id INT PRIMARY KEY,
    director VARCHAR(255),
    cast VARCHAR(255),
    country VARCHAR(255),
    FOREIGN KEY (title_id) REFERENCES title(id)
);
