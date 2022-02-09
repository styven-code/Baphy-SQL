/*Tabla tipo de documento*/
insert into Baphystore.document_type (initials, document_name) values ('CC','Cédula de ciudadanía');
insert into Baphystore.document_type (initials, document_name) values ('TI','Tarjeta de identidad ');
insert into Baphystore.document_type (initials, document_name) values ('CE','Cédula de extranjería');
insert into Baphystore.document_type (initials, document_name) values ('TE','Tarjeta de extranjería');
insert into Baphystore.document_type (initials, document_name) values ('NIT','Número de Identificación Tributaria');
insert into Baphystore.document_type (initials, document_name) values ('PST','Pasaporte');
insert into Baphystore.document_type (initials, document_name) values ('PEP','Permiso Especial de Permanencia');
select * from Baphystore.document_type;

/*Tabla de categerio y formato*/
insert into Baphystore.category (name_category, format) values ('Ficción','Digital');
insert into Baphystore.category (name_category, format) values ('Ficción','Fisico');
insert into Baphystore.category (name_category, format) values ('Misterio','Digital');
insert into Baphystore.category (name_category, format) values ('Misterio','Fisico');
insert into Baphystore.category (name_category, format) values ('Historia ','Digital');
insert into Baphystore.category (name_category, format) values ('Historia ','Fisico');
insert into Baphystore.category (name_category, format) values ('Filosofía','Digital');
insert into Baphystore.category (name_category, format) values ('Filosofía','Fisico');
insert into Baphystore.category (name_category, format) values ('Psicología','Digital');
insert into Baphystore.category (name_category, format) values ('Psicología','Fisico');
insert into Baphystore.category (name_category, format) values ('Arte','Digital');
insert into Baphystore.category (name_category, format) values ('Arte','Fisico');
insert into Baphystore.category (name_category, format) values ('Arquitectura','Digital');
insert into Baphystore.category (name_category, format) values ('Arquitectura','Fisico');
insert into Baphystore.category (name_category, format) values ('Diseño','Digital');
insert into Baphystore.category (name_category, format) values ('Diseño','Fisico');
insert into Baphystore.category (name_category, format) values ('Sociología','Digital');
insert into Baphystore.category (name_category, format) values ('Sociología','Fisico');
insert into Baphystore.category (name_category, format) values ('Música','Digital');
insert into Baphystore.category (name_category, format) values ('Música','Fisico');
insert into Baphystore.category (name_category, format) values ('Dibujo','Digital');
insert into Baphystore.category (name_category, format) values ('Dibujo','Fisico');
insert into Baphystore.category (name_category, format) values ('Cocina','Digital');
insert into Baphystore.category (name_category, format) values ('Cocina','Fisico');
insert into Baphystore.category (name_category, format) values ('Escultura','Digital');
insert into Baphystore.category (name_category, format) values ('Escultura','Fisico');
insert into Baphystore.category (name_category, format) values ('Pintura','Digital');
insert into Baphystore.category (name_category, format) values ('Pintura','Fisico');
insert into Baphystore.category (name_category, format) values ('Fotografía','Digital');
insert into Baphystore.category (name_category, format) values ('Fotografía','Fisico');
insert into Baphystore.category (name_category, format) values ('Dicicionarios','Digital');
insert into Baphystore.category (name_category, format) values ('Dicicionarios','Fisico');
insert into Baphystore.category (name_category, format) values ('Economía','Digital');
insert into Baphystore.category (name_category, format) values ('Economía','Fisico');
insert into Baphystore.category (name_category, format) values ('Moda','Digital');
insert into Baphystore.category (name_category, format) values ('Moda','Fisico');
insert into Baphystore.category (name_category, format) values ('Publicidad','Digital');
insert into Baphystore.category (name_category, format) values ('Publicidad','Fisico');
insert into Baphystore.category (name_category, format) values ('Geografia','Digital');
insert into Baphystore.category (name_category, format) values ('Geografia','Fisico');
insert into Baphystore.category (name_category, format) values ('Historieta','Digital');
insert into Baphystore.category (name_category, format) values ('Historieta','Fisico');
insert into Baphystore.category (name_category, format) values ('Novela','Digital');
insert into Baphystore.category (name_category, format) values ('Novela','Fisico');
insert into Baphystore.category (name_category, format) values ('Novela Gráfica','Digital');
insert into Baphystore.category (name_category, format) values ('Novela Gráfica','Fisico');
insert into Baphystore.category (name_category, format) values ('Novela Romantica','Digital');
insert into Baphystore.category (name_category, format) values ('Novela Romantica','Fisico');
insert into Baphystore.category (name_category, format) values ('Inglés','Digital');
insert into Baphystore.category (name_category, format) values ('Inglés','Fisico');
insert into Baphystore.category (name_category, format) values ('Comic','Digital');
insert into Baphystore.category (name_category, format) values ('Comic','Fisico');
insert into Baphystore.category (name_category, format) values ('Biografia','Digital');
insert into Baphystore.category (name_category, format) values ('Biografia','Fisico');
insert into Baphystore.category (name_category, format) values ('Infantil','Digital');
insert into Baphystore.category (name_category, format) values ('Infantil','Fisico');
select * from Baphystore.category;

