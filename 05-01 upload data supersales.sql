/* cost_forecast_id;year;ship;sales;cost_forecast
1;2018;First Class;59278;70000 */
create table cost_forecast (
cost_forecast_id integer
,"year" integer
,ship text
,sales integer
,cost_forecast integer
)
select * from cost_forecast


/* order_id;customer_id;order_date;shipping_date;shipping_mode;
delivery_country;delivery_city;delivery_state;delivery_zip_code;return
328;166;04.12.2020;07.12.2020;Second Class;United States;Henderson;Kentucky;42420;37 */
create table orders (
order_id integer
,customer_id integer
,order_date date
,shipping_date date
,shipping_mode text
,delivery_country text
,delivery_city text
,delivery_state text
,delivery_zip_code integer
,"return" integer
)
select * from orders


/* customer_id;customer_name
206;Christina VanderZanden */
create table customers (
customer_id integer
,customer_name text
)
select * from customers


/* order_id;order_position_id;product_id;item_quantity;position_discount
328;108;13;2;0 */
create table order_positions (
order_id integer
,order_position_id integer
,product_id integer
,item_quantity integer
,position_discount decimal
)
select * from order_positions


/* order_id;rating
330;5 */
create table order_ratings (
order_id integer
,rating integer
)
select * from order_ratings


/* order_id;next_order_free
329;0 */
create table order_returns (
order_id integer
,next_order_free integer
)
select * from order_returns


/* group_id;group;category
1;Bookcases;Furniture */
create table product_groups (
group_id integer
,"group" text
,category text
)
select * from product_groups


/* product_id;group_id;product_name;product_price
1847;17;
Ativa-D5772-2-Line-5.8GHz-Digital-Expandable-Corded-Cordless-Phone-System-with-Answering-&-Caller-ID-Call-Waiting-Black-Silver;
164.99 */
create table products_v2 (
product_id integer
,group_id integer
,product_name text
,product_price decimal
)
select * from products_v2