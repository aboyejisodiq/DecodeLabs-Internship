--Executive Summary Table
SELECT
    COUNT(*) AS Total_Orders,
    SUM(TotalPrice) AS Total_Revenue,
    AVG(TotalPrice) AS Average_Order_Value,
    MIN(TotalPrice) AS Lowest_Order_Value,
    MAX(TotalPrice) AS Highest_Order_Value,
    AVG(Quantity) AS Avg_Quantity_Per_Order
FROM DecodeLab;
--Product Performance
SELECT
    Product,
    COUNT(*) AS Orders,
    SUM(TotalPrice) AS Revenue,
    AVG(TotalPrice) AS Avg_Order_Value
FROM DecodeLab
GROUP BY Product
ORDER BY Revenue DESC;
--Product Performance
SELECT
    PaymentMethod,
    COUNT(*) AS Orders,
    SUM(TotalPrice) AS Revenue
FROM DecodeLab
GROUP BY PaymentMethod
ORDER BY Revenue DESC;
--Order Status Analysis
SELECT
    OrderStatus,
    COUNT(*) AS Orders,
    SUM(TotalPrice) AS Revenue
FROM DecodeLab
GROUP BY OrderStatus
ORDER BY Orders DESC;
--Order Status Analysis
SELECT
    OrderStatus,
    COUNT(*) AS Orders,
    SUM(TotalPrice) AS Revenue
FROM DecodeLab
GROUP BY OrderStatus
ORDER BY Orders DESC;
--Referral Source Analysis
SELECT
    ReferralSource,
    COUNT(*) AS Orders,
    SUM(TotalPrice) AS Revenue
FROM DecodeLab
GROUP BY ReferralSource
ORDER BY Revenue DESC;
--Top 10 Highest Orders
SELECT TOP 10
    OrderID,
    Product,
    TotalPrice
FROM DecodeLab
ORDER BY TotalPrice DESC;