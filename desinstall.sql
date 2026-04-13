/*---------- SCRIPT DE DESINSTALLATION --------------------*/ 

SPOOL "C:\temp\PRJ_PISE_SOIDIKI_CRISTOVAO_desinstall.log"


/* Suppression des synonymes pour chaque agence */
connect LCPPARIS05/LCPPARIS05

DROP SYNONYM Client;
DROP SYNONYM Agence_LCP;
DROP SYNONYM Contrat;
DROP SYNONYM Type_Contrat;
DROP SYNONYM Statut_Juridique_Client;
DROP SYNONYM Emprunt_Contrat;
DROP SYNONYM Conditions_Amortissement;
DROP SYNONYM Compte_Bancaire;
DROP SYNONYM Chequier;
DROP SYNONYM Infos_Etudiant_Client;
DROP SYNONYM Type_Compte;
DROP SYNONYM Carte_Bancaire;
DROP SYNONYM Reseau_Carte;
DROP SYNONYM Type_Carte;
DROP SYNONYM Referentiel_Carte;
DROP SYNONYM Moyen_de_Paiement;
DROP SYNONYM Operation_Bancaire;
DROP SYNONYM Type_Operation;
DROP SYNONYM Statut_Operation;
DROP SYNONYM Versement_Epargne_Operation;
DROP SYNONYM Produit_Epargne;
DROP SYNONYM Type_Versement;
DROP SYNONYM Periodicite_Versement;
DROP SYNONYM Contrat_Produit_Epargne;
DROP SYNONYM Reglement_Echeance_Operation;


connect LCPPARIS13/LCPPARIS13

DROP SYNONYM Client;
DROP SYNONYM Agence_LCP;
DROP SYNONYM Contrat;
DROP SYNONYM Type_Contrat;
DROP SYNONYM Statut_Juridique_Client;
DROP SYNONYM Emprunt_Contrat;
DROP SYNONYM Conditions_Amortissement;
DROP SYNONYM Compte_Bancaire;
DROP SYNONYM Chequier;
DROP SYNONYM Infos_Etudiant_Client;
DROP SYNONYM Type_Compte;
DROP SYNONYM Carte_Bancaire;
DROP SYNONYM Reseau_Carte;
DROP SYNONYM Type_Carte;
DROP SYNONYM Referentiel_Carte;
DROP SYNONYM Moyen_de_Paiement;
DROP SYNONYM Operation_Bancaire;
DROP SYNONYM Type_Operation;
DROP SYNONYM Statut_Operation;
DROP SYNONYM Versement_Epargne_Operation;
DROP SYNONYM Produit_Epargne;
DROP SYNONYM Type_Versement;
DROP SYNONYM Periodicite_Versement;
DROP SYNONYM Contrat_Produit_Epargne;
DROP SYNONYM Reglement_Echeance_Operation;


connect LCPMONTROUGE/LCPMONTROUGE

DROP SYNONYM Client;
DROP SYNONYM Agence_LCP;
DROP SYNONYM Contrat;
DROP SYNONYM Type_Contrat;
DROP SYNONYM Statut_Juridique_Client;
DROP SYNONYM Emprunt_Contrat;
DROP SYNONYM Conditions_Amortissement;
DROP SYNONYM Compte_Bancaire;
DROP SYNONYM Chequier;
DROP SYNONYM Infos_Etudiant_Client;
DROP SYNONYM Type_Compte;
DROP SYNONYM Carte_Bancaire;
DROP SYNONYM Reseau_Carte;
DROP SYNONYM Type_Carte;
DROP SYNONYM Referentiel_Carte;
DROP SYNONYM Moyen_de_Paiement;
DROP SYNONYM Operation_Bancaire;
DROP SYNONYM Type_Operation;
DROP SYNONYM Statut_Operation;
DROP SYNONYM Versement_Epargne_Operation;
DROP SYNONYM Produit_Epargne;
DROP SYNONYM Type_Versement;
DROP SYNONYM Periodicite_Versement;
DROP SYNONYM Contrat_Produit_Epargne;
DROP SYNONYM Reglement_Echeance_Operation;

