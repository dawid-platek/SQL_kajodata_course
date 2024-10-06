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

create table orders(
order_id;customer_id;order_date;shipping_date;shipping_mode;
delivery_country;delivery_city;delivery_state;delivery_zip_code;return
)