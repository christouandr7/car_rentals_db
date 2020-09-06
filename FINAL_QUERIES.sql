
1.
/*JOIN*/	/*OK*/  /**********DONE (what is it thow???? needs title)****************/
/*all employees of the company and their position*/
SELECT Employee.IRS_Number, Employee.First_Name, Employee.Last_Name, Works.Position
FROM Works
INNER JOIN Employee ON Employee.IRS_Number = Works.IRS_Number

2.
SELECT customer.Customer_ID, Customer.First_Name, Customer.Last_Name, COUNT(customer.Customer_ID) AS Times_Rent
FROM rents
INNER JOIN customer ON customer.Customer_ID = rents.Customer_ID
GROUP BY customer.Customer_ID
HAVING Times_Rent > ?
ORDER BY Times_Rent DESC

3.
SELECT Store.Store_ID, SUM(paymenttransaction.Payment_Amount) AS Profit
FROM store, paymenttransaction, rents, vehicles
WHERE rents.License_Plate = paymenttransaction.License_Plate AND rents.start_date = paymenttransaction.start_date and Vehicles.Store_ID = store.Store_ID
GROUP BY Store_ID
ORDER BY Profit DESC

4.
/*GROUP BY*/		/*OK*/ /**********Done (Added one more WHERE Query)(The naming of the buttons needs work)********/
SELECT COUNT(License_Plate) AS Number_of_Vehicles,Next_Service
FROM vehicles
GROUP BY Next_Service
SELECT License_Plate, Model, Type, Next_Service
FROM vehicles
WHERE Next_Service = ?

5.
/*ORDER BY*/  /*OK*/   /********DONE (Ordered in asc or desc order) ******/
SELECT License_Plate, Make, Model, Type, Year
FROM Vehicles
ORDER BY Year

6.
SELECT round(SUM(paymenttransaction.Payment_Amount),2), Customer.Customer_ID
FROM paymenttransaction, Customer, rents
WHERE rents.License_Plate = paymenttransaction.License_Plate AND rents.start_date = paymenttransaction.start_date and Customer.Customer_ID = rents.Customer_ID
GROUP BY Customer_ID
HAVING SUM(paymenttransaction.Payment_Amount) > ?

7.
/*NESTED QUERY*/   /*OK*/
SELECT Employee.IRS_Number, Employee.First_Name, Employee.Last_Name
FROM Employee
WHERE (SELECT Works.IRS_Number FROM Works WHERE Employee.IRS_Number = works.IRS_Number AND works.Position = ?)

8.
/*WHERE*/	/*OK*/  /********DONE (Can search with surname or without !!!!More fields must be added!!!!!!) ******/
SELECT customer.First_Name, customer.Last_Name, customer.Street_Number As Street_Num, customer.Street, customer.City, customer.Postal_Code, customer.First_Registration
FROM customer
WHERE customer.First_Name = ? AND customer.Last_Name = ?

9.
SELECT vehicles.License_Plate, customer.Customer_ID, customer.IRS_Number, rents.Return_State
FROM vehicles, rents, customer
where rents.Return_State != ? and vehicles.License_Plate = rents.License_Plate and customer.Customer_ID = rents.Customer_ID


10.
SELECT vehicles.License_Plate, vehicles.Make, vehicles.Model, vehicles.Type 
FROM vehicles
WHERE vehicles.License_Plate NOT IN (SELECT rents.License_Plate
                                      FROM rents
                                      WHERE (rents.Start_Date BETWEEN ? AND ? OR ? BETWEEN rents.Start_Date AND rents.Finish_Date))
      			AND vehicles.License_Plate NOT IN (SELECT reserves.License_Plate
                                                    FROM reserves
                                                    WHERE (reserves.Start_Date BETWEEN ? AND ? OR ? BETWEEN reserves.Start_Date AND reserves.Finish_Date))
                AND vehicles.Store_ID=?


