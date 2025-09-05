create database ola;
use ola;
select * from bookings;
#1. Retrieve all successful bookings:
SELECT *
FROM bookings
WHERE `Booking Status` = 'Success';


#2. Find the average ride distance for each vehicle type:
SELECT `Vehicle Type`, AVG(`Ride Distance`) AS avg_distance
FROM bookings
WHERE `Ride Distance` IS NOT NULL
GROUP BY `Vehicle Type`;


#3. Get the total number of cancelled rides by customers:
SELECT COUNT(*) FROM bookings WHERE `Booking Status` = 'cancelled by Customer';
#4. List the top 5 customers who booked the highest number of rides:

SELECT `Customer ID`, COUNT('Booking ID') as total_rides FROM bookings GROUP BY
`Customer ID` ORDER BY total_rides DESC LIMIT 5;

#5. Get the number of rides cancelled by drivers due to personal and car-related issues:
SELECT COUNT(*) FROM bookings WHERE `cancelled Rides by Driver` = 'Personal & Car
related issue';
#6. Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT MAX(`Driver Ratings`) as max_rating, MIN(`Driver Ratings`) as min_rating FROM
bookings WHERE `Vehicle Type` = 'Prime Sedan';

#7. Retrieve all rides where payment was made using UPI:
SELECT *
FROM bookings
WHERE `Payment Method` = 'UPI';


#8. Find the average customer rating per vehicle type:
SELECT `Vehicle Type`, AVG(`Customer Rating`) as avg_customer_rating FROM bookings
GROUP BY `Vehicle Type`;


#9. Calculate the total booking value of rides completed successfully:
SELECT SUM(`Booking Value`) AS total_success_value
FROM bookings
WHERE `Booking Status` = 'Success';

#10. List all incomplete rides along with the reason:
SELECT `Booking ID`, `Customer ID`, `Vehicle Type`, `Incomplete Rides Reason`
FROM bookings
WHERE `Incomplete Rides` = 1;
