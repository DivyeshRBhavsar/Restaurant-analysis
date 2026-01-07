CREATE TABLE `dev-poet-480917-e3.restaurant_data.cleaned_500_restaurants` AS 
SELECT 
Restaurant_ID,
Restaurant_Name,
Country_Code,
City,
Latitude,
Longitude,
Cuisines,
AC_of_Two,
Currency,
CASE WHEN Tab_book = true  THEN 1 ELSE 0 END AS Tab_book,
CASE WHEN Online_Del = true  THEN 1 ELSE 0 END AS Online_Del,
CASE WHEN Now_Del = true  THEN 1 ELSE 0 END AS Now_Del,
CASE WHEN Order_Menu =  true  THEN 1 ELSE 0 END AS Order_Menu,
Price_Range,
Rating_color,
Rating_text,
Votes

FROM `dev-poet-480917-e3.restaurant_data.500_restaurants_info`
WHERE Agg_rating IS NOT NULL