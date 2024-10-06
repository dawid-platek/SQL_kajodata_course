select * from order_positions
where order_position_id = 400

create index idx_op_id on order_positions(order_position_id)

show index from order_positions

drop index idx_op_id on order_positions