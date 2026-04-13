/* SCRIPT DE SAISIE */

SPOOL "C:\temp\saisie.log"

/* TABLE STATUT_OPERATION */ 
INSERT INTO STATUT_OPERATION (id_statutoperation, libelle_statutoperation) VALUES (1, 'En Cours');
INSERT INTO STATUT_OPERATION (id_statutoperation, libelle_statutoperation) VALUES (2, 'Realisee');



/* TABLE TYPE_OPERATION */ 

INSERT INTO TYPE_OPERATION (id_typeoperation, libelle_typeoperation) VALUES (1, 'Retrait de liquidite');
INSERT INTO TYPE_OPERATION (id_typeoperation, libelle_typeoperation) VALUES (2, 'Virement');
INSERT INTO TYPE_OPERATION (id_typeoperation, libelle_typeoperation) VALUES (3, 'Prelevement');
INSERT INTO TYPE_OPERATION (id_typeoperation, libelle_typeoperation) VALUES (4, 'Paiement');

/* TABLE TYPE_COMPTE */
INSERT INTO TYPE_COMPTE (id_typecompte, libelle_typecompte) VALUES (1, 'Compte courant/cheque'); 
INSERT INTO TYPE_COMPTE (id_typecompte, libelle_typecompte) VALUES (2, 'Compte d''epargne'); 

/* TABLE RESEAU_CARTE */ 
INSERT INTO RESEAU_CARTE(id_reseaucarte, libelle_reseaucarte) VALUES (1, 'Visa'); 
INSERT INTO RESEAU_CARTE(id_reseaucarte, libelle_reseaucarte) VALUES (2, 'MasterCard'); 


/* TABLE REFERENTIEL_CARTE */
INSERT INTO REFERENTIEL_CARTE (id_referentiel_carte, Cotisation_Annuelle, Plafond_Global_Paiement, Periode_Plafond_Paiement, 
Plafond_Retrait_Etranger, Plafond_Retrait_France, Periode_Plafond_Global_Retrait) 
VALUES (1, 46, 2000, '30 jours', 100, 500, '7 jours');

INSERT INTO REFERENTIEL_CARTE (id_referentiel_carte, Cotisation_Annuelle, Plafond_Global_Paiement, Periode_Plafond_Paiement, 
Plafond_Retrait_Etranger, Plafond_Retrait_France, Periode_Plafond_Global_Retrait) 
VALUES (2, 135, 8000, '30 jours', 6100, 500, '7 jours');

INSERT INTO REFERENTIEL_CARTE (id_referentiel_carte, Cotisation_Annuelle, Plafond_Global_Paiement, Periode_Plafond_Paiement, 
Plafond_Retrait_Etranger, Plafond_Retrait_France, Periode_Plafond_Global_Retrait) 
VALUES (3, 330, 8000, '30 jours', 15000, 15000, '7 jours');

/* TABLE TYPE_CARTE */ 

INSERT INTO TYPE_CARTE (id_typecarte, libelle_typecarte) VALUES (1, 'Classique'); 
INSERT INTO TYPE_CARTE (id_typecarte, libelle_typecarte) VALUES (2, 'Premier');
INSERT INTO TYPE_CARTE (id_typecarte, libelle_typecarte) VALUES (3, 'Infinite');

/* TABLE TYPE_VERSEMENT */

INSERT INTO TYPE_VERSEMENT (id_typeversement,libelle_typeversement) 
VALUES (1, 'Periodique'); 

INSERT INTO TYPE_VERSEMENT (id_typeversement,libelle_typeversement) 
VALUES (2, 'Ponctuel'); 

/* TABLE PERIODICITE_VERSEMENT */

INSERT INTO PERIODICITE_VERSEMENT (id_periodeversement, libelle_periodeversement)
VALUES (1, 'Mensuelle');

INSERT INTO PERIODICITE_VERSEMENT (id_periodeversement, libelle_periodeversement)
VALUES (2, 'Semestrielle');

INSERT INTO PERIODICITE_VERSEMENT (id_periodeversement, libelle_periodeversement)
VALUES (3, 'Annuelle');


/* TABLE STATUT_JURIDIQUE_CLIENT */

INSERT INTO STATUT_JURIDIQUE_CLIENT (id_statutjuridique, libelle_statutjuridique)
VALUES (1, 'Titulaire');

INSERT INTO STATUT_JURIDIQUE_CLIENT (id_statutjuridique, libelle_statutjuridique)
VALUES (2, 'Beneficiaire'); 

