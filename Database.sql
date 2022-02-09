CREATE SCHEMA Baphystore;

CREATE TABLE Baphystore.document_type(
    id SERIAL NOT NULL, 
    initials varchar(10) NOT NULL, 
    document_name varchar(50) NOT NULL, 
    CONSTRAINT pk_document_type PRIMARY KEY (id), 
    CONSTRAINT uk_document_type UNIQUE (document_name)
);

CREATE TABLE Baphystore.users(
    id SERIAL NOT NULL, 
    email varchar(100) NOT NULL, 
    password varchar(100) NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (id), 
    CONSTRAINT uk_user UNIQUE (email)
);

CREATE TABLE Baphystore.client(
    id SERIAL NOT NULL,
    document_number int NOT NULL, 
    names varchar(100) NOT NULL,
    lastnames varchar(100) NOT NULL,
    type_document int NOT NULL,
    id_users int NOT NULL, 
    CONSTRAINT pk_client PRIMARY KEY (id), 
    CONSTRAINT uk_client UNIQUE (type_document, document_number, id_users)
);

CREATE TABLE Baphystore.Contact(
    id SERIAL NOT NULL, 
    phone varchar(15) NOT NULL,
    address varchar(200) NOT NULL,
    url_facebook varchar(200) NOT NULL, 
    url_instagram varchar(200) NOT NULL, 
    id_client int NOT NULL,
    CONSTRAINT pk_Contact PRIMARY KEY (id), 
    CONSTRAINT uk_contact UNIQUE (phone, id_client)
);

CREATE TABLE Baphystore.category(
    id SERIAL NOT NULL, 
    name_category varchar(50) NOT NULL, 
    format varchar(10) NOT NULL, 
    CONSTRAINT pk_category PRIMARY KEY (id),
    CONSTRAINT uk_category UNIQUE (name_category, format)
);

CREATE TABLE Baphystore.book(
    id SERIAL NOT NULL, 
    title varchar(100) NOT NULL, 
    author varchar(100) NOT NULL, 
    language varchar(20) NOT NULL, 
    edition varchar(50) NOT NULL, 
    isbn varchar(15) NOT NULL, 
    id_category int NOT NULL, 
    CONSTRAINT pk_book PRIMARY KEY (id), 
    CONSTRAINT uk_book UNIQUE (isbn, id_category)
);

CREATE TABLE Baphystore.description(
    id SERIAL NOT NULL, 
    edition_year int NOT NULL, 
    number_page int NOT NULL,  
    size varchar(30) NOT NULL,
    condition varchar(10) NOT NULL, 
    summary varchar(1000) NULL, 
    id_book int NOT NULL, 
    CONSTRAINT pk_description PRIMARY KEY (id), 
    CONSTRAINT uk_description UNIQUE (id_book)
);

CREATE TABLE Baphystore.client_book(
    id SERIAL NOT NULL, 
    id_client int NOT NULL, 
    id_book int NOT NULL, 
    stock int NOT NULL, 
    price money NOT NULL, 
    CONSTRAINT pk_seller_book PRIMARY KEY (id), 
    CONSTRAINT uk_seller_book UNIQUE (id_client, id_book)
);

ALTER TABLE Baphystore.description ADD CONSTRAINT fk_book_desc FOREIGN KEY (id_book) REFERENCES Baphystore.book (id);
ALTER TABLE Baphystore.book ADD CONSTRAINT fk_category_book FOREIGN KEY (id_category) REFERENCES Baphystore.category (id);
ALTER TABLE Baphystore.Contact ADD CONSTRAINT fk_client_contact FOREIGN KEY (id_client) REFERENCES Baphystore.client (id);
ALTER TABLE Baphystore.client_book ADD CONSTRAINT fk_cliente_clibook FOREIGN KEY (id_client) REFERENCES Baphystore.client (id);
ALTER TABLE Baphystore.client ADD CONSTRAINT fk_document_client FOREIGN KEY (type_document) REFERENCES Baphystore.document_type (id);
ALTER TABLE Baphystore.client_book ADD CONSTRAINT fk_sebook_book FOREIGN KEY (id_book) REFERENCES Baphystore.book (id);
ALTER TABLE Baphystore.client ADD CONSTRAINT fk_users_client FOREIGN KEY (id_users) REFERENCES Baphystore.users (id);
