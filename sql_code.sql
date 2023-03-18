select * from customers;

select * from products;

select * from markets where zone = "South";

select count(*) from customers;

select count(*) from transactions where market_code = 'Mark001';

select * from transactions;
select * from date;

select transactions.*, date.* 
from transactions inner join date
on transactions.order_date = date.date
where market_code='Mark001' and year = '2020';


select avg(transactions.sales_amount)
from transactions inner join date
on transactions.order_date = date.date
where market_code='Mark001' and year = '2020';


select * from transactions where currency='USD\r' or currency='USD';