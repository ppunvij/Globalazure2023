-- This is auto-generated code
SELECT
    TOP 100 *
FROM
    OPENROWSET(
        BULK 'https://datademosynapse.dfs.core.windows.net/raw/Stream/**',
        FORMAT = 'PARQUET'
    ) AS [result]
order by 5 desc

-- This is auto-generated code
SELECT
    count(*)
FROM
    OPENROWSET(
        BULK 'https://datademosynapse.dfs.core.windows.net/raw/Stream/**',
        FORMAT = 'PARQUET'
    ) AS [result]
