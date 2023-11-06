--Zmodyfikuj zapytanie z poprzedniego punktu, tak aby podawało liczbę zamówionych jednostek produktu dla wszystkich produktów
select ProductID, sum(Quantity)
from [Order Details]
group by ProductID
