-- 3. Obtener el promedio de cantidad de productos vendidos por categoría (product_name,
-- quantity_per_unit, unit_price, quantity, avgquantity)

SELECT Product_Name, Category_Name, Quantity_Per_Unit, od.Unit_Price, Quantity,
AVG(Quantity) OVER(PARTITION BY Categories.Category_ID) AS AvgQuantity
FROM Order_Details od
JOIN Products ON od.Product_ID = Products.Product_ID
JOIN Categories ON Products.Category_ID = Categories.Category_ID
ORDER BY Category_Name, Product_Name;