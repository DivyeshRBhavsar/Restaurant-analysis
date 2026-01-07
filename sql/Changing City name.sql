-- Updating the name for the clear understanding of the city name

UPDATE `dev-poet-480917-e3.restaurant_data.500_restaurants_info`
SET City = 'Sao Paulo'
WHERE City LIKE 'S??o Paulo'
