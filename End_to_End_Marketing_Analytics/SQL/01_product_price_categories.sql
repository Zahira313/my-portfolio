-- Categorise products based on price
-- Low: < 50
-- Medium: 50–200
-- High: > 200

SELECT 
    ProductID,
    ProductName,
    Price,
    CASE
        WHEN Price < 50 THEN 'Low'

        WHEN Price BETWEEN 50 AND 200 THEN 'Medium'

        ELSE 'High'

    END AS PriceCategory

FROM dbo.products;
