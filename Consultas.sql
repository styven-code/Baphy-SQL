/*Consulta de actualizacion*/
select * from baphystore.book;
update baphystore.book set language = 'Inglés' where book.id = 1;

/*Join*/
select book.title, book.author, book.language, book.edition, category.name_category, category.format
from baphystore.book inner join baphystore.category on book.id_category = category.id;

select book.isbn, book.title, book.author, book.language, ds.number_page, ds.condition ,ds.size
from baphystore.book left outer join baphystore.description as ds on book.id = id_book;

select book.title, book.author, book.language, book.edition, category.name_category, client_book.price, client.firts_name, client.second_surname, users.email, users.number_phone
from baphystore.book 
inner join baphystore.category on category.id = book.id_category
inner join baphystore.client_book on client_book.id_book = book.id
inner join baphystore.client on client.id = client_book.id_client
inner join baphystore.users on users.id = client.id_users;

select category.name_category, sum(client_book.stock) as unidades_por_categoria 
from baphystore.book 
inner join baphystore.client_book on client_book.id_book = book.id
inner join baphystore.category on category.id = book.id_category
group by category.nama_category;


