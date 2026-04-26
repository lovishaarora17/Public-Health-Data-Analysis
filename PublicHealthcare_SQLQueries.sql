-- ============================================
-- 📊 PUBLIC HEALTH DATA ANALYSIS - SQL QUERIES
-- ============================================

USE healthcare_db;

-- ============================================
-- 🔹 1. BASIC DATA OVERVIEW
-- ============================================

-- View sample data
SELECT * 
FROM public_health_data
LIMIT 100;

-- Total number of records
SELECT COUNT(*) AS total_records
FROM public_health_data;


-- ============================================
-- 🔹 2. MONTHLY TRENDS
-- ============================================

-- Cases per month
SELECT 
    onset_month, 
    COUNT(*) AS total_cases
FROM public_health_data
GROUP BY onset_month
ORDER BY total_cases DESC;

-- Average transmission rate per month
SELECT 
    onset_month, 
    AVG(transmission_rate) AS avg_transmission_rate
FROM public_health_data
GROUP BY onset_month;


-- ============================================
-- 🔹 3. ENVIRONMENTAL ANALYSIS
-- ============================================

-- Environmental trends over time
SELECT 
    onset_month,
    AVG(aqi) AS avg_aqi,
    AVG(temperature) AS avg_temperature,
    AVG(humidity) AS avg_humidity
FROM public_health_data
GROUP BY onset_month;

-- AQI vs transmission
SELECT 
    aqi,
    AVG(transmission_rate) AS avg_transmission
FROM public_health_data
GROUP BY aqi;


-- ============================================
-- 🔹 4. VACCINATION & SEVERITY
-- ============================================

-- Vaccination vs disease severity
SELECT 
    vaccination_status,
    disease_severity,
    COUNT(*) AS total_cases
FROM public_health_data
GROUP BY vaccination_status, disease_severity
ORDER BY vaccination_status;

-- Vaccination distribution by location
SELECT 
    location,
    AVG(vaccination_status) AS avg_vaccination_rate
FROM public_health_data
GROUP BY location;


-- ============================================
-- 🔹 5. DEMOGRAPHIC ANALYSIS
-- ============================================

-- Gender vs disease severity
SELECT 
    gender,
    disease_severity,
    COUNT(*) AS total_cases
FROM public_health_data
GROUP BY gender, disease_severity;

-- Social activity distribution
SELECT 
    social_activity,
    COUNT(*) AS total_cases
FROM public_health_data
GROUP BY social_activity;


-- ============================================
-- 🔹 6. RISK SCORE ANALYSIS
-- ============================================

-- Average risk score by severity
SELECT 
    disease_severity,
    AVG(risk_score) AS avg_risk_score
FROM public_health_data
GROUP BY disease_severity;

-- Risk score vs transmission rate
SELECT 
    risk_score,
    AVG(transmission_rate) AS avg_transmission_rate
FROM public_health_data
GROUP BY risk_score
ORDER BY risk_score;

-- Risk score distribution
SELECT 
    risk_score,
    COUNT(*) AS frequency
FROM public_health_data
GROUP BY risk_score
ORDER BY risk_score;


-- ============================================
-- 🔹 7. HEALTH SYSTEM ANALYSIS
-- ============================================

-- Resource utilization over time
SELECT 
    onset_month,
    AVG(resource_utilization) AS avg_resource_utilization
FROM public_health_data
GROUP BY onset_month;

-- Hospital capacity vs mortality
SELECT 
    hospital_capacity,
    AVG(mortality_rate) AS avg_mortality
FROM public_health_data
GROUP BY hospital_capacity;


-- ============================================
-- 🔹 8. COMPLIANCE & TRANSMISSION
-- ============================================

-- Compliance vs transmission
SELECT 
    compliance_with_health_guidelines,
    COUNT(*) AS total_cases,
    AVG(transmission_rate) AS avg_transmission_rate
FROM public_health_data
GROUP BY compliance_with_health_guidelines;


-- ============================================
-- 🔹 END OF FILE
-- ============================================