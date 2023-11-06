--Napisz polecenie, które:
-- wybiera numer członka biblioteki, isbn książki i wartość naliczonej kary dla wszystkich wypożyczeń, dla których naliczono karę
-- stwórz kolumnę wyliczeniową zawierającą podwojoną wartość kolumny fine_assessed
-- stwórz alias ‘double fine’ dla tej kolumny
select member_no, isbn, fine_assessed, 2*fine_assessed as "double fine"
from loanhist