INSERT INTO STATUT_JURIDIQUE_CLIENT (id_statutjuridique, libelle_statutjuridique)
VALUES (3, 'Emprunteur');

/* TABLE TYPE_CONTRAT */
INSERT INTO TYPE_CONTRAT (id_typecontrat,libelle_typecontrat) VALUES (1, 'Compte à vue'); 
INSERT INTO TYPE_CONTRAT (id_typecontrat,libelle_typecontrat) VALUES (2, 'Compte sur livret'); 
INSERT INTO TYPE_CONTRAT (id_typecontrat,libelle_typecontrat) VALUES (3, 'Compte d''epargne'); 
INSERT INTO TYPE_CONTRAT (id_typecontrat,libelle_typecontrat) VALUES (4, 'Compte-titres'); 
INSERT INTO TYPE_CONTRAT (id_typecontrat,libelle_typecontrat) VALUES (5, 'Pret etude'); 

/* TABLE PRODUIT_EPARGNE */

INSERT INTO PRODUIT_EPARGNE (id_Produit_Epargne, libelle_Produit_Epargne)
VALUES (1, 'Assurance Vie');

INSERT INTO PRODUIT_EPARGNE (id_Produit_Epargne, libelle_Produit_Epargne)
VALUES (2, 'Livret A');

INSERT INTO PRODUIT_EPARGNE (id_Produit_Epargne, libelle_Produit_Epargne)
VALUES (3, 'Livret Developpement Durable');

INSERT INTO PRODUIT_EPARGNE (id_Produit_Epargne, libelle_Produit_Epargne)
VALUES (4, 'Epargne logement');

INSERT INTO PRODUIT_EPARGNE (id_Produit_Epargne, libelle_Produit_Epargne)
VALUES (5, 'Epargne Retraite');

/* TABLE AGENCE_LCP */

INSERT INTO AGENCE_LCP (code_agence, nom_agence, code_banque, nom_banque, 
code_pays, cle_ctrl, BIC)
VALUES (00225, 'LCP PARIS13', 30005, 'Le Credit Parisien', 'FR', 77, 'LCPAFRTTXXX');

INSERT INTO AGENCE_LCP (code_agence, nom_agence, code_banque, nom_banque, 
code_pays, cle_ctrl, BIC)
VALUES (00012, 'LCP PARIS05', 30005, 'Le Credit Parisien', 'FR', 77, 'LCPAFRTTXXX');

INSERT INTO AGENCE_LCP (code_agence, nom_agence, code_banque, nom_banque, 
code_pays, cle_ctrl, BIC)
VALUES (00054, 'LCP MONTROUGE', 30005, 'Le Credit Parisien', 'FR', 77, 'LCPAFRTTXXX');

/* TABLE MOYEN_DE_PAIEMENT */

INSERT INTO MOYEN_DE_PAIEMENT (id_moyendepaiement, libelle_moyendepaiement)
VALUES (1, 'Carte Bancaire'); 

INSERT INTO MOYEN_DE_PAIEMENT (id_moyendepaiement, libelle_moyendepaiement)
VALUES (2, 'Cheque'); 

COMMIT;

/* TABLE CLIENT */

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Lefevbre', 'Antoine', TO_DATE('25/11/1986', 'DD/MM/YYYY'), '31 Quai de la Megisserie, 75012 Paris', NULL, 0112345678, 0778901234, 'Antoine.Lefevbre@gmail.com', 00012);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Martin', 'Camille', TO_DATE('09/01/1986', 'DD/MM/YYYY'), '8 Rue de la Fontaine, 69002 Lyon', '18 rue de la Maladrerie, 75018 Paris', 0134567890, 0678901234, 'Camille.Martin@outlook.com', 00225);


INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Dubois', 'Lea', TO_DATE('09/01/2001', 'DD/MM/YYYY'), '45 Avenue Victor Hugo, 31000 Toulouse', '10 rue Ponce, 92049 Montrouge', 0112345678, 0623456789, 'Lea.Dubois@hotmail.com', 00054) ;


INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Lambert', 'Hugo', TO_DATE('19/01/1970', 'DD/MM/YYYY'), '12 Rue Victor Hugo, 94100 Saint-Maur-des-Fosses', NULL, 0123456789, 0623456789, 'Hugo.Lambert@yahoo.com', 00225) ;


INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Laurent', 'Manon', TO_DATE('24/02/1998', 'DD/MM/YYYY'), '24 Avenue des Pres, 92130 Issy-les-Moulineaux', NULL, 0156789012, 0690123456, 'Manon.Laurent@laposte.net', 00225) ;


INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Roux', 'Lucas', TO_DATE('03/02/1998', 'DD/MM/YYYY'), '6 Rue de Rivoli, 75001 Paris', NULL, 0155678902, 0701234567, 'Lucas.Roux@gmail.com', 00012) ;

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Lefevbre', 'Emilie', TO_DATE('18/05/2012', 'DD/MM/YYYY'), '31 Quai de la Megisserie, 75012 Paris', NULL, 0112345678, NULL, 'Antoine.Lefevbre@gmail.com', 00012) ;


INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Moreau', 'Theo', TO_DATE('06/09/1997', 'DD/MM/YYYY'), '15 Rue de la Paix, 94400 Vitry-sur-Seine', NULL, NULL, 0756789012, 'Theo.Moreau@gmail.com', 00054) ;

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Fournier', 'Nathan', TO_DATE('25/11/2000', 'DD/MM/YYYY'), '31 Quai de la Megisserie, 93300 Aubervilliers', NULL, 0112345678, 0778901234, 'Nathan.Fournier@laposte.net', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Dupont', 'Emma', TO_DATE('04/07/1999', 'DD/MM/YYYY'), '5 Rue de Castiglione, 94120 Fontenay-sous-Bois', NULL, 0156789012, 0789012345, 'Emma.Dupont@gmail.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Simon', 'Pierre', TO_DATE('15/01/2001', 'DD/MM/YYYY'), '40 Rue du Bac, 92100 Boulogne-Billancourt', NULL, 0145678901, 0790123456, 'Pierre.Simon@outlook.com', 00012);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Lemoine', 'Charlotte', TO_DATE('24/08/2000', 'DD/MM/YYYY'), '22 Avenue Montaigne, 93370 Montfermeil', NULL, 0134567890, 0678901234, 'Charlotte.Lemoine@hotmail.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Gauthier', 'Mathis', TO_DATE('03/04/1999', 'DD/MM/YYYY'), '3 Place Vendome, 94130 Nogent-sur-Marne', NULL, 0123456789, 0623456789, 'Mathis.Gauthier@yahoo.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Petit', 'Alice', TO_DATE('13/12/2001', 'DD/MM/YYYY'), '11 Rue de la Pepiniere, 92150 Suresnes', NULL, 0123486789, 0645678901, 'Alice.Petit@laposte.net', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Rousseau', 'Louis', TO_DATE('22/06/2000', 'DD/MM/YYYY'), '8 Rue de Sevres, 93320 Pavillons-sous-Bois', NULL, 0112355678, 0612345678, 'Louis.Rousseau@gmail.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Mercier', 'Zoe', TO_DATE('02/02/1999', 'DD/MM/YYYY'), '17 Rue de Grenelle, 94200 Ivry-sur-Seine', NULL, 0145678901, 0790123456, 'Zoe.Mercier@outlook.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Faure', 'Gabriel', TO_DATE('12/10/2001', 'DD/MM/YYYY'), '27 Avenue Marceau, 91360 Villemoisson-sur-Orge', NULL, 0134567890, 0767890123, 'Gabriel.Faure@hotmail.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Faure', 'Lucie', TO_DATE('12/10/2001', 'DD/MM/YYYY'), '27 Avenue Marceau, 91360 Villemoisson-sur-Orge', NULL, 0134567890, 0767890123, 'Lucie.Faure@hotmail.com', 00225);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Guerin', 'Arthur', TO_DATE('30/10/1999', 'DD/MM/YYYY'), '20 Rue Cambon, 92140 Clamart', NULL, 0166789112, 0702234567, 'Arthur.Guerin@laposte.net', 00054);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Durand', 'Nathan', TO_DATE('01/11/1987', 'DD/MM/YYYY'), '18 Rue du Faubourg Saint-Honore, 75008 Paris', NULL, 0134567890, 0678901234, 'Nathan.Durand@yahoo.com', 00012);


INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Garcia', 'Lola', TO_DATE('15/04/1986', 'DD/MM/YYYY'), '16 Rue de la Paix, 75002 Paris', NULL, 0112345678, 0645678901, 'Lola.Garcia@laposte.net', 00012);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Bonnet', 'Matheo', TO_DATE('08/09/1992', 'DD/MM/YYYY'), '5 Rue de Castiglione, 75001 Paris', NULL, 0138567890, 0756789012, 'Matheo.Bonnet@gmail.com', 00012);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Martinez', 'Camille', TO_DATE('03/07/1983', 'DD/MM/YYYY'), '40 Rue du Bac, 75007 Paris', NULL, 0140567890, 0756889012, 'Camille.Martinez@outlook.com', 00012);

