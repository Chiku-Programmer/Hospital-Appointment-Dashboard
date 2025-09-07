-- Here are the SQL queries to analyze the scheduling system:

-- 1. Peak Appointment Hours
SELECT HOUR(AppointmentDateTime) AS Hour, COUNT(*) AS AppointmentCount
FROM appointment
GROUP BY HOUR(AppointmentDateTime)
ORDER BY AppointmentCount DESC;
-- 2. Patients with Recurring Cancellations
SELECT p.PatientID, pt.FullName, COUNT(*) AS CancellationCount
FROM appointment p
JOIN patients pt ON p.PatientID = pt.PatientID
WHERE p.Status = 'Cancelled'
GROUP BY p.PatientID, pt.FullName
HAVING COUNT(*) > 2;
-- 3. Doctor Availability vs. Actual Appointments
SELECT d.DoctorID, d.FullName, d.AvailableSlotsPerDay, COUNT(a.AppointmentID) AS ActualAppointments
FROM doctors d
LEFT JOIN appointment a ON d.DoctorID = a.DoctorID
GROUP BY d.DoctorID, d.FullName, d.AvailableSlotsPerDay;
-- 4. Average Wait Time per Department
SELECT Department, 
       AVG(TIMESTAMPDIFF(MINUTE, BookingDateTime, AppointmentDateTime)) AS AvgWaitTimeMins
FROM appointment
WHERE Status = 'Completed'
GROUP BY Department;
-- 5. No-Show Rate by Patient
SELECT p.PatientID, pt.FullName,
       COUNT(*) AS TotalAppointments,
       SUM(CASE WHEN a.Status = 'No Show' THEN 1 ELSE 0 END) AS NoShows,
       ROUND(SUM(CASE WHEN a.Status = 'No Show' THEN 1 ELSE 0 END)*100.0 / COUNT(*), 2) AS NoShowRate
FROM appointment a
JOIN patients pt ON a.PatientID = pt.PatientID
GROUP BY p.PatientID, pt.FullName;
-- 6. Top Departments by Appointment Volume
SELECT Department, COUNT(*) AS AppointmentCount
FROM appointment
GROUP BY Department
ORDER BY AppointmentCount DESC;
-- 7. Appointment Distribution by Payment Type
SELECT PaymentType, COUNT(*) AS Count
FROM appointment
GROUP BY PaymentType;
-- 8. First-time vs Repeat Visit Analysis
SELECT IsFirstVisit, COUNT(*) AS VisitCount
FROM appointment
GROUP BY IsFirstVisit;
-- 9. Gender-wise Appointment Count
SELECT pt.Gender, COUNT(*) AS TotalAppointments
FROM appointment a
JOIN patients pt ON a.PatientID = pt.PatientID
GROUP BY pt.Gender;
-- 10. Cancellation Reasons Breakdown
SELECT CancellationReason, COUNT(*) AS CancellationCount
FROM appointment
WHERE Status = 'Cancelled'
GROUP BY CancellationReason
ORDER BY CancellationCount DESC;
