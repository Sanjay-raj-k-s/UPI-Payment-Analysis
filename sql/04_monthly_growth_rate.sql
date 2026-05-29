/* =========================================================
   ANALYSIS 3 — MONTHLY GROWTH RATE (LAG)
   ========================================================= */

SELECT
    month,
    volume_mn,

    LAG(volume_mn)
    OVER (ORDER BY month) AS prev_month_vol,

    ROUND(
        (
            volume_mn -
            LAG(volume_mn) OVER (ORDER BY month)
        )
        /
        NULLIF(
            LAG(volume_mn) OVER (ORDER BY month),
            0
        ) * 100,
        2
    ) AS mom_growth_pct

FROM upi_monthly
ORDER BY month;
