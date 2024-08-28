SELECT
    patient.name || ' ' || patient.last_name || ' , atendido por el doctor ' || doctors.name || ' ' || doctors.last_name AS Resum_info,
    appointment.date_firt AS fecha
FROM
    appointment
JOIN
    patient ON appointment.id_patient = patient.id_patient
JOIN
    doctors ON appointment.id_doctors = doctors.id_doctors;
