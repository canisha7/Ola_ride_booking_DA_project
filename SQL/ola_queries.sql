#Use new created database
USE Ola;

#Examine column names and datatypes of column
SELECT * FROM Bookings LIMIT 10;

#Retrieve all successful bookings
SELECT * FROM Successful_Bookings;

#Find the average ride distance for each vehicle type
SELECT * FROM Ride_dist_for_each_vehicle;

#Get the total number of cancelled rides by customers 
SELECT * FROM Total_Cancelled_Rides;

#List the top 5 customers who booked the highest number of rides
SELECT * FROM Top5_Cust_highest_rides; 

#Get the number of rides cancelled by drivers due to personal and car-related issues
SELECT * FROM Cancelled_Ride_Personal_Car_related_issues;

#Find the maximum and minimum driver ratings for Prime Sedan bookings:
SELECT * FROM Min_Max_Rating;

#Find the average customer rating per vehicle type:
SELECT * FROM Avg_Cust_Rating_per_Veh_Type;

#Calculate the total booking value of rides completed successfully
SELECT * FROM Total_Booking_Value;

#List all incomplete rides along with the reason
SELECT * FROM Incomplete_Rides_with_Reason;