INSERT INTO Client (id_client, nom_client, prenom_client, date_nais_client, adr_p_client, adr_temp_client, num_fixe_client, num_portable_client, mail_client, code_agence)
VALUES (seq_idclient.nextval, 'Henry', 'Enzo', TO_DATE('03/06/1993','DD/MM/YYYY'), '22 Avenue Montaigne, 75008 Paris', NULL, 0141567890, 0756899012, 'Enzo.Henry@hotmail.com', 00012);



/* TABLE INFOS_ETUDIANT_CLIENT */

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2021, 'Doctorat', '3eme annee de Doctorat (bac+8)', 8);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2022, 'Doctorat', '2eme annee de Doctorat (bac+7)', 9);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2023, 'Doctorat', '1ere annee de Doctorat (bac+6)', 10);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2022, 'Doctorat', '2eme annee de Doctorat (bac+7)', 11);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2021, 'Doctorat', '3eme annee de Doctorat (bac+8)' , 12);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2021, 'Doctorat', '3eme annee de Doctorat (bac+8)', 13);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2022, 'Doctorat', '2eme annee de Doctorat (bac+7)', 14);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2023, 'Doctorat', '1ere annee de Doctorat (bac+6)', 15);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2022, 'Doctorat', '1ere annee de Doctorat (bac+6)', 16);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2021, 'Doctorat', '3eme annee de Doctorat (bac+_8)', 17);

INSERT INTO Infos_Etudiant_Client (num_etudiant, Annee_academique, Diplome_Prepare, Niveau_Etude, id_client)
VALUES (seq_numetudiant.nextval, 2022, 'Doctorat', '2eme annee de Doctorat (bac+7)', 18);


/* TABLE COMPTE_BANCAIRE */ 

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('09/01/2024', 'DD/MM/YYYY'), 50.00, seq_cle_rib.nextval, 1, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('12/01/2024', 'DD/MM/YYYY'), 100.00, seq_cle_rib.nextval, 2, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('14/01/2024', 'DD/MM/YYYY'), 150.00, seq_cle_rib.nextval, 3, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('14/02/2024', 'DD/MM/YYYY'), 200.00, seq_cle_rib.nextval, 4, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('18/02/2024', 'DD/MM/YYYY'), 100.00, seq_cle_rib.nextval, 5, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('20/02/2024', 'DD/MM/YYYY'), 200.00, seq_cle_rib.nextval, 6, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('11/02/2024', 'DD/MM/YYYY'), 200.00, NULL, 7, 2);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('15/02/2021', 'DD/MM/YYYY'), 300.00, seq_cle_rib.nextval, 8, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('01/03/2022', 'DD/MM/YYYY'), 400.00, seq_cle_rib.nextval, 9, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('23/02/2023', 'DD/MM/YYYY'), 350.00, seq_cle_rib.nextval, 10, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('12/01/2022', 'DD/MM/YYYY'), 1000.00, seq_cle_rib.nextval, 11, 1); 

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('26/01/2021', 'DD/MM/YYYY'), 900.00, seq_cle_rib.nextval, 12, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('19/01/2021', 'DD/MM/YYYY'), 250.00, seq_cle_rib.nextval, 13, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('17/01/2022', 'DD/MM/YYYY'), 450.00, seq_cle_rib.nextval, 14, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('08/01/2023', 'DD/MM/YYYY'), 500.00, seq_cle_rib.nextval, 15, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('09/01/2022', 'DD/MM/YYYY'), 350.00, seq_cle_rib.nextval, 16, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('28/01/2021', 'DD/MM/YYYY'), 750.00, seq_cle_rib.nextval, 17, 1);

INSERT INTO Compte_Bancaire (num_compte, date_ouv_compte, depot_initial, cle_rib, id_client, id_typecompte)
VALUES (seq_num_compte.nextval, TO_DATE('29/01/2022', 'DD/MM/YYYY'), 800.00, seq_cle_rib.nextval, 18, 1);


