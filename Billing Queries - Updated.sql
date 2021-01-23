-----------------------------------------------------------------------Prescreen Billing --

---- Need to input JobNumber, InputQTY, OrderDate, CompletedDate, then run-----
---------------------------------------------------------------------------------Simple Path XPN DMS---


declare @JobNumber varchar(20)
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

set @JobNumber = '202010419A'
SET @INPUTQTY =  193241
SET @ORDERDATE = '2020-07-07'
SET @COMPLETEDDATE = '2020-07-07'
SET @PRICEPERLEAD = 0.15


SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD


INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/   '2007147',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ', DMS QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Amby Rufino',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT


	SELECT * FROM PortfolioBilling Order by BillingID desc

	select sum(totalcharge) from PortfolioBilling where ReferenceID is null

	select borrower, sum(TotalCharge) from PortfolioBilling where OrderDate >= '12-01-2020' group by borrower

-----------------------------------------------------------------------------Simple Path XPN LAG---
GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

set @JobNumber = '202010419A'
SET @INPUTQTY = 14805
SET @ORDERDATE = '2020-07-08'
SET @COMPLETEDDATE = '2020-07-08'
SET @PRICEPERLEAD = 0.15



SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/   '2007147',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ', LAG QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Mickee Caputo',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT
END
 


 ----------------------------------------------------------Simple Path EFX LAG --
 GO
 BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

set @JobNumber = 'Z076383'
SET @INPUTQTY = 40799
SET @ORDERDATE = '2020-07-23'
SET @COMPLETEDDATE = '2020-07-23'
SET @PRICEPERLEAD = 0.15



SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/   '2007147',
	/*DETAILS*/     CONCAT('EFXJobNumber - ', @JobNumber, ' LAG QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'EFX',
	/*ORDER BY*/	'Mickee Caputo',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703501',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT

END

SELECT * FROM PortfolioBilling Order by BillingID desc
-----------------------------------------------------------------------Simple Path EFX DMS---------
GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

set @JobNumber = 'Z053753'
SET @INPUTQTY = 72987
SET @ORDERDATE = '2020-07-08'
SET @COMPLETEDDATE = '2020-07-08'
SET @PRICEPERLEAD = 0.15


SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD


INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/   '2007147',
	/*DETAILS*/     CONCAT('EFXJobNumber - ', @JobNumber, ' DMS QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'EFX',
	/*ORDER BY*/	'Amby Rufino',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703501',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT

END





--------------------------------------------------------------------SIMPLEPATH PHONE DELIVERIES!---------------------------------------------
---------------------------------------------------------------------------------Simple Path XPN DMS---
go
BEGIN
declare @JobNumber varchar(20)
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

set @JobNumber = '202010419A'
SET @INPUTQTY =  1861
SET @ORDERDATE = '2020-07-07'
SET @COMPLETEDDATE = '2020-07-07'
SET @PRICEPERLEAD = 0.08


SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD


INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/   '2007147',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ', DMS Phone Appends, QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Amby Rufino',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT

end
	SELECT * FROM PortfolioBilling Order by BillingID desc

	select sum(totalcharge) from PortfolioBilling where ReferenceID is null

	
	
-----------------------------------------------------------------------------Simple Path XPN LAG---
GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

set @JobNumber = '202010419A'
SET @INPUTQTY = 155
SET @ORDERDATE = '2020-07-08'
SET @COMPLETEDDATE = '2020-07-08'
SET @PRICEPERLEAD = 0.08



SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/   '2007147',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ', LAG Phone Appends, QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Mickee Caputo',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT
END
 




-----------------------------------Signature One XPN-------------------

GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
                                 
set @JobNumber = '202002072A'
SET @INPUTQTY = 28146 
SET @ORDERDATE = '2020-2-15'
SET @COMPLETEDDATE = '2020-2-17'
SET @MONTHLYMINIMUM = 3500
SET @PRICEPERLEAD = 0.13

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

--SELECT @CHARGEAMOUNT = @MONTHLYMINIMUM--CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END
  
INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'Signature One',
	/*CLIENT ID*/   '2007531',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ' QTY - ', @INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Gary Zenter',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT
END


----------------------------NOVA HOME LOANS -------------------------------------


GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
                                 
set @JobNumber = '202005222A'
SET @INPUTQTY = 1914 
SET @ORDERDATE = '2020-04-06'
SET @COMPLETEDDATE = '2020-04-06'
SET @MONTHLYMINIMUM = 5500
--SET @PRICEPERLEAD = 0.42

--If QTY if greater than 12,500 then any record beyond 12,500 is charged at .42 each

--SELECT @CHARGEAMOUNT = @MONTHLYMINIMUM--CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END
  
INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'Nova Home Loans',
	/*CLIENT ID*/   '2007599',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ' QTY - ', @INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Thomas Higgins',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@MONTHLYMINIMUM,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @MONTHLYMINIMUM
END


SELECT * FROM PortfolioBilling ORDER BY 1 DESC


----------------------------DEBTBLUE PRESCREEN--------------------


GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
                                 
set @JobNumber = '202005220A'
SET @INPUTQTY = 100000 
SET @ORDERDATE = '2020-04-06'
SET @COMPLETEDDATE = '2020-04-06'
SET @MONTHLYMINIMUM = 5000
SET @PRICEPERLEAD = 0.15

--If QTY less than 250,001 then price per lead is .15
--If QTY between 500,000 and 250,001 then pricer per lead is .14
--If QTY between 750,000 and 500,001 then pricer per lead is .13

SELECT @CHARGEAMOUNT = @PRICEPERLEAD * @INPUTQTY
  
INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'DebtBlue',
	/*CLIENT ID*/   '2007613',
	/*DETAILS*/     CONCAT('XPNJobNumber - ', @JobNumber, ' QTY - ', @INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Kevin Watts',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT
END


--------------------------------------------------------Marketing ITA Billing-------------------------
-----Simple Path ITA----------

Go 
BEGIN
DECLARE @JOBNUMBER varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @JOBNUMBER = 'x253'
SET @INPUTQTY = 100000
SET @ORDERDATE = '2020-07-31'
SET @COMPLETEDDATE = '2020-07-31'
SET @PRICEPERLEAD = 0.10

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SimplePath',
	/*CLIENT ID*/ '2007147',
	/*DETAILS*/ CONCAT('XPNJobNumber - ', @JOBNUMBER, ' QTY - ', @INPUTQTY),
	/*BUREAU*/ 'XPN',
	/*ORDER BY*/ 'Brad Smith',
	/*QTY*/ @INPUTQTY,
	/*PRICEPERLEAD*/ @PRICEPERLEAD,
	/*PARTCODE*/ '703594',
	/*ORDER DATE*/ @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/ NULL,
	/*BILLING CYCLE */ 'S',
	/*BILLING TYPE*/ 0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END


Select * from PortfolioBilling order by BillingID desc










--------------------------------------------Beyond Finance ITA --------------------

Go 
BEGIN
DECLARE @JOBNUMBER varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @JOBNUMBER = 'x253'
SET @INPUTQTY = 100000
SET @ORDERDATE = '2020-07-31'
SET @COMPLETEDDATE = '2020-07-31'
SET @PRICEPERLEAD = 0.10

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'Beyond Finance',
	/*CLIENT ID*/ '2007555',
	/*DETAILS*/ CONCAT('XPNJobNumber - ', @JOBNUMBER, ' QTY - ', @INPUTQTY),
	/*BUREAU*/ 'XPN',
	/*ORDER BY*/ 'Tristan Kiel',
	/*QTY*/ @INPUTQTY,
	/*PRICEPERLEAD*/ @PRICEPERLEAD,
	/*PARTCODE*/ '703594',
	/*ORDER DATE*/ @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/ NULL,
	/*BILLING CYCLE */ 'S',
	/*BILLING TYPE*/ 0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END


Select * from PortfolioBilling order by BillingID desc


--------------------------------------------Beyond Finance ITA (there's a difference in the one above and below) Different type of deliveries --------------------

Go 
BEGIN
DECLARE @JOBNUMBER varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @JOBNUMBER = 'x246'
SET @INPUTQTY = 200000
SET @ORDERDATE = '2019-12-24'
SET @COMPLETEDDATE = '2019-12-24'
SET @PRICEPERLEAD = 0.10

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'Beyond Finance',
	/*CLIENT ID*/ '2007555',
	/*DETAILS*/ CONCAT('XPNJobNumber - ', @JOBNUMBER, ' QTY - ', @INPUTQTY),
	/*BUREAU*/ 'XPN',
	/*ORDER BY*/ 'Tristan Kiel',
	/*QTY*/ @INPUTQTY,
	/*PRICEPERLEAD*/ @PRICEPERLEAD,
	/*PARTCODE*/ '703591',
	/*ORDER DATE*/ @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/ NULL,
	/*BILLING CYCLE */ 'S',
	/*BILLING TYPE*/ 0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END

SELECT * FROM PortfolioBilling
ORDER BY 1 DESC



---------------------------------------------BluPrint---------------------------------
Go 
BEGIN
DECLARE @JOBNUMBER varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @JOBNUMBER = 'x251'
SET @INPUTQTY = 2000
SET @ORDERDATE = '2020-05-29'
SET @COMPLETEDDATE = '2020-05-29'
--SET @PRICEPERLEAD = 0.10

--SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'BluPrint Home Loans',
	/*CLIENT ID*/ '2007671',
	/*DETAILS*/ CONCAT('XPNJobNumber - ', @JOBNUMBER, ' QTY - ', @INPUTQTY),
	/*BUREAU*/ 'XPN',
	/*ORDER BY*/ 'Hans Stone',
	/*QTY*/ 1,
	/*PRICEPERLEAD*/ 500,
	/*PARTCODE*/ '703591',
	/*ORDER DATE*/ @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/ NULL,
	/*BILLING CYCLE */ 'S',
	/*BILLING TYPE*/ 0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ 500
END


-------------------------------------------DEBTBLUE ITA-------------------------------

Go 
BEGIN
DECLARE @JOBNUMBER varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @JOBNUMBER = 'x252'
SET @INPUTQTY = 50000
SET @ORDERDATE = '2020-06-22'
SET @COMPLETEDDATE = '2020-06-22'
SET @PRICEPERLEAD = 0.10

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'DebtBlue',
	/*CLIENT ID*/ '2007613',
	/*DETAILS*/ CONCAT('XPNJobNumber - ', @JOBNUMBER, ' QTY - ', @INPUTQTY),
	/*BUREAU*/ 'XPN',
	/*ORDER BY*/ 'Kevin Watts',
	/*QTY*/ @INPUTQTY,
	/*PRICEPERLEAD*/ @PRICEPERLEAD,
	/*PARTCODE*/ '703591',
	/*ORDER DATE*/ @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/ NULL,
	/*BILLING CYCLE */ 'S',
	/*BILLING TYPE*/ 0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END


Select * from PortfolioBilling order by BillingID desc





----------------------------------------------------------- Prospect Insight Billing -----------------------------------------------

----------- Great Western ------------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @QTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
DECLARE @PHONES FLOAT

-- INPUTQTY is the number of records we delivered, QTY is the number of records provided by Great Western 

SET @QTY = 12341
SET @ORDERDATE = '2020-12-01'
SET @COMPLETEDDATE = '2020-12-01'
SET @MONTHLYMINIMUM = 3500
SET @INPUTQTY = 2390
SET @PHONES = 2318


SET @CHARGEAMOUNT = @MONTHLYMINIMUM + (@PHONES * .10) + (@INPUTQTY * .08) + (@INPUTQTY * .04)
--.10 PER RECORD WITH PHONE (NOT ALL HAVE PHONE)
--.04 per record with ATTRIBUTE APPENDED (all records have ATTRIBUTE), .08 per FICO (all records have FICO),

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'GREAT WESTERN FINANCIAL',
	/*CLIENT ID*/   '2007359',
	/*DETAILS*/     CONCAT('P18 - QTY - ',@QTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Fred McDonald',
	/*FIXED*/		'150000',
	/*AMOUNT*/		@MONTHLYMINIMUM,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END






--- MOUTAIN WEST-------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @QTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

-- INPUTQTY is the number of records we delivered, QTY is the number of records provided by Mountain West 

SET @QTY = 42056
SET @ORDERDATE = '2020-12-02'
SET @COMPLETEDDATE = '2020-12-02'
SET @MONTHLYMINIMUM = 3000
SET @INPUTQTY = 2930

SET @CHARGEAMOUNT = @MONTHLYMINIMUM + (@INPUTQTY * .10) + (@INPUTQTY * .05)
--.05 per record with phone append (all records have phones), .10 per FICO (all records have FICO),

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'MOUNTAIN WEST',
	/*CLIENT ID*/   '1189101',
	/*DETAILS*/     CONCAT('P14 - QTY - ',@QTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Brian Casey',
	/*FIXED*/		'150000',
	/*AMOUNT*/		@MONTHLYMINIMUM,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END

select * from PortfolioBilling
where LoanNumber like '%x2%'
-------------------------------------------FIRST OPTION-------------------------------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 61124
SET @ORDERDATE = '2020-11-02'
SET @COMPLETEDDATE = '2020-11-02'
--SET @MONTHLYMINIMUM = 3500
/*SET @PRICEPERLEAD = CASE 
						WHEN @INPUTQTY < 6000 THEN 0.50
						WHEN @INPUTQTY BETWEEN 6000 AND 9999 THEN 0.40
						WHEN @INPUTQTY BETWEEN 10000 AND 24999 THEN 0.30
						WHEN @INPUTQTY BETWEEN 25000 AND 49999 THEN 0.20
						WHEN @INPUTQTY BETWEEN 50000 AND 99999 THEN 0.18
						WHEN @INPUTQTY >= 100000 THEN 0.17
					END

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD
*/
--SELECT @CHARGEAMOUNT = @MONTHLYMINIMUM--CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'FIRST OPTION MORTGAGE, LLC',
	/*CLIENT ID*/   '2006304',
	/*DETAILS*/     CONCAT('P16 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Matt Berry',
	/*FIXED*/		'1',
	/*AMOUNT*/		800,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ 800
END


-------------------------------------------PROSPECT FINANCIAL-------------------------------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
DECLARE @RETURNEDAMOUNT INT

SET @INPUTQTY = 452664
SET @ORDERDATE = '2020-11-23'
SET @COMPLETEDDATE = '2020-11-23'
SET @MONTHLYMINIMUM = 3500



INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'PROSPECT FINANCIAL GROUP',
	/*CLIENT ID*/   '2004870',
	/*DETAILS*/     CONCAT('P11 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Christine Schindel',
	/*FIXED*/		'150000',
	/*AMOUNT*/		@MONTHLYMINIMUM,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @MONTHLYMINIMUM
END

SELECT * FROM PortfolioBilling
ORDER BY 1 DESC



---------------------------GLOBAL EQUITY--  ---------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 11504
SET @ORDERDATE = '2020-11-04'
SET @COMPLETEDDATE = '2020-11-04'
SET @MONTHLYMINIMUM = 3200
/*
SET @PRICEPERLEAD = CASE 
						WHEN @INPUTQTY < 6000 THEN 0.50
						WHEN @INPUTQTY BETWEEN 6000 AND 9999 THEN 0.40
						WHEN @INPUTQTY BETWEEN 10000 AND 24999 THEN 0.30
						WHEN @INPUTQTY BETWEEN 25000 AND 49999 THEN 0.20
						WHEN @INPUTQTY BETWEEN 50000 AND 99999 THEN 0.18
						WHEN @INPUTQTY >= 100000 THEN 0.17
					END

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

SELECT @CHARGEAMOUNT = CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END
*/

SELECT @CHARGEAMOUNT = @MONTHLYMINIMUM

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'GLOBAL EQUITY FINANCE INC',
	/*CLIENT ID*/   '2004553',
	/*DETAILS*/     CONCAT('P04 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Wil Wagoner',
	/*FIXED*/		'150000',
	/*AMOUNT*/		@CHARGEAMOUNT,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ 3200
END



SELECT * FROM PortfolioBilling
ORDER BY 1 DESC





-------------------------------------------- GSF Mortgage--------------------------------------

GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

--Since GSF's program has no input file from the client, the INPUTQTY is the number of records we delivered, 
--which is used to calculate the appended charges
SET @INPUTQTY = 1429
SET @ORDERDATE = '2020-09-01'
SET @COMPLETEDDATE = '2020-09-01'
SET @MONTHLYMINIMUM = 3500

SET @CHARGEAMOUNT = @MONTHLYMINIMUM + (@INPUTQTY * .10) + (@INPUTQTY * .08)
--.10 per record with phone append (all records have phones), .08 per FICO (all records have FICO),

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'GSF Mortgage',
	/*CLIENT ID*/   '2007606',
	/*DETAILS*/     CONCAT('P20 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Matthew Sell',
	/*FIXED*/		'150000',
	/*AMOUNT*/		@MONTHLYMINIMUM,								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END

SELECT * FROM PortfolioBilling
ORDER BY 1 DESC

----------------------------------------------Western Express ----------------


GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
DECLARE @FICO FLOAT


SET @INPUTQTY = 1880 --input count
SET @FICO = 104 --number of records with FICO delivered
SET @ORDERDATE = '2020-12-02'
SET @COMPLETEDDATE = '2020-12-02'
SET @MONTHLYMINIMUM = 3500

SET @CHARGEAMOUNT = @MONTHLYMINIMUM + (@FICO * .08)
-- .08 per FICO (not all records have FICO),

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'Western Express',
	/*CLIENT ID*/   '2007694',
	/*DETAILS*/     CONCAT('P24 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Nancy Davidson',
	/*FIXED*/		'150000',
	/*AMOUNT*/		'3500',								
	/*PARTCODE*/	'703503',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END

SELECT * FROM PortfolioBilling
ORDER BY 1 DESC
--------------------------------------------------------------------------RNR Triggers Billing -------------------------------------------------------
----------------------------------------------------------------------Rate Plus INc ----------------------------------------------------------------------

-- 3,000 minimum for first 3 months, month 1 is August, month 2 Sept, month 3 OCt , then 3500
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 522
SET @ORDERDATE = '2020-11-02'
SET @COMPLETEDDATE = '2020-11-02'
SET @MONTHLYMINIMUM = 3500



INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'RATE PLUS INC',
	/*CLIENT ID*/   '2007679',
	/*DETAILS*/     CONCAT('P22 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Miles Masters',
	/*FIXED*/		150000,
	/*AMOUNT*/		3000,								
	/*PARTCODE*/	'703603',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @MONTHLYMINIMUM
END


SELECT * FROM PortfolioBilling
ORDER BY 1 DESC
--------------------------------------------------------------Unison RnR Program--------------------------------------

GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME
DECLARE @RECORDSDELIVERED FLOAT

SET @INPUTQTY = 7146
SET @ORDERDATE = '2020-12-08'
SET @COMPLETEDDATE = '2020-12-08'
SET @MONTHLYMINIMUM = 3500
SET @PRICEPERLEAD = .08 -- FOR FICO--
SET @RECORDSDELIVERED = 1052 --FICO delivered

-----Program includes a charge of 8 cents for FICO delivered, not every record has FICO ----

SET @CHARGEAMOUNT = (@MONTHLYMINIMUM) + (@PRICEPERLEAD * @RECORDSDELIVERED)

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'UNISON',
	/*CLIENT ID*/   '2007614',
	/*DETAILS*/     CONCAT('P23 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Amanda Pinder',
	/*FIXED*/		150000,
	/*AMOUNT*/		3500,								
	/*PARTCODE*/	'703603',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END

-- To count the number of FICO's delivered ---
SELECT count(RnRTriggersAppends.ATTR01)
  FROM [Portfolio].[dbo].[RnRTriggersAppends]
  join [RnRTriggersLeads] on RnRTriggersLeads.IRLeadID = RnRTriggersAppends.IRLeadID
  where RnRTriggersAppends.Portfolio ='23' and RnRTriggersLeads.LeadProcessingDate >= '2020-12-01 00:00:00.000' and RnRTriggersAppends.ATTR01 <> ''


SELECT * FROM PortfolioBilling
ORDER BY 1 DESC
----------------------------------------------------------------------SIERRA PACIFIC----------------------------------------------------------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 70806
SET @ORDERDATE = '2020-11-06'
SET @COMPLETEDDATE = '2020-11-06'
SET @MONTHLYMINIMUM = 3000
SET @PRICEPERLEAD = CASE 
						WHEN @INPUTQTY <= 49999 THEN 0.20
						WHEN @INPUTQTY BETWEEN 50000 AND 99999 THEN 0.15
						WHEN @INPUTQTY >= 100000 THEN 0.15
					END

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

SELECT @CHARGEAMOUNT = CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'SIERRA PACIFIC MORTGAGE CO INC',
	/*CLIENT ID*/   '1307035',
	/*DETAILS*/     CONCAT('P09 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Paul Ueckert',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703603',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END


SELECT * FROM PortfolioBilling
ORDER BY 1 DESC
-------------------------------------------RESIDENTIAL BANCORP---------------------------------------------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 4999
SET @ORDERDATE = '2019-12-01'
SET @COMPLETEDDATE = '2019-12-02'
SET @MONTHLYMINIMUM = 1000
SET @PRICEPERLEAD = CASE 
						WHEN @INPUTQTY <= 4999 THEN 0.5
						WHEN @INPUTQTY >= 5000 THEN 0.40
					END

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

SELECT @CHARGEAMOUNT = CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'RESIDENTIAL BANCORP',
	/*CLIENT ID*/   '2007064',
	/*DETAILS*/     CONCAT('P06 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Armand Charbonneau',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703603',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total*/ @CHARGEAMOUNT
END

SELECT * FROM PortfolioBilling
ORDER BY 1 DESC

----------------------------------------------------------------------LUTHER BURBANK SAVINGS----------------------------------------------------------------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 1892
SET @ORDERDATE = '2020-11-02'
SET @COMPLETEDDATE = '2020-11-02'
SET @PRICEPERLEAD = 0.50
SET @MONTHLYMINIMUM = 3000

SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

SELECT @CHARGEAMOUNT = CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'LUTHER BURBANK SAVINGS',
	/*CLIENT ID*/   '2003639',
	/*DETAILS*/     CONCAT('P06 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Wes Goldsberry',
	/*FIXED*/		150000,
	/*AMOUNT*/		3000,								
	/*PARTCODE*/	'703603',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
					@CHARGEAMOUNT
END


SELECT * FROM PortfolioBilling
ORDER BY 1 DESC
------------------------------------------MLS----------------------------


-------- Great Western MLS Billing -------------------
Go 
Begin
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 12121
SET @ORDERDATE = '2020-11-02'
SET @COMPLETEDDATE = '2020-11-02'
SET @MONTHLYMINIMUM = 2000
SET @PRICEPERLEAD = .50


SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD
SELECT @CHARGEAMOUNT = CASE WHEN @CHARGEAMOUNT < @MONTHLYMINIMUM THEN @MONTHLYMINIMUM ELSE @CHARGEAMOUNT END

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'GREAT WESTERN FINANCIAL',
	/*CLIENT ID*/   '2007359',
	/*DETAILS*/     CONCAT('P18 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'BK',
	/*ORDER BY*/	'Fred McDonald',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		.50,				--@CHARGEAMOUNT				
	/*PARTCODE*/	'703891',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*TOTAL CHARGE*/ @CHARGEAMOUNT
END



SELECT * FROM PortfolioBilling
ORDER BY 1 DESC


------------------------------------------- Queries for appended data charges -----------------------

----- Great Western------
--Need to do both P18 and P19 for Great Western, only for phones. Pull to excel and filter to find records without a phone----
 select
[dbo].[ufnGetStringByIndex]([ClientData],2) as FICO,
[dbo].[ufnGetStringByIndex]([ClientData],4) as phone1,
[dbo].[ufnGetStringByIndex]([ClientData],5) as phone2,
[dbo].[ufnGetStringByIndex]([ClientData],6) as phone3,
[dbo].[ufnGetStringByIndex]([ClientData],7) as phone4,
[dbo].[ufnGetStringByIndex]([ClientData],8) as phone5,
[dbo].[ufnGetStringByIndex]([ClientData],9) as phone6
from RnRTriggersLeads
where Portfolio = '18' and Posting_TS IS Not NULL and LeadProcessingDate >='2020-12-01' 
--FOR the month in the query WE RETURNED 2,390 RECORDS (P18/P19), OF WHICH 72 DID NOT HAVE A PHONE APPENDED. THEREFORE, 2,318 RECORDS RETURNED WITH A PHONE



-------- Mountain West -------

 select
[dbo].[ufnGetStringByIndex]([ClientData],0) as FICO,
[dbo].[ufnGetStringByIndex]([ClientData],5) as phone1,
[dbo].[ufnGetStringByIndex]([ClientData],6) as phone2,
[dbo].[ufnGetStringByIndex]([ClientData],7) as phone3,
[dbo].[ufnGetStringByIndex]([ClientData],8) as phone4,
[dbo].[ufnGetStringByIndex]([ClientData],9) as phone5
from RnRTriggersLeads
where Portfolio = '14'  and LeadProcessingDate >= '2020-12-01' 

-------- Western Express -------
 select
[dbo].[ufnGetStringByIndex]([ClientData],0) as Flag,
[dbo].[ufnGetStringByIndex]([ClientData],1) as FICO
from RnRTriggersLeads
where Portfolio = '24'  and LeadProcessingDate >= '2020-12-01'  and 2 <> ''



---------------- Queries to count records delivered (P14, P18/19, P20)---------

----P14 MW------
SELECT COUNT(LOANNUMBER)
FROM RnRTriggersLeads
WHERE Portfolio = '14' AND LeadProcessingDate BETWEEN '2020-05-01 00:00:00.000' AND '2020-05-30 00:00:00.000'


----P18/19 GWF-----
SELECT COUNT(LOANNUMBER)
FROM RnRTriggersLeads
WHERE Portfolio = '18' AND STATE<> 'AZ' AND LeadProcessingDate BETWEEN '2020-04-01 00:00:00.000' AND '2020-04-30 00:00:00.000'

SELECT COUNT(LOANNUMBER)
FROM RnRTriggersLeads
WHERE Portfolio = '19' AND LeadProcessingDate BETWEEN '2020-04-01 00:00:00.000' AND '2020-04-30 00:00:00.000'

-----P20 GSF -----
SELECT COUNT(LOANNUMBER)
FROM RnRTriggersLeads
WHERE Portfolio = '20' AND STATE <> 'MD' AND LeadProcessingDate BETWEEN '2020-04-01 00:00:00.000' AND '2020-04-30 00:00:00.000'









-------------------------------------------Portfolio Snapshot--------------


---------------------Luther Burbank---------------
GO
BEGIN
DECLARE @INPUTQTY INT
DECLARE @MONTHLYMINIMUM FLOAT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME

SET @INPUTQTY = 3297
SET @ORDERDATE = '2020-06-15'
SET @COMPLETEDDATE = '2020-06-15'
SET @PRICEPERLEAD = 3.50


SET @CHARGEAMOUNT = @INPUTQTY * @PRICEPERLEAD

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'LUTHER BURBANK SAVINGS',
	/*CLIENT ID*/   '2003639',
	/*DETAILS*/     CONCAT('P06 - QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'TU',
	/*ORDER BY*/	'Wes Goldsberry',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		@PRICEPERLEAD,								
	/*PARTCODE*/	'703206',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
					@CHARGEAMOUNT
END


SELECT * FROM PortfolioBilling 
ORDER BY 1 DESC


----------------CITADEL--------------------
GO
BEGIN
declare @JobNumber varchar(50)
DECLARE @INPUTQTY INT
DECLARE @PRICEPERLEAD FLOAT
DECLARE @CHARGEAMOUNT FLOAT
DECLARE @ORDERDATE DATETIME
DECLARE @COMPLETEDDATE DATETIME


SET @INPUTQTY = 1647
SET @ORDERDATE = '2020-08-21'
SET @COMPLETEDDATE = '2020-08-21'




SET @CHARGEAMOUNT = @INPUTQTY * 2

INSERT INTO PortfolioBilling
SELECT
	/*CLIENT NAME*/ 'CITADEL',
	/*CLIENT ID*/   '2005626',
	/*DETAILS*/     CONCAT('QTY - ',@INPUTQTY),	
	/*BUREAU'*/     'XPN',
	/*ORDER BY*/	'Michael Walsh',
	/*FIXED*/		@INPUTQTY,
	/*AMOUNT*/		2.00,								
	/*PARTCODE*/	'703203',						
	/*ORDER DATE*/  @ORDERDATE,
	/*COMPLETED DATE*/ @COMPLETEDDATE,
	/*ORDER NUMBER*/   NULL, 
	/*BILLING CYCLE*/  'S',
	/*BILLING TYPE*/   0,
	/*BILLING DATE*/ NULL,
	/*Total Charge*/ @CHARGEAMOUNT
END