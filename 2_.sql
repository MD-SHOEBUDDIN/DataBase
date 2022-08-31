USE `product catalog management`;
SELECT p.name,pc.category_name
FROM product as p
JOIN productcategory as pc
	ON p.Category_id = pc.id