/* TABLE CARTE_BANCAIRE */

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2024', 'MM/YYYY'), TO_DATE('01/2027', 'MM/YYYY'), 1, 49741234001, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2024', 'MM/YYYY'), TO_DATE('01/2027', 'MM/YYYY'), 1, 49741234002, 2, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2024', 'MM/YYYY'), TO_DATE('01/2027', 'MM/YYYY'), 2, 49741234003, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('02/2024', 'MM/YYYY'), TO_DATE('02/2027', 'MM/YYYY'), 3, 49741234004, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('02/2024', 'MM/YYYY'), TO_DATE('02/2027', 'MM/YYYY'), 2, 49741234005, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('02/2024', 'MM/YYYY'), TO_DATE('02/2027', 'MM/YYYY'), 3, 49741234006, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('02/2024', 'MM/YYYY'), TO_DATE('02/2027', 'MM/YYYY'), 1, 49741234008, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('03/2022', 'MM/YYYY'), TO_DATE('03/2025', 'MM/YYYY'), 1, 49741234009, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('02/2023', 'MM/YYYY'), TO_DATE('02/2026', 'MM/YYYY'), 1, 49741234010, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2022', 'MM/YYYY'), TO_DATE('01/2025', 'MM/YYYY'), 1, 49741234011, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2024', 'MM/YYYY'), TO_DATE('01/2027', 'MM/YYYY'), 1, 49741234012, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2024', 'MM/YYYY'), TO_DATE('01/2027', 'MM/YYYY'), 1, 49741234013, 2, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2022', 'MM/YYYY'), TO_DATE('01/2025', 'MM/YYYY'), 1, 49741234014, 2, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2023', 'MM/YYYY'), TO_DATE('01/2026', 'MM/YYYY'), 1, 49741234015, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2022', 'MM/YYYY'), TO_DATE('01/2025', 'MM/YYYY'), 1, 49741234016, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2024', 'MM/YYYY'), TO_DATE('01/2027', 'MM/YYYY'), 1, 49741234017, 1, 1);

INSERT INTO Carte_Bancaire (numero_carte, date_debut_validite, date_fin_validite, id_typecarte, num_compte, id_reseaucarte, id_moyendepaiement)
VALUES (seq_numero_carte.nextval, TO_DATE('01/2022', 'MM/YYYY'), TO_DATE('01/2025', 'MM/YYYY'), 1, 49741234018, 1, 1);

/* TABLE CHEQUIER */

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234012, 2, 12);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234012, 2, 12);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234008, 2, 8);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234006, 2, 6);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234001, 2, 1);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234001, 2, 1);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234001, 2, 1);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234001, 2, 1);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234001, 2, 1);

INSERT INTO Chequier(numero_cheque, num_compte, id_moyendepaiement,id_client)
VALUES (seq_numerocheque.nextval, 49741234001, 2, 1);

