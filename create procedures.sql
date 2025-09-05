create procedure a1
as
begin
select product_name,price,stock_quantity from product ;
end;

exec a1;

