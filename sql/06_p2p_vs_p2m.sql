/* =========================================================
   ANALYSIS 5 — P2P VS P2M STRUCTURAL SHIFT
   ========================================================= */

SELECT
    month,
    total_vol_mn,
    p2p_vol_mn,
    p2m_vol_mn,

    ROUND(
        p2p_vol_mn * 100.0 / total_vol_mn,
        2
    ) AS p2p_share_pct,

    ROUND(
        p2m_vol_mn * 100.0 / total_vol_mn,
        2
    ) AS p2m_share_pct

FROM upi_p2p_p2m

ORDER BY month;
