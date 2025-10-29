# Logistics Data Exploration  

## Overview  
This mini-project explores a simplified logistics dataset to practice SQL joins and filtering. It is inspired by data from a logistics company such as FedEx or UPS. The goal is to understand customer and shipment information, and answer business questions about shipments in transit and customer engagement.  

## Dataset  
The dataset includes two tables:  
- **customers**: customer_id, customer_name, contact_email, contact_phone, billing_address, shipping_address  
- **shipments**: shipment_id, customer_id, package_description, weight_kg, shipping_method, shipping_date, delivery_date, status  

## Business Questions  
- List sample customers and shipments.  
- Identify the customer id, name, and shipping address for customers who have placed an order.  
- Find shipment ids and addresses for shipments that are currently in transit.  
- Show distinct customer names and emails for customers who have not used Express shipping.  

## Skills Demonstrated  
- Table creation and data insertion  
- Inner joins between customers and shipments  
- Filtering based on conditions  
- Selecting distinct records  

## How to Use  
Run the `Logistics_Data.sql` script in a SQL environment (e.g., SQLite or PostgreSQL) to create the tables and insert sample data. Then execute the provided SELECT queries to answer the business questions. You can extend the queries for deeper analysis.
