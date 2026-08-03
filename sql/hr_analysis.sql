-- =========================================
-- HR ANALYTICS DASHBOARD
-- =========================================

-- =========================================
-- 1. DATA VALIDATION
-- =========================================

SELECT COUNT(*) AS total_employees
FROM employees;

SELECT
    COUNT(*) FILTER (WHERE department IS NULL) AS missing_department,
    COUNT(*) FILTER (WHERE job_role IS NULL) AS missing_job_role,
    COUNT(*) FILTER (WHERE monthly_income IS NULL) AS missing_income
FROM employees;

-- =========================================
-- 2. EXECUTIVE KPIs
-- =========================================

SELECT
    COUNT(*) AS total_employees,
    SUM(attrition_flag) AS employees_left,
    ROUND(100.0 * SUM(attrition_flag) / COUNT(*), 2) AS attrition_rate,
    ROUND(AVG(monthly_income), 2) AS average_salary,
    ROUND(AVG(years_at_company), 2) AS average_tenure
FROM employees;