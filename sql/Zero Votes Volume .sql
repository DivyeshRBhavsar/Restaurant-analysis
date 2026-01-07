-- “Restaurants with zero votes were retained as they represent newly listed or low-visibility businesses and provide valuable signal for modeling.”

SELECT Votes ,COUNT(*) AS Total_votes
FROM `dev-poet-480917-e3.restaurant_data.500_restaurants_info`
group by Votes
order by Total_votes DESC