create database ExerciseDb
use ExerciseDb
create table Products
( PId int primary key,
  PQ int ,
  PPrice DECIMAL(10, 2),
  DiscountPercent DECIMAL(10, 2),
  Manufacturing_Date date
)
drop table Products

insert into Products(PId,PQ,PPrice,DiscountPercent,Manufacturing_Date)
 values(1,3,200.00,2.00,'11-12-2023')

 insert into Products(PId,PQ,PPrice,DiscountPercent,Manufacturing_Date)
 values(2,4,150.00,3.00,'11-12-2022')
 insert into Products(PId,PQ,PPrice,DiscountPercent,Manufacturing_Date)
 values(3,5,250.00,5.00,'11-12-2021')
 insert into Products(PId,PQ,PPrice,DiscountPercent,Manufacturing_Date)
 values(4,2,300.00,6.00,'11-12-2020')
 insert into Products(PId,PQ,PPrice,DiscountPercent,Manufacturing_Date)
 values(5,3,200.00,2.00,'11-12-2019')

 select * from Products

alter FUNCTION CalculateDiscountedPrice (@PPrice DECIMAL(10, 2), @DiscountPercent DECIMAL(10, 2))
RETURNS DECIMAL(10, 2)
AS
BEGIN
    DECLARE @DiscountedPrice DECIMAL(10, 2);
    SET @DiscountedPrice = @PPrice - ((@DiscountPercent / 100) * @PPrice);
    RETURN @DiscountedPrice;
END



SELECT PID, PPrice, dbo.CalculateDiscountedPrice(PPrice, DiscountPercent) AS 'PriceAfterDiscount'
FROM Products;

