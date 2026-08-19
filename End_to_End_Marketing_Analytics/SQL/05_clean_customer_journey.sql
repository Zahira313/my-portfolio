-- Identify duplicate customer journey records

WITH DuplicateRecords AS (
    SELECT
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,
        Stage,
        Action,
        Duration,

        ROW_NUMBER() OVER (
            PARTITION BY
                CustomerID,
                ProductID,
                VisitDate,
                Stage,
                Action
            ORDER BY JourneyID
        ) AS row_num

    FROM dbo.customer_journey
)

-- Display duplicate records for inspection
SELECT *
FROM DuplicateRecords
WHERE row_num > 1
ORDER BY JourneyID;


-- Clean and standardise customer journey data

SELECT
    JourneyID,
    CustomerID,
    ProductID,
    VisitDate,
    Stage,
    Action,

    -- Replace missing duration values with the
    -- average duration for the corresponding visit date
    COALESCE(Duration, avg_duration) AS Duration

FROM (
    SELECT
        JourneyID,
        CustomerID,
        ProductID,
        VisitDate,

        -- Standardise stage names
        UPPER(Stage) AS Stage,

        Action,
        Duration,

        -- Calculate average duration for each visit date
        AVG(Duration) OVER (
            PARTITION BY VisitDate
        ) AS avg_duration,

        -- Identify duplicate records
        ROW_NUMBER() OVER (
            PARTITION BY
                CustomerID,
                ProductID,
                VisitDate,
                Stage,
                Action
            ORDER BY JourneyID
        ) AS row_num

    FROM dbo.customer_journey

) AS subquery

-- Retain only the first occurrence of each duplicate
WHERE row_num = 1;
