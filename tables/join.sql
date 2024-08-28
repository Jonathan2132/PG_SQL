SELECT *
FROM appointment
JOIN patient ON appointment.id_patient = patient.id_patient;


SELECT *
FROM appointment
JOIN patient ON appointment.id_patient = patient.id_patient
JOIN doctors ON appointment.id_doctors = doctors.id_doctors;

-- no se usa la comilla tampoco 