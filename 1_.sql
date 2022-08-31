USE `product catalog management`;
SELECT p.name,pc.category_name,p.cost
FROM product as p
JOIN productcategory as pc
	ON p.category_id=pc.id