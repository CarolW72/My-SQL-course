SELECT
    ps.PatientId
    , ps.Hospital
    , ps.Ward
    , ps.AdmittedDate
    , ps.DischargeDate  
    , DATEADD(WEEK, -2, ps.AdmittedDate) AS ReminderDate
    , DATEDIFF (DAY, ps.AdmittedDate, ps.DischargeDate) AS LengthOfStay
    , ps.Tariff
    , ps.Ethnicity
FROM PatientStay ps
 WHERE ps.Hospital IN ('PRUH', 'Oxleas')
 AND ps.Ward LIKE '%Surgery'
 AND ps.AdmittedDate BETWEEN '2024-02-27' AND '2024-03-01'
 