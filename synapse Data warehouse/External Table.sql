create MASTER KEY ENCRYPTION by PASSWORD = 'kesana@iit31'

create DATABASE SCOPED CREDENTIAL cred_aw
with 
IDENTITY = 'Managed identity'

create EXTERNAL data SOURCE source_silver
WITH
(
    LOCATION = 'https://datalakeaw31.blob.core.windows.net/silver',
    CREDENTIAL = cred_aw
)

create EXTERNAL data SOURCE source_gold
WITH
(
    LOCATION = 'https://datalakeaw31.blob.core.windows.net/gold',
    CREDENTIAL = cred_aw
)

CREATE EXTERNAL FILE FORMAT fromat_parquet
WITH
(
    FORMAT_TYPE = parquet,
    DATA_COMPRESSION = 'org.apache.hadoop.io.compress.SnappyCodec'
)




---create external tabel extsales

create EXTERNAL TABLE gold.extsales
WITH
(
    location  = 'extsales',
    DATA_SOURCE = source_gold,
    FILE_FORMAT = fromat_parquet
)AS
SELECT * from gold.sales
  

SELECT * from gold.extsales