create procedure a1
as
begin
select product_name,price,stock_quantity from product ;
end;

exec a1;

create procedure b1
as
begin

select category_id ,category_name from category;
end;

exec b1;








