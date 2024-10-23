select 
	cost_forecast_id
	,cost_forecast
	,cost_year
	,ship
	/* no partition */
	,row_number() over 
		(order by cost_forecast desc) 							as row_number_ranking 
	,rank() over 
		(order by cost_forecast desc) 							as rank_ranking 
	,dense_rank() over 
		(order by cost_forecast desc)    						as dense_rank_ranking 	
	/* partition by year*/
	,row_number() over 
		(partition by cost_year order by cost_forecast desc) 	as row_number_ranking_y 
	,rank() over 
		(partition by cost_year order by cost_forecast desc) 	as rank_ranking_y
	,dense_rank() over 
		(partition by cost_year order by cost_forecast desc)    as dense_rank_ranking_y 
	/* partition by year and shipping*/
	,dense_rank() over 
		(partition by cost_year, ship order by cost_forecast desc)    as dense_rank_ranking_s
from cost_forecast