/* TABLE OPERATION_BANCAIRE */ 

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Virement compte epargne enfant', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 900.00, NULL, 1, 49741234001, 2, NULL, NULL, NULL );

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Paiement carte', TO_DATE('2024-03-04', 'YYYY-MM-DD'), TO_DATE('2024-03-04', 'YYYY-MM-DD'), 50.00, NULL, 2, 49741234002, 4, 1,  NULL, 4974123456781112);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Retrait DAB', TO_DATE('2024-03-04', 'YYYY-MM-DD'), TO_DATE('2024-03-04', 'YYYY-MM-DD'), 100.00, NULL, 1, 49741234003, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Virement vers compte epargne enfant', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), NULL, 900.00, 1, 49741234004, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Paiement carte supermarche', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 45.80, NULL, 2, 49741234005, 4, 1, NULL, 4974123456781115);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Loyer', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 200.00, NULL, 2, 49741234006, 2, 2, 4, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Caution', TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'), 800.00, NULL, 2, 49741234008, 2, 2, 3, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Paiement par carte restaurant', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-09', 'YYYY-MM-DD'), 120.00, NULL, 1, 49741234009, 4, 1, NULL, 4974123456781118);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Paiement Achat Fnac', TO_DATE('2024-02-28', 'YYYY-MM-DD'), TO_DATE('2024-02-28', 'YYYY-MM-DD'), 500.00, NULL, 2, 49741234001, 4, 1, NULL, 4974123456781111);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Retrait DAB', TO_DATE('2024-02-26', 'YYYY-MM-DD'), TO_DATE('2024-02-26', 'YYYY-MM-DD'), 200.00, NULL, 2, 49741234002, 1, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-02-27', 'YYYY-MM-DD'), TO_DATE('2024-02-27', 'YYYY-MM-DD'), 100.00, NULL, 2, 49741234008, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-01', 'YYYY-MM-DD'), TO_DATE('2024-03-01', 'YYYY-MM-DD'), 100.00, NULL, 2, 49741234003, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-05', 'YYYY-MM-DD'), TO_DATE('2024-03-05', 'YYYY-MM-DD'), 200.00, NULL, 2, 49741234001, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-04', 'YYYY-MM-DD'), TO_DATE('2024-03-04', 'YYYY-MM-DD'), 20.00, NULL, 2, 49741234001, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-07', 'YYYY-MM-DD'), TO_DATE('2024-03-07', 'YYYY-MM-DD'), 120.00, NULL, 2, 49741234006, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-08', 'YYYY-MM-DD'), TO_DATE('2024-03-08', 'YYYY-MM-DD'), 70.00, NULL, 2, 49741234001, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-08', 'YYYY-MM-DD'), TO_DATE('2024-03-08', 'YYYY-MM-DD'), 80.00, NULL, 2, 49741234003, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-10', 'YYYY-MM-DD'), TO_DATE('2024-03-10', 'YYYY-MM-DD'), 90.00, NULL, 2, 49741234007, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Versement Epargne', TO_DATE('2024-03-11', 'YYYY-MM-DD'), TO_DATE('2024-03-11', 'YYYY-MM-DD'), 50.00, NULL, 2, 49741234008, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-02-15', 'YYYY-MM-DD'), TO_DATE('2024-02-15', 'YYYY-MM-DD'), 421.24, NULL, 2, 49741234009, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-03-15', 'YYYY-MM-DD'), TO_DATE('2024-03-15', 'YYYY-MM-DD'), 421.24, NULL, 2, 49741234009, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-04-15', 'YYYY-MM-DD'), TO_DATE('2024-04-15', 'YYYY-MM-DD'), 421.24, NULL, 2, 49741234009, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-01-26', 'YYYY-MM-DD'), TO_DATE('2024-01-26', 'YYYY-MM-DD'), 379.12, NULL, 2, 49741234012, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-01-26', 'YYYY-MM-DD'), TO_DATE('2024-01-26', 'YYYY-MM-DD'), 379.12, NULL, 2, 49741234012, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-01-19', 'YYYY-MM-DD'), TO_DATE('2024-01-19', 'YYYY-MM-DD'), 421.24, NULL, 2, 49741234014, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-02-19', 'YYYY-MM-DD'), TO_DATE('2024-02-19', 'YYYY-MM-DD'), 421.24, NULL, 2, 49741234014, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-03-19', 'YYYY-MM-DD'), TO_DATE('2024-03-19', 'YYYY-MM-DD'), 421.24, NULL, 2, 49741234014, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-01-28', 'YYYY-MM-DD'), TO_DATE('2024-01-28', 'YYYY-MM-DD'), 210.62, NULL, 2, 49741234017, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Reglement Emprunt', TO_DATE('2024-02-28', 'YYYY-MM-DD'), TO_DATE('2024-02-28', 'YYYY-MM-DD'), 210.62, NULL, 2, 49741234017, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Prelevement Electricite', TO_DATE('2024-02-12', 'YYYY-MM-DD'), TO_DATE('2024-03-11', 'YYYY-MM-DD'), 50.00, NULL, 2, 49741234005, 3, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Virement epargne', TO_DATE('2024-02-12', 'YYYY-MM-DD'), TO_DATE('2024-02-12', 'YYYY-MM-DD'), 50.00, NULL, 2, 49741234012, 2, NULL, NULL, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Achat Vallee Village', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 150.00, NULL, 2, 49741234012, 4, 2, 1, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Achat Printemps', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 190.00, NULL, 2, 49741234012, 4, 2, 2, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Achat Darty', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 290.00, NULL, 2, 49741234001, 4, 2, 5, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Achat BUT', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 290.00, NULL, 2, 49741234001, 4, 2, 6, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Paiement Supermarche', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 290.00, NULL, 2, 49741234001, 4, 2, 7, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Ecole Voyage Italie', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 400.00, NULL, 2, 49741234001, 4, 2, 8, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'AS Adhesion', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 400.00, NULL, 2, 49741234001, 4, 2, 9, NULL);

INSERT INTO Operation_Bancaire (ref_operation, libelle_operation, date_comptable, date_valeur, montant_debit, montant_credite, id_statutoperation, num_compte, id_typeoperation, id_moyendepaiement, numero_cheque, numero_carte)
VALUES (seq_refoperation.nextval, 'Achat Decathlon', TO_DATE('2024-03-13', 'YYYY-MM-DD'), TO_DATE('2024-03-13', 'YYYY-MM-DD'), 400.00, NULL, 2, 49741234001, 4, 2, 10, NULL);


