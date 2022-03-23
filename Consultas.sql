/*Consulta de actualizacion*/
select * from baphystore.book;
update baphystore.book set language = 'Inglés' where book.id = 1;

/*Join*/
select book.title, book.author, book.language, book.edition, category.name
from baphystore.book inner join baphystore.category on book.id_category = category.id;

select book.isbn, book.title, book.author, book.language, ds.pages, ds.condition ,ds.size
from baphystore.book left outer join baphystore.description as ds on book.id = id_book;

select book.title, book.author, book.language, book.edition, category.name, customer_book.price, customer.name, customer.lastname, user.email, contact.phone
from baphystore.book 
inner join baphystore.category on category.id = book.id_category
inner join baphystore.customer_book on customer_book.id_book = book.id
inner join baphystore.customer on customer.id = customer_book.id_customer
inner join baphystore.user on user.id = customer.id_user
inner join baphystore.contact on customer.id = contact.id_customer

select category.name, sum(customer_book.stock) as unidades_por_categoria 
from baphystore.book 
inner join baphystore.customer_book on customer_book.id_book = book.id
inner join baphystore.category on category.id = book.id_category
group by category.name;


