/* =========================================================
   UPI PAYMENT ECOSYSTEM ANALYSIS
   PostgreSQL SQL File
   ========================================================= */


/* =========================================================
   1. CREATE TABLES
   ========================================================= */

CREATE TABLE upi_monthly (
    month DATE,
    bank_live INT,
    volume_mn NUMERIC(12,2),
    value_cr NUMERIC(15,2)
);

CREATE TABLE upi_monthly_2024 (
    month DATE,
    volume_mn NUMERIC(12,2),
    avg_daily_vol_mn NUMERIC(10,2)
);

CREATE TABLE upi_apps (
    app_name VARCHAR(100),
    volume_mn NUMERIC(12,2),
    value_cr NUMERIC(15,2),
    month INTEGER,
    year INTEGER
);

CREATE TABLE upi_p2p_p2m (
    month DATE,
    total_vol_mn NUMERIC(12,2),
    total_val_cr NUMERIC(12,2),
    p2p_vol_mn NUMERIC(12,2),
    p2p_val_cr NUMERIC(12,2),
    p2m_vol_mn NUMERIC(12,2),
    p2m_val_cr NUMERIC(12,2)
);

CREATE TABLE imps_monthly (
    month DATE,
    volume_mn NUMERIC(12,2),
    avg_daily_vol_mn NUMERIC(10,2)
);


/* =========================================================
   2. TABLE ROW COUNT CHECK
   ========================================================= */

SELECT 'upi_monthly' AS table_name, COUNT(*) AS rows
FROM upi_monthly

UNION ALL

SELECT 'upi_monthly_2024', COUNT(*)
FROM upi_monthly_2024

UNION ALL

SELECT 'upi_apps', COUNT(*)
FROM upi_apps

UNION ALL

SELECT 'upi_p2p_p2m', COUNT(*)
FROM upi_p2p_p2m

UNION ALL

SELECT 'imps_monthly', COUNT(*)
FROM imps_monthly;
