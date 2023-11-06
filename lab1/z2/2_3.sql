--Napisz polecenie, które
-- generuje pojedynczą kolumnę, która zawiera kolumny: imię członka biblioteki, inicjał drugiego imienia i nazwisko dla wszystkich członków biblioteki, którzy nazywają się Anderson
-- nazwij tak powstałą kolumnę „email_name” zmodyfikuj polecenie, tak by zwróciło „listę proponowanych loginów e-mail”  utworzonych przez połączenie imienia
-- zmodyfikuj polecenie, tak by zwróciło „listę proponowanych loginów e-mail”  utworzonych przez połączenie imienia członka biblioteki, z inicjałem drugiego imienia i pierwszymi dwoma literami nazwiska (wszystko małymi literami).
select firstname+middleinitial+lastname as "email_name", lower(firstname+middleinitial+substring(lastname, 0, 3)) as "propose"
from member
where lastname='Anderson'