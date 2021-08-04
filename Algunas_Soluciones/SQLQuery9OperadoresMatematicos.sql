SELECT MinQty, MaxQty, MaxQty-MinQty AS diferencia, SpecialOfferID, Description
FROM Sales.SpecialOffer;

SELECT MinQty*DiscountPct AS minXDisc, SpecialOfferID, Description
FROM Sales.SpecialOffer;

SELECT  SpecialOfferID, Description, (ISNULL(MaxQty, 10)*DiscountPct) AS maxXDisc
FROM Sales.SpecialOffer;