/* =========================================================
   ANALYSIS 1 — YEAR-WISE GROWTH
   ========================================================= */

SELECT
    EXTRACT(YEAR FROM month) AS year,
    SUM(volume_mn) AS total_volume_mn,
    ROUND(SUM(value_cr) / 100000, 2) AS total_value_lakh_cr
FROM upi_monthly
GROUP BY year
ORDER BY year;