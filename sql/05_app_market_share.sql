/* =========================================================
   ANALYSIS 4 — APP MARKET SHARE
   ========================================================= */

SELECT
    year,
    app_name,

    SUM(volume_mn) AS total_vol,

    ROUND(
        SUM(volume_mn) * 100.0
        /
        SUM(SUM(volume_mn))
        OVER (PARTITION BY year),
        2
    ) AS market_share_pct

FROM upi_apps

GROUP BY year, app_name

ORDER BY year, total_vol DESC;
