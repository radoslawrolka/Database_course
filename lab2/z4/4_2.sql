--Dla każdej kategorii podaj maksymalną i minimalną cenę produktu w tej kategorii
SELECT
    CategoryID,
    MAX(UnitPrice) AS MaxPrice,
    MIN(UnitPrice) AS MinPrice
FROM Products
GROUP BY ROLLUP (CategoryID)
