# Write a query to display each customer’s name (asCustomer Name) alongside the name of the employee who is responsible for that customer’s orders.
# The employee name should be in a single Sales Rep column formatted as lastName, firstName. The output should be sorted alphabetically by customer NAME.
 
 SELECT cust.customerName AS customerName, CONCAT(emp.lastName,', ',emp.firstName) AS salesRep
 FROM customers cust JOIN  employees emp
 ON cust.salesRepemployeenumber=emp.employeenumber
 ORDER BY customerName ASC 