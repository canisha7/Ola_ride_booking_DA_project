#Create Database First
CREATE DATABASE Ola;

#Use new created database
USE Ola;

#Examine column names and datatypes of column
SELECT * FROM Bookings LIMIT 10;


CREATE VIEW Successful_Bookings AS
SELECT * FROM Bookings 
WHERE Booking_Status = 'Success';

#Retrieve all successful bookings
SELECT * FROM Successful_Bookings;


CREATE VIEW Ride_dist_for_each_vehicle AS
SELECT Vehicle_Type, AVG(Ride_Distance) AS Avg_Dist
FROM Bookings
GROUP BY Vehicle_Type;

#Find the average ride distance for each vehicle type
SELECT * FROM Ride_dist_for_each_vehicle;


CREATE VIEW Total_Cancelled_Rides AS
SELECT COUNT(*) AS Cancelled_Rides 
FROM Bookings
WHERE Cancelled_Rides_by_Cust = 1;

#Get the total number of cancelled rides by customers 
SELECT * FROM Total_Cancelled_Rides;


CREATE VIEW Top5_Cust_highest_rides AS
SELECT Customer_ID, COUNT(Booking_ID) AS Total_Rides
FROM Bookings
GROUP BY Customer_ID
ORDER BY Total_Rides DESC LIMIT 5;   

#List the top 5 customers who booked the highest number of rides
SELECT * FROM Top5_Cust_highest_rides;                                                    


CREATE VIEW Cancelled_Ride_Personal_Car_related_issues AS
SELECT COUNT(*) 
FROM Bookings
WHERE Reason_For_Cancelling_by_Driver = 'Personal & Car related issues';

#Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT * FROM Cancelled_Ride_Personal_Car_related_issues;


CREATE VIEW Min_Max_Rating AS
SELECT MAX(Driver_Ratings) AS Max_Rating, MIN(Driver_Ratings) AS Min_Rating
FROM Bookings
WHERE Vehicle_Type = 'Prime Sedan';

#Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM Min_Max_Rating;


CREATE VIEW Avg_Cust_Rating_per_Veh_Type AS
SELECT Vehicle_Type, AVG(Cust_Ratings) AS Avg_Cust_Ratings
FROM Bookings
GROUP BY Vehicle_Type;

#Find the average customer rating per vehicle type:
SELECT * FROM Avg_Cust_Rating_per_Veh_Type;


CREATE VIEW Total_Booking_Value AS
SELECT SUM(Booking_Value) AS Total_Booking_Value
FROM Bookings
WHERE Booking_Status = 'Success';

#Calculate the total booking value of rides completed successfully
SELECT * FROM Total_Booking_Value;


CREATE VIEW Incomplete_Rides_with_Reason AS
SELECT Booking_ID, Incomplete_Rides_Reason 
FROM Bookings
WHERE Incomplete_Rides = 1;

#List all incomplete rides along with the reason
SELECT * FROM Incomplete_Rides_with_Reason;