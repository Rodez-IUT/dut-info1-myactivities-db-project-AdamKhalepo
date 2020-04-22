CREATE VIEW gds.vue_reservations AS
    SELECT 
    gds.insert_salle.id AS id_salle,
    gds.insert_salle.un_nom AS nom_salle,
    gds.insert_reservation.une_date_debut AS debut_reservation,
    gds.insert_reservation.une_date_fin AS fin_reservation
    FROM gds.insert_salle
    JOIN gds.insert_reservation
    ON un_nom = un_nom_de_salle;

    ORDER BY un_nom, une_date_debut ASC;