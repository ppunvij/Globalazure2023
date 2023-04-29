
SELECT
    TOP 100 name as cityname ,main_temp_celsius,main_feels_like_celsius,main_temp_min_celsius,main_temp_min_celsius,loaded_at
    
FROM
    OPENROWSET(
        BULK 'https://datademosynapse.dfs.core.windows.net/raw/weather_data/**',
        FORMAT = 'PARQUET'
    ) AS [result]
where cast(loaded_at as date )=cast(CURRENT_TIMESTAMP as date )