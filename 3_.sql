USE `product catalog management`;
SELECT i.invoice_number , 
	   i.invoice_date , 
       p.name AS Product_Name,
       pc.category_name AS Category,
       i.quantity,
       i.amount
FROM product as p
JOIN invoice as i
	ON p.id = i.product_id
JOIN productcategory as pc
	ON pc.id = p.Category_id