USE `product catalog management`;
SELECT p.name,
	   p.cost
FROM product as p
JOIN invoice as i
	WHERE p.id=i.product_id
ORDER BY p.cost DESC
LIMIT 5;