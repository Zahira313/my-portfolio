-- Clean and standardise engagement data

SELECT
    EngagementID,
    ContentID,
    CampaignID,
    ProductID,

    -- Standardise content type labels
    UPPER(REPLACE(ContentType, 'Socialmedia', 'Social Media')) AS ContentType,

    -- Split combined views and clicks field
    LEFT(
        ViewsClicksCombined,
        CHARINDEX('-', ViewsClicksCombined) - 1
    ) AS Views,

    RIGHT(
        ViewsClicksCombined,
        LEN(ViewsClicksCombined) - CHARINDEX('-', ViewsClicksCombined)
    ) AS Clicks,

    Likes,

    -- Convert engagement date into a consistent format
    FORMAT(
        CONVERT(DATE, EngagementDate),
        'dd.MM.yyyy'
    ) AS EngagementDate

FROM dbo.engagement_data

-- Newsletter records were excluded because they were not required for the marketing analysis
WHERE ContentType != 'newsletter';
