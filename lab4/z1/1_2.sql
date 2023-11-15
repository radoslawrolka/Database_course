-- Wybierz nazwy i numery telefonów klientów, którzy kupowali produkty z kategorii Confections

select CompanyName, Phone
from Customers
where CustomerID in (
    select CustomerID
    from Orders
    where OrderID in (
        select OrderID
        from [Order Details]
        where ProductID in (
            select ProductID
            from Products
            where CategoryID in (
                select CategoryID
                from Categories
                where CategoryName = 'Confections'
            )
        )
    )
)