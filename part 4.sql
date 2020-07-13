part 4


-- Write a query to list, for each product line, the total # of products sold from that product line.
-- The first column should be Product Line and the second should be # Sold.
-- Order by the second column descending.


SELECT products.productLine AS 'product line',sum(orderdetails.quantityOrdered) AS '#sold'

FROM products,orderdetails,productlines

WHERE products.productCode=orderdetails.productcode

AND  products.productLine= productlines.productLine

GROUP BY products.productline

ORDER BY  sum(orderdetails.quantityOrdered) ASC ;