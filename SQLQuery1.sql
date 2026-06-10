SELECT*FROM DecodeLab
--Missing Values
SELECT*FROM DecodeLab
WHERE CouponCode IS NULL
UPDATE DecodeLab
SET CouponCode='NO COUPON' WHERE CouponCode is NULL
