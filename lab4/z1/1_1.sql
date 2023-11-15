--Wybierz nazwy i numery telefonów klientów , którym w 1997 roku przesyłki dostarczała firma United Package.

select CompanyName, Phone
from Customers
where customerid in (
    select distinct customerid
    from Orders
    where shipvia in (
        select shipperid
        from Shippers
        where CompanyName = 'United Package'
    )
    and year(ShippedDate) = 1997
)