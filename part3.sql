part3

# Write a query which lists order status and the # of orders with that status.
# Column headers should be Order Status and # Orders.
# Sort alphabetically by status.

SELECT orders.status AS 'Order Status',COUNT(*)'# Orders' FROM orders
GROUP BY orders.status
#FROM orders os JOIN orderdetails od ON  os.orderNumber= od.orderNumber
ORDER BY orders.status