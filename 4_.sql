USE `product catalog management`;
SELECT i.invoice_number,
		i.id,
        p.name,
        pc.category_name,
        i.quantity,
        i.amount
FROM invoice as i
JOIN product as p
	ON i.product_id=p.id
JOIN productcategory as pc
	ON i.product_id=pc.id
WHERE i.invoice_number='NV-22-04-001';