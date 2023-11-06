--Napisz polecenie, które wybiera numer czytelnika, karę oraz zapłaconą karę dla wszystkich, którzy jeszcze nie SQL –podstawowe polecenia –ćwiczenie końcowe oraz zapłaconą karę dla wszystkich, którzy jeszcze nie zapłacili.
select member_no, fine_assessed, fine_paid
from loanhist
where fine_paid != fine_assessed