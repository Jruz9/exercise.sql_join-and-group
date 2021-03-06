Part 5

#For each employee who represents customers, output the total # of orders that employee’s customers have placed alongside the total sale amount of those orders.
#The employee name should be output as a single column named Sales Rep formatted as lastName, firstName.
#The second column should be titled # Orders and the third should be Total Sales.
#Sort the output by Total Sales descending.
#Only (and all) employees with the job title Sales Rep should be included in the output, and if the employee made no sales the Total Sales should display as 0.00.
 
 
 

SELECT CONCAT(employees.lastName,employees.firstName) AS 'Sales Rep', 
COUNT(quantityOrdered) AS  '#ORDERS',
NVL((quantityOrdered*priceEach),0.0) AS 'Total Sales'

FROM 
employees LEFT JOIN customers ON employees.employeeNumber =customers.salesRepEmployeeNumber
LEFT JOIN orders ON customers.customerNumber=orders.customerNumber
LEFT JOIN orderdetails ON orders.orderNumber=orderdetails.orderNumber
WHERE employees.jobTitle = 'Sales Rep'
GROUP BY CONCAT(employees.employeeNumber) ,'#ORDERS'
ORDER BY (quantityOrdered*priceEach)  DESC;
