use phil_main;

CREATE TABLE IF NOT EXISTS nasdaq_tmp_staging ( 
symbol          STRING,
name            STRING,
last_sale       DOUBLE,
market_cap      STRING,
ipo_year        STRING,
sector          STRING,
industry        STRING,
summary_quote   STRING
) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = "\""
)  
LOCATION '/project/Stocks/prep/DailyExchange/nasdaq_tmp_staging/'
tblproperties("skip.header.line.count"="1"); 


CREATE TABLE IF NOT EXISTS etf_tmp_staging ( 
symbol                  STRING,
name                    STRING,
last_sale               DOUBLE,
net_change              DOUBLE,
net_change_direction    STRING,
percent_change          DOUBLE,
one_year_percent_change STRING
) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = "\""
)  
LOCATION '/project/Stocks/prep/DailyExchange/etf_tmp_staging/'
tblproperties("skip.header.line.count"="1"); 


CREATE TABLE IF NOT EXISTS amex_tmp_staging ( 
symbol          STRING,
name            STRING,
last_sale       DOUBLE,
market_cap      STRING,
ipo_year        STRING,
sector          STRING,
industry        STRING,
summary_quote   STRING
) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = "\""
)  
LOCATION '/project/Stocks/prep/DailyExchange/amex_tmp_staging/'
tblproperties("skip.header.line.count"="1"); 


CREATE TABLE IF NOT EXISTS nyse_tmp_staging ( 
symbol          STRING,
name            STRING,
last_sale       DOUBLE,
market_cap      STRING,
ipo_year        STRING,
sector          STRING,
industry        STRING,
summary_quote   STRING
) 
ROW FORMAT SERDE 'org.apache.hadoop.hive.serde2.OpenCSVSerde'
WITH SERDEPROPERTIES (
"separatorChar" = ",",
"quoteChar"     = "\""
)  
LOCATION '/project/Stocks/prep/DailyExchange/nyse_tmp_staging/'
tblproperties("skip.header.line.count"="1"); 