connect LCP/LCP

DROP INDEX index_client_LCP; 

/* Suppression des contraintes de clés étrangères */
ALTER TABLE Client DROP CONSTRAINT client_FK;
ALTER TABLE Infos_Etudiant_Client DROP CONSTRAINT infosetudiant_FK;
ALTER TABLE Compte_Bancaire DROP CONSTRAINT comptebancaire_FK_1;
ALTER TABLE Compte_Bancaire DROP CONSTRAINT comptebancaire_FK_2;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_FK_1;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_FK_2;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_FK_3;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_FK_4;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_FK_5;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_FK_6;
ALTER TABLE Carte_Bancaire DROP CONSTRAINT cartebancaire_FK_1;
ALTER TABLE Carte_Bancaire DROP CONSTRAINT cartebancaire_FK_2;
ALTER TABLE Carte_Bancaire DROP CONSTRAINT cartebancaire_FK_3;
ALTER TABLE Carte_Bancaire DROP CONSTRAINT cartebancaire_FK_4;
ALTER TABLE Referentiel_Carte DROP CONSTRAINT refcarte_FK;
ALTER TABLE Chequier DROP CONSTRAINT cheque_FK_1;
ALTER TABLE Chequier DROP CONSTRAINT cheque_FK_2;
ALTER TABLE Chequier DROP CONSTRAINT cheque_FK_3;
ALTER TABLE Contrat DROP CONSTRAINT contrat_FK_1;
ALTER TABLE Contrat DROP CONSTRAINT contrat_FK_2;
ALTER TABLE Contrat DROP CONSTRAINT contrat_FK_3;
ALTER TABLE Versement_Epargne_Operation DROP CONSTRAINT versement_epargne_FK_1;
ALTER TABLE Versement_Epargne_Operation DROP CONSTRAINT versement_epargne_FK_2;
ALTER TABLE Versement_Epargne_Operation DROP CONSTRAINT versement_epargne_FK_3;
ALTER TABLE Versement_Epargne_Operation DROP CONSTRAINT versement_epargne_FK_4;
ALTER TABLE Emprunt_Contrat DROP CONSTRAINT emprunt_FK_1;
ALTER TABLE Emprunt_Contrat DROP CONSTRAINT emprunt_FK_2;
ALTER TABLE Contrat_Produit_Epargne DROP CONSTRAINT contratproduitepargne_FK_1;
ALTER TABLE Contrat_Produit_Epargne DROP CONSTRAINT contratproduitepargne_FK_2;
ALTER TABLE Reglement_Echeance_Operation DROP CONSTRAINT reg_echeance_FK_1;
ALTER TABLE Reglement_Echeance_Operation DROP CONSTRAINT reg_echeance_FK_2;


/* Suppression des contraintes de clés primaires */

