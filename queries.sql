select * from clients left outer join orders on idClient = idOrderClient;

-- Quantos pedidos cada cliente fez?
select idClient, count(*) as Number_of_Orders from clients 
	inner join orders on idClient = idOrderClient 
	inner join productOrder on idPOorder = idOrders 
	group by idClient;
    
