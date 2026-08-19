-- Clean extra whitespace from customer review text


SELECT

    ReviewID,
    CustomerID,
    ProductID,
    ReviewDate,
    Rating,
    REPLACE(ReviewText, '  ', ' ') AS ReviewText

FROM dbo.customer_reviews;

-- Create a cleaned customer review table

SELECT

    ReviewID,
    CustomerID,
    ProductID,
    ReviewDate,
    Rating,
    REPLACE(ReviewText, '  ', ' ') AS ReviewText

INTO dbo.customer_reviews_cleaned

FROM dbo.customer_reviews;
