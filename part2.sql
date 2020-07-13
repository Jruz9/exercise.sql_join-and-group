part2


# Determine which products are most popular with our customers.
# For each product, list the total quantity ordered along with the total sale generated (total quantity ordered * priceEach) for that product.
# The column headers should be Product Name, Total # Ordered and Total Sale.
# List the products by Total Sale descending.




SELECT pro.productName AS 'Product Name',
od.quantityOrdered AS 'Total # Ordered',
(quantityOrdered * priceEach) AS  'Total sales'

FROM products pro JOIN orderdetails  od ON pro.productCode= od.productCode

ORDER BY (quantityOrdered * priceEach) DESC;