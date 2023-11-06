--Zmodyfikuj poprzedni przykład tak żeby dodać jeszcze imię i nazwisko pracownika obsługującego zamówienie
select [Order Details].orderid, round(sum(quantity*products.UnitPrice*(1-Discount)),2), CompanyName, firstname, lastname
from [Order Details]
inner join orders on orders.orderid = [Order Details].orderid
inner join customers on orders.customerid = customers.customerid
inner join products on products.productid = [Order Details].productid
inner join employees on employees.employeeid = orders.employeeid
group by [Order Details].OrderID, CompanyName, firstname, lastname
having sum(quantity)>250