--Podaj  nr zamówienia oraz wartość  zamówienia, dla zamówień, dla których łączna liczba zamawianych jednostek produktów jest > 250
select orderid, sum(UnitPrice) as TotalUnits, round(sum(UnitPrice*Quantity*(1-Discount)),2) as "full price"
from [Order Details]
group by orderid
having sum(UnitPrice)>250