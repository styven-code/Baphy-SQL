CREATE SCHEMA baphystore;

CREATE TABLE baphystore.document_type(
    id SERIAL NOT NULL, 
    initials varchar(10) NOT NULL, 
    document_name varchar(50) NOT NULL, 
    CONSTRAINT pk_document_type PRIMARY KEY (id), 
    CONSTRAINT uk_document_type UNIQUE (document_name)
);

CREATE TABLE baphystore.user(
    id SERIAL NOT NULL, 
    email varchar(100) NOT NULL, 
    password varchar(100) NOT NULL,
    CONSTRAINT pk_user PRIMARY KEY (id), 
    CONSTRAINT uk_user UNIQUE (email)
);

CREATE TABLE baphystore.customer(
    id SERIAL NOT NULL,
    document_number int NOT NULL, 
    name varchar(100) NOT NULL,
    lastname varchar(100) NOT NULL,
    type_document int NOT NULL,
    id_user int NOT NULL, 
    CONSTRAINT pk_customer PRIMARY KEY (id), 
    CONSTRAINT uk_customer UNIQUE (type_document, document_number, id_user)
);

CREATE TABLE baphystore.contact(
    id SERIAL NOT NULL, 
    phone varchar(15) NOT NULL,
    address varchar(225) NOT NULL,
    url_facebook varchar(225) NOT NULL, 
    url_instagram varchar(225) NOT NULL, 
    id_customer int NOT NULL,
    CONSTRAINT pk_contact PRIMARY KEY (id), 
    CONSTRAINT uk_contact UNIQUE (phone, id_customer)
);

CREATE TABLE baphystore.category(
    id SERIAL NOT NULL, 
    name varchar(50) NOT NULL, 
    CONSTRAINT pk_category PRIMARY KEY (id),
    CONSTRAINT uk_category UNIQUE (name)
);

CREATE TABLE baphystore.book(
    id SERIAL NOT NULL, 
    title varchar(100) NOT NULL, 
    author varchar(100) NOT NULL, 
    language varchar(20) NOT NULL, 
    edition varchar(50) NOT NULL, 
    isbn varchar(14) NOT NULL,
    id_category int NOT NULL, 
    CONSTRAINT pk_book PRIMARY KEY (id), 
    CONSTRAINT uk_book UNIQUE (isbn, id_category)
);

CREATE TABLE baphystore.description(
    id SERIAL NOT NULL, 
    year int NOT NULL, 
    pages int NOT NULL,  
    size varchar(30) NOT NULL,
    condition varchar(10) NOT NULL, 
    summary varchar(225) NULL, 
    id_book int NOT NULL, 
    CONSTRAINT pk_description PRIMARY KEY (id), 
    CONSTRAINT uk_description UNIQUE (id_book)
);

CREATE TABLE baphystore.customer_book(
    id SERIAL NOT NULL, 
    id_customer int NOT NULL, 
    id_book int NOT NULL, 
    stock int NOT NULL, 
    price money NOT NULL, 
    CONSTRAINT pk_customer_book PRIMARY KEY (id), 
    CONSTRAINT uk_customer_book UNIQUE (id_customer, id_book)
);

ALTER TABLE baphystore.description ADD CONSTRAINT fk_book_desc FOREIGN KEY (id_book) REFERENCES baphystore.book (id);
ALTER TABLE baphystore.book ADD CONSTRAINT fk_category_book FOREIGN KEY (id_category) REFERENCES baphystore.category (id);
ALTER TABLE baphystore.contact ADD CONSTRAINT fk_customer_contact FOREIGN KEY (id_customer) REFERENCES baphystore.customer (id);
ALTER TABLE baphystore.customer_book ADD CONSTRAINT fk_customer_book FOREIGN KEY (id_customer) REFERENCES baphystore.customer (id);
ALTER TABLE baphystore.customer ADD CONSTRAINT fk_document_customer FOREIGN KEY (type_document) REFERENCES baphystore.document_type (id);
ALTER TABLE baphystore.customer_book ADD CONSTRAINT fk_book_customer FOREIGN KEY (id_book) REFERENCES baphystore.book (id);
ALTER TABLE baphystore.customer ADD CONSTRAINT fk_user_customer FOREIGN KEY (id_user) REFERENCES baphystore.user (id);
