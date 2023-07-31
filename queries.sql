-- Quantos pedidos cada cliente fez?
select idClient, count(*) as Number_of_Orders from clients 
	inner join orders on idClient = idOrderClient 
	inner join productOrder on idPOorder = idOrders 
	group by idClient;
    
-- Algum vendedor também é fornecedor?
SELECT 
    CASE
        WHEN EXISTS (
            SELECT 1
            FROM seller sel
            WHERE EXISTS (
                SELECT 1
                FROM supplier spj
                WHERE sel.idPJ = spj.idPJ
            )
        ) THEN 'Sim'
        ELSE 'Não'
    END AS 'Algum vendedor também é fornecedor PJ?';
    
-- Quais vendedores também são fornecedores?

SELECT *
	FROM PJ
	WHERE idPJ IN (
		SELECT idPJ
		FROM seller sel
		WHERE EXISTS (
			SELECT idPJ
			FROM supplier spj
			WHERE sel.idPJ = spj.idPJ
		)
	);


-- Relação de produtos fornecedores e estoques;

SELECT
    p.idProduct,
    p.Pname,
    pj.SocialName AS supplierName,
    ps.quantity AS quantitySupplied,
    sl.location AS storageLocation,
    st.storageQuantity AS quantityInStock
FROM
    product p
LEFT JOIN productSupplier ps ON p.idProduct = ps.idPsProduct
LEFT JOIN supplier s ON ps.idPsSupplier = s.idSupplier
LEFT JOIN PJ pj ON s.idSupplier = pj.idPJ
LEFT JOIN storageLocation sl ON p.idProduct = sl.idslProduct
LEFT JOIN storages st ON sl.idslProdStorage = st.idProdStorage AND p.idProduct = st.idProdStorage;


-- Relação de nomes dos fornecedores e nomes dos produtos;

SELECT
    pj.SocialName AS supplierName,
    p.Pname
FROM
    product p
JOIN productSupplier ps ON p.idProduct = ps.idPsProduct
JOIN supplier s ON ps.idPsSupplier = s.idSupplier
JOIN PJ pj ON s.idSupplier = pj.idPJ
ORDER BY supplierName;

-- Quais produtos estão em falta e precisam ser reabastecidos?

SELECT p.Pname AS 'Produtos em Falta'
FROM product AS p
LEFT JOIN storages AS s ON p.idProduct = s.idProdStorage
AND s.storageQuantity < 1
ORDER BY Pname;

-- Quais produtos têm o maior número de pedidos pendentes?

SELECT p.Pname, COUNT(*) AS pendingOrders
FROM product AS p
JOIN productorder AS op ON p.idProduct = op.idPOProduct
JOIN orders AS o ON op.idPOOrder = o.idOrders
WHERE o.ordersStatus = 'processing'
GROUP BY p.Pname
ORDER BY pendingOrders DESC;

-- Qual a forma mais recorrente de pagamento?

SELECT payment_type, COUNT(*) AS paymentCount
FROM payment
GROUP BY payment_type
ORDER BY paymentCount DESC;

-- Quais categorias tem 2 ou mais produtos cadastrados?

SELECT category, COUNT(*) AS num_products
FROM product
GROUP BY category
HAVING COUNT(*) >= 2;