ALTER TABLE Agence_LCP DROP CONSTRAINT agence_lcp_PK;
ALTER TABLE Client DROP CONSTRAINT client_PK;
ALTER TABLE Infos_Etudiant_Client DROP CONSTRAINT infosetudiant_PK;
ALTER TABLE Compte_Bancaire DROP CONSTRAINT comptebancaire_PK;
ALTER TABLE Type_Compte DROP CONSTRAINT typecompte_PK;
ALTER TABLE Operation_Bancaire DROP CONSTRAINT operationbancaire_PK;
ALTER TABLE Statut_Operation DROP CONSTRAINT statutoperation_PK;
ALTER TABLE Type_Operation DROP CONSTRAINT typeoperation_PK;
ALTER TABLE Moyen_de_Paiement DROP CONSTRAINT moyenpaiement_PK;
ALTER TABLE Carte_Bancaire DROP CONSTRAINT cartebancaire_PK;
ALTER TABLE Reseau_Carte DROP CONSTRAINT reseaucarte_PK;
ALTER TABLE Type_Carte DROP CONSTRAINT typecarte_PK;
ALTER TABLE Referentiel_Carte DROP CONSTRAINT referentielcarte_PK;
ALTER TABLE Chequier DROP CONSTRAINT chequier_PK;
ALTER TABLE Contrat DROP CONSTRAINT contrat_PK;
ALTER TABLE Statut_Juridique_Client DROP CONSTRAINT statutjuridique_PK;
ALTER TABLE Type_Contrat DROP CONSTRAINT typecontrat_PK;
ALTER TABLE Produit_Epargne DROP CONSTRAINT produitepargne_PK;
ALTER TABLE Versement_Epargne_Operation DROP CONSTRAINT versement_epargne_PK;
ALTER TABLE Type_Versement DROP CONSTRAINT typeversement_PK;
ALTER TABLE Periodicite_Versement DROP CONSTRAINT periodeversement_PK;
ALTER TABLE Emprunt_Contrat DROP CONSTRAINT emprunt_PK;
ALTER TABLE Conditions_Amortissement DROP CONSTRAINT conditions_amort_PK;
ALTER TABLE Reglement_Echeance_Operation DROP CONSTRAINT reglement_echeance_PK;



/*---------- Suppression des tables ------------*/

DROP TABLE Agence_LCP PURGE;
DROP TABLE Client PURGE;
DROP TABLE Infos_Etudiant_Client PURGE;
DROP TABLE Compte_Bancaire PURGE;
DROP TABLE Type_Compte PURGE;
DROP TABLE Operation_Bancaire PURGE;
DROP TABLE Statut_Operation PURGE;
DROP TABLE Type_Operation PURGE;
DROP TABLE Moyen_de_Paiement PURGE;
DROP TABLE Carte_Bancaire PURGE;
DROP TABLE Reseau_Carte PURGE;
DROP TABLE Type_Carte PURGE;
DROP TABLE Referentiel_Carte PURGE;
DROP TABLE Chequier PURGE;
DROP TABLE Contrat PURGE;
DROP TABLE Statut_Juridique_Client PURGE;
DROP TABLE Type_Contrat PURGE;
DROP TABLE Produit_Epargne PURGE;
DROP TABLE Versement_Epargne_Operation PURGE;
DROP TABLE Type_Versement PURGE;
DROP TABLE Periodicite_Versement PURGE;
DROP TABLE Emprunt_Contrat PURGE;
DROP TABLE Conditions_Amortissement PURGE;
DROP TABLE Contrat_Produit_Epargne PURGE;
DROP TABLE Reglement_Echeance_Operation PURGE;


/* Suppression des séquences */

DROP SEQUENCE seq_idclient;
DROP SEQUENCE seq_numetudiant;
DROP SEQUENCE seq_refoperation;
DROP SEQUENCE seq_numero_carte;
DROP SEQUENCE seq_numerocheque;
DROP SEQUENCE seq_numcontrat;
DROP SEQUENCE seq_idemprunt;
DROP SEQUENCE seq_num_compte;
DROP SEQUENCE seq_idconditions;
DROP SEQUENCE seq_cle_rib;
DROP SEQUENCE seq_idversementepargne; 
DROP SEQUENCE seq_reglementecheance; 

connect system/Pise2024*

/* Suppression des schémas */

DROP USER LCPMONTROUGE CASCADE;
DROP USER LCPPARIS05 CASCADE;
DROP USER LCPPARIS13 CASCADE;
DROP USER LCP CASCADE;

/* Suppression des tablespaces */

DROP TABLESPACE DATA_LCP INCLUDING CONTENTS AND DATAFILES;
DROP TABLESPACE INDEX_LCP INCLUDING CONTENTS AND DATAFILES;

exit;


SPOOL OFF; 
