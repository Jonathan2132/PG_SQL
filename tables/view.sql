CREATE VIEW info_Resum as
SELECT  appointment.id_appointment, patient.name ||' '|| patient.last_name ||' '|| ' , atendido por el doctor ' ||' '||  doctors.name ||' '|| doctors.last_name as Resum_info, appointment.date_firt as fecha from  appointment
JOIN patient ON appointment.id_patient = patient.id_patient
JOIN doctors ON appointment.id_doctors = doctors.id_doctors;