/* TABLE VERSEMENT_EPARGNE_OPERATION */ 

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241001, 1, 2, 3);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne,  id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241011, 1, 3, 1);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241012, 1, 2, 1);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241013, 1, 2, 2);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241014, 2, 4, null);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241015, 2, 5, null);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241016, 1, 3, 2);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241017, 2, 2, null);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241018, 1, 4, 1);

INSERT INTO Versement_Epargne_Operation (id_versement_epargne, ref_operation, id_typeversement, id_produit_epargne, id_periodeversement)
VALUES (seq_idversementepargne.nextval, 20241019, 1, 5, 2);


/* TABLE CONTRAT */ 


INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Lefevbre', TO_DATE('2024-01-09', 'YYYY-MM-DD'), 1, 1, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Martin', TO_DATE('2024-01-12', 'YYYY-MM-DD'), 2, 1, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Dubois', TO_DATE('2024-01-14', 'YYYY-MM-DD'), 3, 1, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Lambert', TO_DATE('2024-02-01', 'YYYY-MM-DD'), 4, 1, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Laurent', TO_DATE('2024-02-18', 'YYYY-MM-DD'), 5, 1, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Roux', TO_DATE('2024-02-20', 'YYYY-MM-DD'), 6, 1, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Lefevbre', TO_DATE('2024-02-11', 'YYYY-MM-DD'), 7, 3, 2);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Moreau', TO_DATE('2024-02-15', 'YYYY-MM-DD'), 8, 3, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Fournier', TO_DATE('2024-01-12', 'YYYY-MM-DD'), 9, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Dupont', TO_DATE('2024-03-14', 'YYYY-MM-DD'), 10, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Simon', TO_DATE('2024-02-29', 'YYYY-MM-DD'), 11, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Lemoine', TO_DATE('2024-01-24', 'YYYY-MM-DD'), 12, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Gauthier', TO_DATE('2024-01-08', 'YYYY-MM-DD'), 13, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Petit', TO_DATE('2024-02-08', 'YYYY-MM-DD'), 14, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Rousseau', TO_DATE('2024-03-09', 'YYYY-MM-DD'), 15, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Mercier', TO_DATE('2024-03-19', 'YYYY-MM-DD'), 16, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Faure', TO_DATE('2024-02-12', 'YYYY-MM-DD'), 17, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Faure', TO_DATE('2024-02-12', 'YYYY-MM-DD'), 18, 5, 3);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Guerin', TO_DATE('2024-01-19', 'YYYY-MM-DD'), 19, 2, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Durand', TO_DATE('2024-01-20', 'YYYY-MM-DD'), 20, 4, 1);


INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Garcia', TO_DATE('2024-03-01', 'YYYY-MM-DD'), 21, 2, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Bonnet', TO_DATE('2024-03-11', 'YYYY-MM-DD'), 22, 3, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Martinez', TO_DATE('2024-03-12', 'YYYY-MM-DD'), 23, 3, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Henry', TO_DATE('2024-03-14', 'YYYY-MM-DD'), 24, 2, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Durand', TO_DATE('2024-03-15', 'YYYY-MM-DD'), 20, 2, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Guerin', TO_DATE('2024-03-16', 'YYYY-MM-DD'), 19, 3, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Faure', TO_DATE('2024-03-17', 'YYYY-MM-DD'), 18, 3, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Faure', TO_DATE('2024-03-18', 'YYYY-MM-DD'), 17, 3, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Mercier', TO_DATE('2024-03-19', 'YYYY-MM-DD'), 16, 3, 1);

INSERT INTO Contrat (numero_contrat, nom_souscripteur, Date_Souscription, id_client, id_typecontrat, id_statutjuridique)
VALUES (seq_numcontrat.nextval, 'Rousseau', TO_DATE('2024-03-20', 'YYYY-MM-DD'), 15, 2, 1);

