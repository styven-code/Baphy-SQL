/*Tabla tipo de documento*/
insert into baphystore.document_type (initials, document_name) values ('CC','Cédula de ciudadanía');
insert into baphystore.document_type (initials, document_name) values ('TI','Tarjeta de identidad ');
insert into baphystore.document_type (initials, document_name) values ('CE','Cédula de extranjería');
insert into baphystore.document_type (initials, document_name) values ('TE','Tarjeta de extranjería');
insert into baphystore.document_type (initials, document_name) values ('NIT','Número de Identificación Tributaria');
insert into baphystore.document_type (initials, document_name) values ('PST','Pasaporte');
insert into baphystore.document_type (initials, document_name) values ('PEP','Permiso Especial de Permanencia');
select * from baphystore.document_type;

/*Tabla de categerio y formato*/
insert into baphystore.category (name) values ('Ficción');
insert into baphystore.category (name) values ('Misterio');
insert into baphystore.category (name) values ('Historia');
insert into baphystore.category (name) values ('Filosofía');
insert into baphystore.category (name) values ('Psicología');
insert into baphystore.category (name) values ('Arte');
insert into baphystore.category (name) values ('Arquitectura');
insert into baphystore.category (name) values ('Diseño');
insert into baphystore.category (name) values ('Sociología');
insert into baphystore.category (name) values ('Música');
insert into baphystore.category (name) values ('Dibujo');
insert into baphystore.category (name) values ('Cocina');
insert into baphystore.category (name) values ('Escultura');
insert into baphystore.category (name) values ('Pintura');
insert into baphystore.category (name) values ('Fotografía');
insert into baphystore.category (name) values ('Dicicionarios');
insert into baphystore.category (name) values ('Economía');
insert into baphystore.category (name) values ('Moda');
insert into baphystore.category (name) values ('Publicidad');
insert into baphystore.category (name) values ('Geografia');
insert into baphystore.category (name) values ('Historieta');
insert into baphystore.category (name) values ('Novela');
insert into baphystore.category (name) values ('Novela Gráfica');
insert into baphystore.category (name) values ('Novela Romantica');
insert into baphystore.category (name) values ('Inglés');
insert into baphystore.category (name) values ('Comic');
insert into baphystore.category (name) values ('Biografia');
insert into baphystore.category (name) values ('Infantil');
select * from baphystore.category;

/*Tabla de Libros*/
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9780593230251','Caste: the origins of our discontents','Isabel Wilkerson','Español','Penguin Random House', 9);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789585118669','A través de mi ventana','Ariana Godoy','Español','Alfaguara', 24);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789583049415','Misterio en el espacio','Thilo','Español','Panamericana', 1);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584238788','Crónicas de narnia 6. La silla de plata','C. S. Lewis','Español','Destino', 22);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584238764','Crónicas de narnia 4. El príncipe caspian','C. S. Lewis','Español','Destino',22);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584238726','Las crónicas de narnia','C. S. Lewis','Español','Destino', 22);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584294128','Bitácora del naufragio','Mario Mendoza','Español','Planeta', 1);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584250001','La melancolía de los feos','Mario Mendoza','Español','Planeta', 1);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584239419','Satanás','Mario Mendoza','Español','Planeta', 1);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789585429031','El hilo rojo','Erika Halvorsen','Español','Sudamericana', 24);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9780553173253','A Brief History of Time','Stephen Hawking','Inglés','Bantam Books', 3);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781338189599','The bad guys 6 - alien vs bad guys','Aaron Blabey','Inglés','Scholastic', 28);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781401270728','DC universe: rebirth','Geoff Johns, Gary Frank, Phil Jimenez, Ivan Reis, Ethan Van Sciver','Inglés','DC Comics', 26);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781401265137','Batman. The dark knight: master race','Frank Miller, Brian Azzarello, Andy Kubert, Klaus Janson, Brad Anderson, Alex Sinclair','Inglés','DC Comics', 26);
insert into baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781616556556','Aliens: fire and stone','Chris Roberson, Patric Reynolds','Inglés','Dark Horse Books', 1);
select * from baphystore.book;

/*Tabla de descripcion del libro*/
insert into baphystore.description (year, pages, condition, size, id_book)
values (2020, 476, 'Nuevo', '24.5 x 16 x 3 cm', 1);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2021, 416, 'Nuevo', '21.5 x 15 x 2.2 cm', 2);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2020, 126, 'Nuevo', '20.4 x 13.7 x 1.2 cm', 3);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2020, 304, 'Nuevo', '21 x 13 x 1.8 cm', 4);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2020, 288, 'Nuevo', '21 x 13 x 1.7 cm', 5);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2020, 7, 'Nuevo', '13.2 x 13.5 x 21.5 cm', 6);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2021, 184, 'Nuevo', '23 x 15 x 1.8 cm', 7);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2018, 241, 'Nuevo', '23 x 15 x 1.7 cm', 8);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2018, 282, 'Nuevo', '23 x 15 x 2 cm', 9);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2019, 185, 'Nuevo', '23 x 15 x 1 cm', 10);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2017, 226, 'Nuevo', '17.5 x 10.5 x 1.7 cm', 11);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2017, 137, 'Nuevo', '19.2 x 15.3 x 1 cm', 12);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2018, 96, 'Nuevo', '28.3 x 18.7 x 1.3 cm', 13);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2018, 376, 'Nuevo', '26.6 x 17.8 x 2.3 cm', 14);
insert into baphystore.description (year, pages, condition, size, id_book)
values (2015, 112, 'Nuevo', '25.8 x 16.8 x 16.8 cm', 15);
select * from baphystore.description;




