--------
-- create view calendar
-------
CREATE view gold.calendar
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Calendar/',
                format = 'parquet'
    ) as query1

--------
-- create view customers
-------
create view gold.customers
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Customers/',
                format = 'parquet'
    ) as query1

--------
-- create view product_categories
-------
create view gold.product_categories
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Product_Categories/',
                format = 'parquet'
    ) as query1

--------
-- create view Products
-------
create view gold.Products
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Products/',
                format = 'parquet'
    ) as query1


--------
-- create view returns
-------
create view gold.returns
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Returns/',
                format = 'parquet'
    ) as query1


--------
-- create view Sales
-------
create view gold.Sales
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Sales/',
                format = 'parquet'
    ) as query1

--------
-- create view subcategories
-------
create view gold.subcategories
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_subcategories/',
                format = 'parquet'
    ) as query1;

--------
-- create view Territories
-------
create view gold.Territories
AS
select 
    *
FROM
    OPENROWSET(
                BULK'https://datalakeaw31.blob.core.windows.net/silver/AdventureWorks_Territories/',
                format = 'parquet'
    ) as query1;