/* TABLE CONDITIONS D'AMORTISSEMENT DE L'EMPRUNT */ 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2024-04-15', 'YYYY-MM-DD'), 421.24, 1.05, 9587.51); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2025-03-01', 'YYYY-MM-DD'), 379.12 , 1.05, 9000); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2026-02-23', 'YYYY-MM-DD'), 210.62 , 1.05, 5000); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2025-01-12', 'YYYY-MM-DD'), 842.48 , 1.05, 20000); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2024-04-26', 'YYYY-MM-DD'), 379.12 , 1.05, 18349.32); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2024-04-19', 'YYYY-MM-DD'), 421.24, 1.05, 9174.66); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2025-01-17', 'YYYY-MM-DD'), 463.36, 1.05, 11000); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2026-01-08', 'YYYY-MM-DD'), 842.48, 1.05, 20000); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2025-01-09', 'YYYY-MM-DD'), 210.62, 1.05, 5000); 

INSERT INTO Conditions_Amortissement (id_conditions, type_remboursement, Prochaine_Echeance, Montant_Echeance, Taux_Nominal, Encours)
VALUES (seq_idconditions.nextval, 'Echeances constantes', TO_DATE('2024-01-28', 'YYYY-MM-DD'), 210.62, 1.05, 4587.33);


/* TABLE EMPRUNT_CONTRAT */ 

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2021-02-15', 'YYYY-MM-DD'), TO_DATE('2026-02-15', 'YYYY-MM-DD'), 10000, 5009, 1);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2022-03-01', 'YYYY-MM-DD'), TO_DATE('2027-03-01', 'YYYY-MM-DD'), 9000, 5010, 2);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2023-02-23', 'YYYY-MM-DD'), TO_DATE('2028-02-23', 'YYYY-MM-DD'), 5000, 5011, 3);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2022-01-12', 'YYYY-MM-DD'), TO_DATE('2027-01-12', 'YYYY-MM-DD'), 20000, 5012, 4);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2021-01-26', 'YYYY-MM-DD'), TO_DATE('2026-01-26', 'YYYY-MM-DD'), 20000, 5013, 5);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2021-01-19', 'YYYY-MM-DD'), TO_DATE('2026-01-19', 'YYYY-MM-DD'), 10000, 5014, 6);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2022-01-17', 'YYYY-MM-DD'), TO_DATE('2027-01-17', 'YYYY-MM-DD'), 11000, 5015, 7);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2023-01-08', 'YYYY-MM-DD'), TO_DATE('2028-01-08', 'YYYY-MM-DD'), 20000, 5016, 8);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2022-01-09', 'YYYY-MM-DD'), TO_DATE('2027-01-09', 'YYYY-MM-DD'), 5000, 5017, 9);

INSERT INTO Emprunt_Contrat (id_emprunt, objet_credit, Date_Sousc_Credit, Date_Echeance, Montant_Credit, numero_contrat, id_conditions)
VALUES (seq_idemprunt.nextval, 'Pret Etude', TO_DATE('2021-01-28', 'YYYY-MM-DD'), TO_DATE('2026-01-28', 'YYYY-MM-DD'), 5000, 5018, 10);

/* TABLE REGLEMENT ECHEANCE */ 

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241016, 1);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241017, 2); 

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241018, 3);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241019, 4);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241020, 5);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241021, 6);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241022, 7);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241023, 8);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241024, 9);

INSERT INTO Reglement_Echeance_Operation (id_reglement, ref_operation, id_conditions)
VALUES (seq_reglementecheance.nextval, 20241025, 10);



/* TABLE CONTRAT_PRODUIT_EPARGNE  */


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5019, 3, TO_DATE('2024-03-01',  'YYYY-MM-DD'), 200.00);

INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5022, 4, TO_DATE('2024-03-11',  'YYYY-MM-DD'), 400.00); 


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5023, 1, TO_DATE('2024-03-12',  'YYYY-MM-DD'), 100.00);

INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5022, 2, TO_DATE('2024-03-14',  'YYYY-MM-DD'), 50.00);


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5023, 3, TO_DATE('2024-03-15',  'YYYY-MM-DD'), 250.00);


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5024, 4, TO_DATE('2024-03-16',  'YYYY-MM-DD'), 300.00);


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5025, 5, TO_DATE('2024-03-17',  'YYYY-MM-DD'), 150.00);


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5026, 1, TO_DATE('2024-03-18',  'YYYY-MM-DD'), 275.00);


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5027, 1, TO_DATE('2024-03-19',  'YYYY-MM-DD'), 120.00); 


INSERT INTO Contrat_Produit_Epargne(numero_contrat, id_Produit_Epargne, Date_Versement, Montant_Verse)
VALUES (5028, 2, TO_DATE('2024-03-20',  'YYYY-MM-DD'), 130.00);

COMMIT ; 

SPOOL OFF; 
