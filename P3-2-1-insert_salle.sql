CREATE FUNCTION gds.insert_salle(un_nom character varying(250),un_nb_personnes_max integer) 
RETURNS salle AS $$

UPDATE salle
SET un_nom = gds.insert_salle.un_nom
SET un_nb_personnes_max = gds.insert_salle.un_nb_personnes_max --faux
RETURNING salle;
$$ LANGUAGE SQL;
