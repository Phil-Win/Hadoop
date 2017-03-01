use phil_main;

LOAD DATA INPATH '/project/Stocks/receive/DailyExchange/Input/NASDAQ*' OVERWRITE INTO TABLE nasdaq_tmp_staging;