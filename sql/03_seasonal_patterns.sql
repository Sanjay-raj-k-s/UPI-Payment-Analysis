/* =========================================================
   ANALYSIS 2 — SEASONAL PATTERNS
   ========================================================= */

SELECT
    EXTRACT(MONTH FROM month) AS month_num,
    TO_CHAR(month, 'Mon') AS month_name,
    ROUND(AVG(volume_mn), 2) AS avg_volume_mn
FROM upi_monthly
GROUP BY month_num, month_name
ORDER BY month_num;