/*Tabla de Libros*/
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9780593230251','Caste: the origins of our discontents','Isabel Wilkerson','Español','Penguin Random House', 18);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789585118669','A través de mi ventana','Ariana Godoy','Español','Alfaguara', 48);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789583049415','Misterio en el espacio','Thilo','Español','Panamericana', 2);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584238788','Crónicas de narnia 6. La silla de plata','C. S. Lewis','Español','Destino', 56);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584238764','Crónicas de narnia 4. El príncipe caspian','C. S. Lewis','Español','Destino',56);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584238726','Las crónicas de narnia','C. S. Lewis','Español','Destino', 56);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584294128','Bitácora del naufragio','Mario Mendoza','Español','Planeta', 2);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584250001','La melancolía de los feos','Mario Mendoza','Español','Planeta', 2);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789584239419','Satanás','Mario Mendoza','Español','Planeta', 2);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9789585429031','El hilo rojo','Erika Halvorsen','Español','Sudamericana', 48);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9780553173253','A Brief History of Time','Stephen Hawking','Inglés','Bantam Books', 6);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781338189599','The bad guys 6 - alien vs bad guys','Aaron Blabey','Inglés','Scholastic', 56);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781401270728','DC universe: rebirth','Geoff Johns, Gary Frank, Phil Jimenez, Ivan Reis, Ethan Van Sciver','Inglés','DC Comics', 52);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781401265137','Batman. The dark knight: master race','Frank Miller, Brian Azzarello, Andy Kubert, Klaus Janson, Brad Anderson, Alex Sinclair','Inglés','DC Comics', 52);
insert into Baphystore.book (isbn, title, author, language, edition, id_category)
values ('9781616556556','Aliens: fire and stone','Chris Roberson, Patric Reynolds','Inglés','Dark Horse Books', 2);
select * from Baphystore.book;

/*Tabla de descripcion del libro*/
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2020, 476, 'Nuevo', '24.5 x 16 x 3 cm', 1);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2021, 416, 'Nuevo', '21.5 x 15 x 2.2 cm', 2);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2020, 126, 'Nuevo', '20.4 x 13.7 x 1.2 cm', 3);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2020, 304, 'Nuevo', '21 x 13 x 1.8 cm', 4);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2020, 288, 'Nuevo', '21 x 13 x 1.7 cm', 5);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2020, 7, 'Nuevo', '13.2 x 13.5 x 21.5 cm', 6);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2021, 184, 'Nuevo', '23 x 15 x 1.8 cm', 7);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2018, 241, 'Nuevo', '23 x 15 x 1.7 cm', 8);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2018, 282, 'Nuevo', '23 x 15 x 2 cm', 9);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2019, 185, 'Nuevo', '23 x 15 x 1 cm', 10);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2017, 226, 'Nuevo', '17.5 x 10.5 x 1.7 cm', 11);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2017, 137, 'Nuevo', '19.2 x 15.3 x 1 cm', 12);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2018, 96, 'Nuevo', '28.3 x 18.7 x 1.3 cm', 13);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2018, 376, 'Nuevo', '26.6 x 17.8 x 2.3 cm', 14);
insert into Baphystore.description (edition_year, number_page, condition, size, id_book)
values (2015, 112, 'Nuevo', '25.8 x 16.8 x 16.8 cm', 15);
select * from Baphystore.description;




