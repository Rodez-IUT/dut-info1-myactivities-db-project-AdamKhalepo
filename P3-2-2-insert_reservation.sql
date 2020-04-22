CREATE FUNCTION gds.insert_reservation(une_date_debut timestamp without time zone,une_date_fin timestamp without time zone,un_nom_de_salle character varying(250)) RETURNS reservation AS $$

INSERT INTO reservation (une_date_debut, une_date_fin, un_nom_de_salle)
	VALUES	
	(nextval('gds.reservation_seq'),now(),now(),un_nom_de_salle); --modifier un_nom_de_salle, mettre autre chose car faux
	RETURNING reservation;
$$ LANGUAGE SQL;
