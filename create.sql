/*----------------- SCRIPT DE CREATION DE LA BASE DE DONNEES -------------------------------------*/

SPOOL "C:\temp\PRJ_PISE_SOIDIKI_CRISTOVAO_create.log"

/*-------------------- CREATION DU SCHEMA LCP et des schémas des agences----------------------  */

connect system/Pise2024*

CREATE USER LCP IDENTIFIED BY LCP ;
GRANT  connect TO LCP ; 
GRANT  create table TO LCP ;
GRANT  create view TO LCP ;
GRANT  create any index TO LCP ;
GRANT  create synonym TO LCP ;
GRANT  create sequence TO LCP ;

CREATE USER LCPPARIS13 IDENTIFIED BY LCPPARIS13; 
GRANT  connect TO LCPPARIS13 ; 
GRANT  create table TO LCPPARIS13 ;
GRANT  create view TO LCPPARIS13 ;
GRANT  create any index TO LCPPARIS13 ;
GRANT  create synonym TO LCPPARIS13 ;
GRANT  create sequence TO LCPPARIS13 ;

CREATE USER LCPPARIS05 IDENTIFIED BY LCPPARIS05; 
GRANT  connect TO LCPPARIS05 ; 
GRANT  create table TO LCPPARIS05 ;
GRANT  create view TO LCPPARIS05 ;
GRANT  create any index TO LCPPARIS05 ;
GRANT  create synonym TO LCPPARIS05 ;
GRANT  create sequence TO LCPPARIS05 ;

CREATE USER LCPMONTROUGE IDENTIFIED BY LCPMONTROUGE; 
GRANT  connect TO LCPMONTROUGE ; 
GRANT  create table TO LCPMONTROUGE ;
GRANT  create view TO LCPMONTROUGE ;
GRANT  create any index TO LCPMONTROUGE ;
GRANT  create synonym TO LCPMONTROUGE ;
GRANT  create sequence TO LCPMONTROUGE ;

/*-------------------- Création des tablespaces------------------------ */

CREATE TABLESPACE DATA_LCP
    	DATAFILE 'C:/Apps/Oracle/oradata/PISE/DATA_LCP.dbf' SIZE 1 G
    	SEGMENT SPACE MANAGEMENT AUTO;

CREATE TABLESPACE INDEX_LCP
    	DATAFILE 'C:/Apps/Oracle/oradata/PISE/INDEX_LCP.dbf' SIZE 1 G
   		SEGMENT SPACE MANAGEMENT AUTO;
        
/* Attribution au schema LCP d'un tablespace par defaut */

 ALTER USER LCP DEFAULT TABLESPACE DATA_LCP ;
 ALTER USER LCPPARIS05 DEFAULT TABLESPACE DATA_LCP ;
 ALTER USER LCPPARIS13 DEFAULT TABLESPACE DATA_LCP ;
 ALTER USER LCPMONTROUGE DEFAULT TABLESPACE DATA_LCP ;
 
ALTER USER LCP QUOTA UNLIMITED ON DATA_LCP;
ALTER USER LCP QUOTA UNLIMITED ON INDEX_LCP;


/*--------------- Creation des tables -----------------------*/ 

connect LCP/LCP

CREATE TABLE Agence_LCP
(
  code_agence NUMBER NOT NULL,
  nom_agence VARCHAR2(30), 
  code_banque NUMBER NOT NULL,
  nom_banque VARCHAR2(30), 
  code_pays VARCHAR2(2),
  cle_ctrl NUMBER,
  BIC VARCHAR2(12)
) TABLESPACE DATA_LCP ;

CREATE TABLE Client
(
  id_client NUMBER	NOT NULL,
  nom_client VARCHAR2(50), 
  prenom_client VARCHAR2(50),
  date_nais_client DATE,
  adr_p_client VARCHAR2(50), 
  adr_temp_client VARCHAR2(50),
  num_fixe_client INTEGER, 
  num_portable_client INTEGER,
  mail_client VARCHAR2(50),
  code_agence NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Infos_Etudiant_Client
(
  num_etudiant NUMBER NOT NULL, 
  Annee_academique NUMBER, 
  Diplome_prepare VARCHAR2(10), 
  Niveau_Etude VARCHAR2(50), 
  id_client NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Compte_Bancaire
(
  num_compte NUMBER	NOT NULL,
  date_ouv_compte DATE NOT NULL,
  depot_initial NUMBER, 
  cle_rib NUMBER, 
  id_client NUMBER, 
  id_typecompte NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Type_Compte
(
  id_typecompte NUMBER	NOT NULL,
  libelle_typecompte VARCHAR2(30)
) TABLESPACE DATA_LCP ;

CREATE TABLE Operation_Bancaire
(
  ref_operation NUMBER,
  libelle_operation VARCHAR2(50), 
  Date_Comptable DATE,
  Date_Valeur  DATE,
  Montant_Debit NUMBER, 
  Montant_Credite NUMBER, 
  id_statutoperation NUMBER, 
  num_compte NUMBER, 
  id_typeoperation NUMBER, 
  id_moyendepaiement NUMBER, 
  numero_cheque NUMBER,
  numero_carte NUMBER
) TABLESPACE DATA_LCP ;


CREATE TABLE Statut_Operation
(
  id_statutoperation NUMBER NOT NULL,
  libelle_statutoperation VARCHAR2(10) 
) TABLESPACE DATA_LCP ;


CREATE TABLE Type_Operation
(
  id_typeoperation NUMBER NOT NULL,
  libelle_typeoperation VARCHAR2(20)  
) TABLESPACE DATA_LCP ;

CREATE TABLE Moyen_de_Paiement
(
  id_moyendepaiement NUMBER NOT NULL,
  libelle_moyendepaiement VARCHAR2(20)
) TABLESPACE DATA_LCP ;

CREATE TABLE Carte_Bancaire
(
  numero_carte NUMBER NOT NULL,
  date_debut_validite DATE, 
  date_fin_validite DATE,
  id_typecarte NUMBER,
  num_compte NUMBER, 
  id_reseaucarte NUMBER, 
  id_moyendepaiement NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Reseau_Carte
(
  id_reseaucarte NUMBER	NOT NULL,
  libelle_reseaucarte VARCHAR2(20)
) TABLESPACE DATA_LCP ;

CREATE TABLE Type_Carte
(
  id_typecarte NUMBER NOT NULL,
  libelle_typecarte VARCHAR2(10)
) TABLESPACE DATA_LCP ;

CREATE TABLE Referentiel_Carte
(
  id_referentiel_carte NUMBER NOT NULL,
  Cotisation_Annuelle NUMBER, 
  Plafond_Global_Paiement NUMBER,
  Periode_Plafond_Paiement VARCHAR2(10),
  Plafond_Retrait_Etranger NUMBER, 
  Plafond_Retrait_France  NUMBER, 
  Periode_Plafond_Global_Retrait VARCHAR2(10),
  id_typecarte NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Chequier
(
  numero_cheque NUMBER,
  num_compte NUMBER, 
  id_moyendepaiement NUMBER, 
  id_client NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Contrat
(
  numero_contrat NUMBER NOT NULL, 
  nom_souscripteur VARCHAR2(50), 
  Date_Souscription DATE, 
  id_client NUMBER,  
  id_typecontrat NUMBER, 
  id_Produit_Epargne NUMBER, 
  id_statutjuridique NUMBER
  ) TABLESPACE DATA_LCP ;
  
  CREATE TABLE Statut_Juridique_Client
(
  id_statutjuridique NUMBER NOT NULL, 
  libelle_statutjuridique VARCHAR2(15)
  ) TABLESPACE DATA_LCP ;
  
  CREATE TABLE Type_Contrat
(
  id_typecontrat NUMBER NOT NULL,
  libelle_typecontrat VARCHAR2(30)
) TABLESPACE DATA_LCP ;

CREATE TABLE Produit_Epargne
(
  id_Produit_Epargne NUMBER NOT NULL,
  libelle_Produit_Epargne VARCHAR2(30)
)TABLESPACE DATA_LCP ;


CREATE TABLE Versement_Epargne_Operation
 (
   id_versement_epargne NUMBER NOT NULL, 
   ref_operation NUMBER NOT NULL, 
   id_typeversement NUMBER, 
   id_Produit_Epargne NUMBER, 
   id_periodeversement NUMBER
   ) TABLESPACE DATA_LCP ;
   
 CREATE TABLE Type_Versement
(
  id_typeversement NUMBER NOT NULL,
  libelle_typeversement VARCHAR2(15)
  ) TABLESPACE DATA_LCP ;

CREATE TABLE Periodicite_Versement
(
  id_periodeversement NUMBER NOT NULL, 
  libelle_periodeversement VARCHAR2(20)
) TABLESPACE DATA_LCP ;

CREATE TABLE Emprunt_Contrat
(
  id_emprunt NUMBER NOT NULL,
  objet_credit VARCHAR2(15), 
  Date_Sousc_Credit DATE, 
  Date_Echeance DATE, 
  Montant_Credit NUMBER,
  numero_contrat NUMBER NOT NULL,   
  id_conditions NUMBER
)TABLESPACE DATA_LCP ;

CREATE TABLE Conditions_Amortissement
(
  id_conditions NUMBER NOT NULL, 
  type_remboursement VARCHAR2(25), 
  Prochaine_Echeance DATE, 
  Montant_Echeance NUMBER, 
  Taux_Nominal NUMBER, 
  Encours NUMBER
 ) TABLESPACE DATA_LCP ;
 
 CREATE TABLE Contrat_Produit_Epargne
(
  numero_contrat NUMBER NOT NULL, 
  id_Produit_Epargne NUMBER NOT NULL, 
  Date_Versement DATE, 
  Montant_Verse NUMBER
) TABLESPACE DATA_LCP ;

CREATE TABLE Reglement_Echeance_Operation (
  id_reglement NUMBER NOT NULL,
  ref_operation NUMBER NOT NULL,
  id_conditions NUMBER NOT NULL
) TABLESPACE DATA_LCP;

/*------------------ Creation des contraintes de clés primaires------------------------ */  

 ALTER TABLE Agence_LCP ADD CONSTRAINT agence_lcp_PK 
	PRIMARY KEY (code_agence) USING INDEX TABLESPACE INDEX_LCP ; 
    
ALTER TABLE Client ADD CONSTRAINT client_PK 
	PRIMARY KEY (id_client) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Infos_Etudiant_Client ADD CONSTRAINT infosetudiant_PK 
	PRIMARY KEY (num_etudiant) USING INDEX TABLESPACE INDEX_LCP  ;
    
ALTER TABLE Compte_Bancaire ADD CONSTRAINT comptebancaire_PK 
	PRIMARY KEY (num_compte) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Type_Compte ADD CONSTRAINT typecompte_PK 
	PRIMARY KEY (id_typecompte) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_PK 
	PRIMARY KEY (ref_operation) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Statut_Operation ADD CONSTRAINT statutoperation_PK 
	PRIMARY KEY (id_statutoperation) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Type_Operation ADD CONSTRAINT typeoperation_PK 
	PRIMARY KEY (id_typeoperation) USING INDEX TABLESPACE INDEX_LCP ;

ALTER TABLE Moyen_de_Paiement ADD CONSTRAINT moyenpaiement_PK 
	PRIMARY KEY (id_moyendepaiement) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Carte_Bancaire ADD CONSTRAINT cartebancaire_PK 
	PRIMARY KEY (numero_carte) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Reseau_Carte ADD CONSTRAINT reseaucarte_PK 
	PRIMARY KEY (id_reseaucarte) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Type_Carte ADD CONSTRAINT typecarte_PK 
	PRIMARY KEY (id_typecarte) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Referentiel_Carte ADD CONSTRAINT referentielcarte_PK 
	PRIMARY KEY (id_referentiel_carte) USING INDEX TABLESPACE INDEX_LCP ;

ALTER TABLE Chequier ADD CONSTRAINT chequier_PK 
	PRIMARY KEY (numero_cheque) USING INDEX TABLESPACE INDEX_LCP ;

ALTER TABLE Contrat ADD CONSTRAINT contrat_PK 
	PRIMARY KEY (numero_contrat) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Statut_Juridique_Client ADD CONSTRAINT statutjuridique_PK 
	PRIMARY KEY (id_statutjuridique) USING INDEX TABLESPACE INDEX_LCP ;
    
ALTER TABLE Type_Contrat ADD CONSTRAINT typecontrat_PK 
	PRIMARY KEY (id_typecontrat) USING INDEX TABLESPACE INDEX_LCP ;

ALTER TABLE Produit_Epargne ADD CONSTRAINT produitepargne_PK 
	PRIMARY KEY (id_Produit_Epargne) USING INDEX TABLESPACE INDEX_LCP ;
    
 ALTER TABLE Versement_Epargne_Operation ADD CONSTRAINT versement_epargne_PK 
	PRIMARY KEY (id_versement_epargne) USING INDEX TABLESPACE INDEX_LCP ;

ALTER TABLE Type_Versement ADD CONSTRAINT typeversement_PK 
	PRIMARY KEY (id_typeversement) USING INDEX TABLESPACE INDEX_LCP ;

ALTER TABLE Periodicite_Versement ADD CONSTRAINT periodeversement_PK 
	PRIMARY KEY (id_periodeversement) USING INDEX TABLESPACE INDEX_LCP ;

 ALTER TABLE Emprunt_Contrat ADD CONSTRAINT emprunt_PK 
	PRIMARY KEY (id_emprunt) USING INDEX TABLESPACE INDEX_LCP ; 

 ALTER TABLE  Conditions_Amortissement ADD CONSTRAINT conditions_amort_PK 
	PRIMARY KEY (id_conditions) USING INDEX TABLESPACE INDEX_LCP ;
    
 ALTER TABLE  Reglement_Echeance_Operation ADD CONSTRAINT reglement_echeance_PK 
	PRIMARY KEY (id_reglement) USING INDEX TABLESPACE INDEX_LCP ;
    
/*------------------------ Creation des contraintes de clés étrangeres----------------------  */ 

ALTER TABLE Client ADD CONSTRAINT client_FK
FOREIGN KEY (code_agence) REFERENCES Agence_LCP(code_agence) ;

ALTER TABLE Infos_Etudiant_Client ADD CONSTRAINT infosetudiant_FK
FOREIGN KEY (id_client) REFERENCES Client(id_client) ;

ALTER TABLE Compte_Bancaire ADD CONSTRAINT comptebancaire_FK_1
FOREIGN KEY (id_client) REFERENCES Client(id_client) ;

ALTER TABLE Compte_Bancaire ADD CONSTRAINT comptebancaire_FK_2
FOREIGN KEY (id_typecompte) REFERENCES Type_Compte(id_typecompte) ;

ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_FK_1
FOREIGN KEY (id_statutoperation) REFERENCES Statut_Operation(id_statutoperation) ;

ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_FK_2
FOREIGN KEY (id_typeoperation) REFERENCES Type_Operation(id_typeoperation) ;

ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_FK_3
FOREIGN KEY (num_compte) REFERENCES Compte_Bancaire(num_compte) ;

ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_FK_4
FOREIGN KEY (id_moyendepaiement) REFERENCES Moyen_de_Paiement(id_moyendepaiement) ;

ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_FK_5
FOREIGN KEY (numero_cheque) REFERENCES Chequier(numero_cheque) ;

ALTER TABLE Operation_Bancaire ADD CONSTRAINT operationbancaire_FK_6
FOREIGN KEY (numero_carte) REFERENCES Carte_Bancaire(numero_carte) ;

ALTER TABLE Carte_Bancaire ADD CONSTRAINT cartebancaire_FK_1
FOREIGN KEY (num_compte) REFERENCES Compte_Bancaire(num_compte) ;

ALTER TABLE Carte_Bancaire ADD CONSTRAINT cartebancaire_FK_2
FOREIGN KEY (id_typecarte) REFERENCES Type_Carte(id_typecarte) ;

ALTER TABLE Carte_Bancaire ADD CONSTRAINT cartebancaire_FK_3
FOREIGN KEY (id_reseaucarte) REFERENCES Reseau_Carte(id_reseaucarte) ;
    
ALTER TABLE Carte_Bancaire ADD CONSTRAINT cartebancaire_FK_4
FOREIGN KEY (id_moyendepaiement) REFERENCES Moyen_de_Paiement(id_moyendepaiement) ;

ALTER TABLE Referentiel_Carte ADD CONSTRAINT refcarte_FK
FOREIGN KEY (id_typecarte) REFERENCES Type_Carte(id_typecarte) ;

ALTER TABLE Chequier ADD CONSTRAINT cheque_FK_1
FOREIGN KEY (num_compte) REFERENCES Compte_Bancaire(num_compte) ;

ALTER TABLE Chequier ADD CONSTRAINT cheque_FK_2
FOREIGN KEY (id_moyendepaiement) REFERENCES Moyen_de_Paiement(id_moyendepaiement) ;

ALTER TABLE Chequier ADD CONSTRAINT cheque_FK_3
FOREIGN KEY (id_client) REFERENCES Client(id_client) ;

ALTER TABLE Contrat ADD CONSTRAINT contrat_FK_1
FOREIGN KEY (id_client) REFERENCES Client(id_client) ;

ALTER TABLE Contrat ADD CONSTRAINT contrat_FK_2
FOREIGN KEY (id_typecontrat) REFERENCES Type_Contrat(id_typecontrat) ;

ALTER TABLE Contrat ADD CONSTRAINT contrat_FK_3
FOREIGN KEY (id_statutjuridique) REFERENCES Statut_Juridique_Client(id_statutjuridique) ; 

ALTER TABLE Versement_Epargne_Operation ADD CONSTRAINT versement_epargne_FK_1
FOREIGN KEY (ref_operation) REFERENCES Operation_Bancaire(ref_operation) ;

ALTER TABLE Versement_Epargne_Operation ADD CONSTRAINT versement_epargne_FK_2
FOREIGN KEY (id_typeversement) REFERENCES Type_Versement(id_typeversement) ;

ALTER TABLE Versement_Epargne_Operation ADD CONSTRAINT versement_epargne_FK_3
FOREIGN KEY (id_Produit_Epargne) REFERENCES Produit_Epargne(id_Produit_Epargne) ;

ALTER TABLE Versement_Epargne_Operation ADD CONSTRAINT versement_epargne_FK_4
FOREIGN KEY (id_periodeversement) REFERENCES Periodicite_Versement(id_periodeversement) ;

ALTER TABLE Emprunt_Contrat ADD CONSTRAINT emprunt_FK_1
FOREIGN KEY (numero_contrat) REFERENCES Contrat(numero_contrat) ;

ALTER TABLE Emprunt_Contrat ADD CONSTRAINT emprunt_FK_2
FOREIGN KEY (id_conditions) REFERENCES Conditions_Amortissement(id_conditions) ;

ALTER TABLE Contrat_Produit_Epargne ADD CONSTRAINT contratproduitepargne_FK_1
FOREIGN KEY (numero_contrat) REFERENCES Contrat(numero_contrat) ;

ALTER TABLE Contrat_Produit_Epargne ADD CONSTRAINT contratproduitepargne_FK_2
FOREIGN KEY (id_Produit_Epargne) REFERENCES Produit_Epargne(id_Produit_Epargne) ;

ALTER TABLE Reglement_Echeance_Operation ADD CONSTRAINT reg_echeance_FK_1
FOREIGN KEY (ref_operation) REFERENCES Operation_Bancaire(ref_operation) ;

ALTER TABLE Reglement_Echeance_Operation ADD CONSTRAINT reg_echeance_FK_2
FOREIGN KEY (id_conditions) REFERENCES Conditions_Amortissement(id_conditions) ;


/*---------------Création d'un index pour accélérer la recherche--------------------- */ 


CREATE INDEX index_client_LCP ON Client(nom_client, prenom_client)
TABLESPACE INDEX_LCP ;

/*----------------------------- Création des séquences ----------------------------*/


CREATE SEQUENCE seq_idclient
START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 99999999 ; 

CREATE SEQUENCE seq_numetudiant
START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 999999999 ; 

CREATE SEQUENCE seq_refoperation
START WITH 20241001 INCREMENT BY 1 MINVALUE 20241001 MAXVALUE 99999999999999999 ; 

CREATE SEQUENCE seq_numero_carte
START WITH 4974123456781111 INCREMENT BY 1 MINVALUE 4974123456781111 MAXVALUE 9999999999999999 ; 

CREATE SEQUENCE seq_numerocheque
START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 999 ; 

CREATE SEQUENCE seq_numcontrat
START WITH 5001 INCREMENT BY 1 MINVALUE 5001 MAXVALUE 999999 ; 

CREATE SEQUENCE seq_idemprunt
START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 999999 ; 

 CREATE SEQUENCE seq_num_compte
START WITH  49741234001 INCREMENT BY 1 MINVALUE 49741234001 MAXVALUE 99999999999 ; 

 CREATE SEQUENCE seq_idconditions
START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 9999 ; 

CREATE SEQUENCE seq_cle_rib 
START WITH 11 INCREMENT BY 1 MINVALUE 11 MAXVALUE 99 ; 

CREATE SEQUENCE seq_idversementepargne 
START WITH 1001 INCREMENT BY 1 MINVALUE 1001 MAXVALUE 9999 ; 

CREATE SEQUENCE seq_reglementecheance 
START WITH 1 INCREMENT BY 1 MINVALUE 1 MAXVALUE 999999 ; 

/*--------------------- CREATION DE SYNONYMES PAR LES AGENCES LCP -----------------*/ 
connect LCPPARIS13/LCPPARIS13
show user

CREATE SYNONYM  Client FOR  LCP.Client ;
CREATE SYNONYM  Agence_LCP FOR  LCP.Agence_LCP ;
CREATE SYNONYM  Contrat FOR  LCP.Contrat ;
CREATE SYNONYM  Type_Contrat FOR  LCP.Type_Contrat ;
CREATE SYNONYM  Statut_Juridique_Client FOR  LCP.Statut_Juridique_Client ;
CREATE SYNONYM  Emprunt_Contrat FOR  LCP.Emprunt_Contrat ;
CREATE SYNONYM  Conditions_Amortissement FOR  LCP.Conditions_Amortissement ;
CREATE SYNONYM  Compte_Bancaire FOR  LCP.Compte_Bancaire ;
CREATE SYNONYM  Chequier FOR  LCP.Chequier ;
CREATE SYNONYM  Infos_Etudiant_Client FOR  LCP.Infos_Etudiant_Client ;
CREATE SYNONYM  Type_Compte FOR  LCP.Type_Compte ;
CREATE SYNONYM  Carte_Bancaire FOR  LCP.Carte_Bancaire ;
CREATE SYNONYM  Reseau_Carte FOR  LCP.Reseau_Carte ;
CREATE SYNONYM  Type_Carte FOR  Reseau_Carte ;
CREATE SYNONYM  Referentiel_Carte FOR  LCP.Referentiel_Carte ;
CREATE SYNONYM  Moyen_de_Paiement FOR  LCP.Moyen_de_Paiement ;
CREATE SYNONYM  Operation_Bancaire FOR  LCP.Operation_Bancaire ;
CREATE SYNONYM  Type_Operation FOR  LCP.Type_Operation ;
CREATE SYNONYM  Statut_Operation FOR  LCP.Statut_Operation ;
CREATE SYNONYM  Versement_Epargne_Operation FOR  LCP.Versement_Epargne ;
CREATE SYNONYM  Produit_Epargne FOR  LCP.Produit_Epargne ;
CREATE SYNONYM  Type_Versement FOR  LCP.Type_Versement ;
CREATE SYNONYM  Periodicite_Versement FOR  LCP.Periodicite_Versement ;
CREATE SYNONYM  Contrat_Produit_Epargne FOR  LCP.Contrat_Produit_Epargne ;
CREATE SYNONYM  Reglement_Echeance_Operation FOR  LCP.Reglement_Echeance_Operation ;

connect LCPPARIS05/LCPPARIS05
show user
CREATE SYNONYM  Client FOR  LCP.Client ;
CREATE SYNONYM  Agence_LCP FOR  LCP.Agence_LCP ;
CREATE SYNONYM  Contrat FOR  LCP.Contrat ;
CREATE SYNONYM  Type_Contrat FOR  LCP.Type_Contrat ;
CREATE SYNONYM  Statut_Juridique_Client FOR  LCP.Statut_Juridique_Client ;
CREATE SYNONYM  Emprunt_Contrat FOR  LCP.Emprunt_Contrat ;
CREATE SYNONYM  Conditions_Amortissement FOR  LCP.Conditions_Amortissement ;
CREATE SYNONYM  Compte_Bancaire FOR  LCP.Compte_Bancaire ;
CREATE SYNONYM  Chequier FOR  LCP.Chequier ;
CREATE SYNONYM  Infos_Etudiant_Client FOR  LCP.Infos_Etudiant_Client ;
CREATE SYNONYM  Type_Compte FOR  LCP.Type_Compte ;
CREATE SYNONYM  Carte_Bancaire FOR  LCP.Carte_Bancaire ;
CREATE SYNONYM  Reseau_Carte FOR  LCP.Reseau_Carte ;
CREATE SYNONYM  Type_Carte FOR  Reseau_Carte ;
CREATE SYNONYM  Referentiel_Carte FOR  LCP.Referentiel_Carte ;
CREATE SYNONYM  Moyen_de_Paiement FOR  LCP.Moyen_de_Paiement ;
CREATE SYNONYM  Operation_Bancaire FOR  LCP.Operation_Bancaire ;
CREATE SYNONYM  Type_Operation FOR  LCP.Type_Operation ;
CREATE SYNONYM  Statut_Operation FOR  LCP.Statut_Operation ;
CREATE SYNONYM  Versement_Epargne_Operation FOR  LCP.Versement_Epargne ;
CREATE SYNONYM  Produit_Epargne FOR  LCP.Produit_Epargne ;
CREATE SYNONYM  Type_Versement FOR  LCP.Type_Versement ;
CREATE SYNONYM  Periodicite_Versement FOR  LCP.Periodicite_Versement ;
CREATE SYNONYM  Contrat_Produit_Epargne FOR  LCP.Contrat_Produit_Epargne ;
CREATE SYNONYM  Reglement_Echeance_Operation FOR  LCP.Reglement_Echeance_Operation ;


connect LCPMONTROUGE/LCPMONTROUGE;
show user
CREATE SYNONYM  Client FOR  LCP.Client ;
CREATE SYNONYM  Agence_LCP FOR  LCP.Agence_LCP ;
CREATE SYNONYM  Contrat FOR  LCP.Contrat ;
CREATE SYNONYM  Type_Contrat FOR  LCP.Type_Contrat ;
CREATE SYNONYM  Statut_Juridique_Client FOR  LCP.Statut_Juridique_Client ;
CREATE SYNONYM  Emprunt_Contrat FOR  LCP.Emprunt_Contrat ;
CREATE SYNONYM  Conditions_Amortissement FOR  LCP.Conditions_Amortissement ;
CREATE SYNONYM  Compte_Bancaire FOR  LCP.Compte_Bancaire ;
CREATE SYNONYM  Chequier FOR  LCP.Chequier ;
CREATE SYNONYM  Infos_Etudiant_Client FOR  LCP.Infos_Etudiant_Client ;
CREATE SYNONYM  Type_Compte FOR  LCP.Type_Compte ;
CREATE SYNONYM  Carte_Bancaire FOR  LCP.Carte_Bancaire ;
CREATE SYNONYM  Reseau_Carte FOR  LCP.Reseau_Carte ;
CREATE SYNONYM  Type_Carte FOR  Reseau_Carte ;
CREATE SYNONYM  Referentiel_Carte FOR  LCP.Referentiel_Carte ;
CREATE SYNONYM  Moyen_de_Paiement FOR  LCP.Moyen_de_Paiement ;
CREATE SYNONYM  Operation_Bancaire FOR  LCP.Operation_Bancaire ;
CREATE SYNONYM  Type_Operation FOR  LCP.Type_Operation ;
CREATE SYNONYM  Statut_Operation FOR  LCP.Statut_Operation ;
CREATE SYNONYM  Versement_Epargne_Operation FOR  LCP.Versement_Epargne ;
CREATE SYNONYM  Produit_Epargne FOR  LCP.Produit_Epargne ;
CREATE SYNONYM  Type_Versement FOR  LCP.Type_Versement ;
CREATE SYNONYM  Periodicite_Versement FOR  LCP.Periodicite_Versement ;
CREATE SYNONYM  Contrat_Produit_Epargne FOR  LCP.Contrat_Produit_Epargne ;
CREATE SYNONYM  Reglement_Echeance_Operation FOR  LCP.Reglement_Echeance_Operation ;


/* Attribution des privilèges aux schémas pour chaque table */ 

connect LCP/LCP

grant select on client to LCPPARIS13;
grant insert on client to LCPPARIS13;
grant update on client to LCPPARIS13;
grant delete on client to LCPPARIS13;

grant select on Operation_Bancaire to LCPPARIS13;
grant insert on Operation_Bancaire to LCPPARIS13;
grant update on Operation_Bancaire to LCPPARIS13;
--grant delete on Operation_Bancaire to LCPPARIS13;

grant select on Compte_Bancaire to LCPPARIS13;
grant insert on Compte_Bancaire to LCPPARIS13;
grant update on Compte_Bancaire to LCPPARIS13;
grant delete on Compte_Bancaire to LCPPARIS13;

grant select on Type_Compte to LCPPARIS13;
--grant insert on Type_Compte to LCPPARIS13;
--grant update on Type_Compte to LCPPARIS13;
--grant delete on Type_Compte to LCPPARIS13;

grant select on Agence_LCP to LCPPARIS13;
grant insert on Agence_LCP to LCPPARIS13;
--grant update on Agence_LCP to LCPPARIS13;
--grant delete on Agence_LCP to LCPPARIS13;

grant select on Infos_Etudiant_Client to LCPPARIS13;
grant insert on Infos_Etudiant_Client to LCPPARIS13;
grant update on Infos_Etudiant_Client to LCPPARIS13;
--grant delete on Infos_Etudiant_Client to LCPPARIS13;

grant select on Statut_Operation to LCPPARIS13;
--grant insert on Statut_Operation to LCPPARIS13;
--grant update on Statut_Operation to LCPPARIS13;
--grant delete on Statut_Operation to LCPPARIS13;

grant select on Type_Operation to LCPPARIS13;
--grant insert on Type_Operation to LCPPARIS13;
--grant update on Type_Operation to LCPPARIS13;
--grant delete on Type_Operation to LCPPARIS13;

grant select on Moyen_de_Paiement to LCPPARIS13;
--grant insert on Moyen_de_Paiement to LCPPARIS13;
--grant update on Moyen_de_Paiement to LCPPARIS13;
--grant delete on Moyen_de_Paiement to LCPPARIS13;

grant select on Carte_Bancaire to LCPPARIS13;
grant insert on Carte_Bancaire to LCPPARIS13;
grant update on Carte_Bancaire to LCPPARIS13;
grant delete on Carte_Bancaire to LCPPARIS13;

grant select on Reseau_Carte to LCPPARIS13;
--grant insert on Reseau_Carte to LCPPARIS13;
--grant update on Reseau_Carte to LCPPARIS13;
--grant delete on Reseau_Carte to LCPPARIS13;

grant select on Type_Carte to LCPPARIS13;
--grant insert on Type_Carte to LCPPARIS13;
--grant update on Type_Carte to LCPPARIS13;
--grant delete on Type_Carte to LCPPARIS13;

grant select on Referentiel_Carte to LCPPARIS13;
--grant insert on Referentiel_Carte to LCPPARIS13;
--grant update on Referentiel_Carte to LCPPARIS13;
--grant delete on Referentiel_Carte to LCPPARIS13;


grant select on Chequier to LCPPARIS13;
grant insert on Chequier to LCPPARIS13;
grant update on Chequier to LCPPARIS13;
grant delete on Chequier to LCPPARIS13;

grant select on Contrat to LCPPARIS13;
grant insert on Contrat to LCPPARIS13;
grant update on Contrat to LCPPARIS13;
grant delete on Contrat to LCPPARIS13;

grant select on Statut_Juridique_Client to LCPPARIS13;
--grant insert on Statut_Juridique_Client to LCPPARIS13;
--grant update on Statut_Juridique_Client to LCPPARIS13;
--grant delete on Statut_Juridique_Client to LCPPARIS13;


grant select on Type_Contrat to LCPPARIS13;
--grant insert on Type_Contrat to LCPPARIS13;
--grant update on Type_Contrat to LCPPARIS13;
--grant delete on Type_Contrat to LCPPARIS13;


grant select on Produit_Epargne to LCPPARIS13;
--grant insert on Produit_Epargne to LCPPARIS13;
--grant update on Produit_Epargne to LCPPARIS13;
--grant delete on Produit_Epargne to LCPPARIS13;

grant select on Versement_Epargne_Operation to LCPPARIS13;
grant insert on Versement_Epargne_Operation to LCPPARIS13;
grant update on Versement_Epargne_Operation to LCPPARIS13;
--grant delete on Versement_Epargne to LCPPARIS13;


grant select on Type_Versement to LCPPARIS13;
--grant insert on Type_Versement to LCPPARIS13;
--grant update on Type_Versement to LCPPARIS13;
--grant delete on Type_Versement to LCPPARIS13;

grant select on Periodicite_Versement to LCPPARIS13;
--grant insert on Periodicite_Versement to LCPPARIS13;
--grant update on Periodicite_Versement to LCPPARIS13;
--grant delete on Periodicite_Versement to LCPPARIS13;

grant select on Emprunt_Contrat to LCPPARIS13;
grant insert on Emprunt_Contrat to LCPPARIS13;
grant update on Emprunt_Contrat to LCPPARIS13;
grant delete on Emprunt_Contrat to LCPPARIS13;

grant select on Conditions_Amortissement to LCPPARIS13;
grant insert on Conditions_Amortissement to LCPPARIS13;
grant update on Conditions_Amortissement to LCPPARIS13;
grant delete on Conditions_Amortissement to LCPPARIS13;

grant select on Contrat_Produit_Epargne to LCPPARIS13;
grant insert on Contrat_Produit_Epargne to LCPPARIS13;
grant update on Contrat_Produit_Epargne to LCPPARIS13;
grant delete on Contrat_Produit_Epargne to LCPPARIS13;

grant select on Reglement_Echeance_Operation to LCPPARIS13;
grant insert on Reglement_Echeance_Operation to LCPPARIS13;
grant update on Reglement_Echeance_Operation to LCPPARIS13;
grant delete on Reglement_Echeance_Operation to LCPPARIS13;


---- LCPPARIS05

grant select on client to LCPPARIS05;
grant insert on client to LCPPARIS05;
grant update on client to LCPPARIS05;
grant delete on client to LCPPARIS05;

grant select on Operation_Bancaire to LCPPARIS05;
grant insert on Operation_Bancaire to LCPPARIS05;
grant update on Operation_Bancaire to LCPPARIS05;
--grant delete on Operation_Bancaire to LCPPARIS05;

grant select on Compte_Bancaire to LCPPARIS05;
grant insert on Compte_Bancaire to LCPPARIS05;
grant update on Compte_Bancaire to LCPPARIS05;
grant delete on Compte_Bancaire to LCPPARIS05;

grant select on Type_Compte to LCPPARIS05;
--grant insert on Type_Compte to LCPPARIS05;
--grant update on Type_Compte to LCPPARIS05;
--grant delete on Type_Compte to LCPPARIS05;

grant select on Agence_LCP to LCPPARIS05;
grant insert on Agence_LCP to LCPPARIS05;
--grant update on Agence_LCP to LCPPARIS05;
--grant delete on Agence_LCP to LCPPARIS05;

grant select on Infos_Etudiant_Client to LCPPARIS05;
grant insert on Infos_Etudiant_Client to LCPPARIS05;
grant update on Infos_Etudiant_Client to LCPPARIS05;
--grant delete on Infos_Etudiant_Client to LCPPARIS05;

grant select on Statut_Operation to LCPPARIS05;
--grant insert on Statut_Operation to LCPPARIS05;
--grant update on Statut_Operation to LCPPARIS05;
--grant delete on Statut_Operation to LCPPARIS05;

grant select on Type_Operation to LCPPARIS05;
--grant insert on Type_Operation to LCPPARIS05;
--grant update on Type_Operation to LCPPARIS05;
--grant delete on Type_Operation to LCPPARIS05;

grant select on Moyen_de_Paiement to LCPPARIS05;
--grant insert on Moyen_de_Paiement to LCPPARIS05;
--grant update on Moyen_de_Paiement to LCPPARIS05;
--grant delete on Moyen_de_Paiement to LCPPARIS05;

grant select on Carte_Bancaire to LCPPARIS05;
grant insert on Carte_Bancaire to LCPPARIS05;
grant update on Carte_Bancaire to LCPPARIS05;
grant delete on Carte_Bancaire to LCPPARIS05;

grant select on Reseau_Carte to LCPPARIS05;
--grant insert on Reseau_Carte to LCPPARIS05;
--grant update on Reseau_Carte to LCPPARIS05;
--grant delete on Reseau_Carte to LCPPARIS05;

grant select on Type_Carte to LCPPARIS05;
--grant insert on Type_Carte to LCPPARIS05;
--grant update on Type_Carte to LCPPARIS05;
--grant delete on Type_Carte to LCPPARIS05;

grant select on Referentiel_Carte to LCPPARIS05;
--grant insert on Referentiel_Carte to LCPPARIS05;
--grant update on Referentiel_Carte to LCPPARIS05;
--grant delete on Referentiel_Carte to LCPPARIS05;


grant select on Chequier to LCPPARIS05;
grant insert on Chequier to LCPPARIS05;
grant update on Chequier to LCPPARIS05;
grant delete on Chequier to LCPPARIS05;

grant select on Contrat to LCPPARIS05;
grant insert on Contrat to LCPPARIS05;
grant update on Contrat to LCPPARIS05;
grant delete on Contrat to LCPPARIS05;

grant select on Statut_Juridique_Client to LCPPARIS05;
--grant insert on Statut_Juridique_Client to LCPPARIS05;
--grant update on Statut_Juridique_Client to LCPPARIS05;
--grant delete on Statut_Juridique_Client to LCPPARIS05;


grant select on Type_Contrat to LCPPARIS05;
--grant insert on Type_Contrat to LCPPARIS05;
--grant update on Type_Contrat to LCPPARIS05;
--grant delete on Type_Contrat to LCPPARIS05;


grant select on Produit_Epargne to LCPPARIS05;
--grant insert on Produit_Epargne to LCPPARIS05;
--grant update on Produit_Epargne to LCPPARIS05;
--grant delete on Produit_Epargne to LCPPARIS05;

grant select on Versement_Epargne_Operation to LCPPARIS05;
grant insert on Versement_Epargne_Operation to LCPPARIS05;
grant update on Versement_Epargne_Operation to LCPPARIS05;
--grant delete on Versement_Epargne to LCPPARIS05;


grant select on Type_Versement to LCPPARIS05;
--grant insert on Type_Versement to LCPPARIS05;
--grant update on Type_Versement to LCPPARIS05;
--grant delete on Type_Versement to LCPPARIS05;

grant select on Periodicite_Versement to LCPPARIS05;
--grant insert on Periodicite_Versement to LCPPARIS05;
--grant update on Periodicite_Versement to LCPPARIS05;
--grant delete on Periodicite_Versement to LCPPARIS05;

grant select on Emprunt_Contrat to LCPPARIS05;
grant insert on Emprunt_Contrat to LCPPARIS05;
grant update on Emprunt_Contrat to LCPPARIS05;
grant delete on Emprunt_Contrat to LCPPARIS05;

grant select on Conditions_Amortissement to LCPPARIS05;
grant insert on Conditions_Amortissement to LCPPARIS05;
grant update on Conditions_Amortissement to LCPPARIS05;
grant delete on Conditions_Amortissement to LCPPARIS05;

grant select on Contrat_Produit_Epargne to LCPPARIS05;
grant insert on Contrat_Produit_Epargne to LCPPARIS05;
grant update on Contrat_Produit_Epargne to LCPPARIS05;
grant delete on Contrat_Produit_Epargne to LCPPARIS05;

grant select on Reglement_Echeance_Operation to LCPPARIS05;
grant insert on Reglement_Echeance_Operation to LCPPARIS05;
grant update on Reglement_Echeance_Operation to LCPPARIS05;
grant delete on Reglement_Echeance_Operation to LCPPARIS05;


--- LCPMONTROUGE

grant select on client to LCPMONTROUGE;
grant insert on client to LCPMONTROUGE;
grant update on client to LCPMONTROUGE;
grant delete on client to LCPMONTROUGE;

grant select on Operation_Bancaire to LCPMONTROUGE;
grant insert on Operation_Bancaire to LCPMONTROUGE;
grant update on Operation_Bancaire to LCPMONTROUGE;
--grant delete on Operation_Bancaire to LCPMONTROUGE;

grant select on Compte_Bancaire to LCPMONTROUGE;
grant insert on Compte_Bancaire to LCPMONTROUGE;
grant update on Compte_Bancaire to LCPMONTROUGE;
grant delete on Compte_Bancaire to LCPMONTROUGE;

grant select on Type_Compte to LCPMONTROUGE;
--grant insert on Type_Compte to LCPMONTROUGE;
--grant update on Type_Compte to LCPMONTROUGE;
--grant delete on Type_Compte to LCPMONTROUGE;

grant select on Agence_LCP to LCPMONTROUGE;
grant insert on Agence_LCP to LCPMONTROUGE;
--grant update on Agence_LCP to LCPMONTROUGE;
--grant delete on Agence_LCP to LCPMONTROUGE;

grant select on Infos_Etudiant_Client to LCPMONTROUGE;
grant insert on Infos_Etudiant_Client to LCPMONTROUGE;
grant update on Infos_Etudiant_Client to LCPMONTROUGE;
--grant delete on Infos_Etudiant_Client to LCPMONTROUGE;

grant select on Statut_Operation to LCPMONTROUGE;
--grant insert on Statut_Operation to LCPMONTROUGE;
--grant update on Statut_Operation to LCPMONTROUGE;
--grant delete on Statut_Operation to LCPMONTROUGE;

grant select on Type_Operation to LCPMONTROUGE;
--grant insert on Type_Operation to LCPMONTROUGE;
--grant update on Type_Operation to LCPMONTROUGE;
--grant delete on Type_Operation to LCPMONTROUGE;

grant select on Moyen_de_Paiement to LCPMONTROUGE;
--grant insert on Moyen_de_Paiement to LCPMONTROUGE;
--grant update on Moyen_de_Paiement to LCPMONTROUGE;
--grant delete on Moyen_de_Paiement to LCPMONTROUGE;

grant select on Carte_Bancaire to LCPMONTROUGE;
grant insert on Carte_Bancaire to LCPMONTROUGE;
grant update on Carte_Bancaire to LCPMONTROUGE;
grant delete on Carte_Bancaire to LCPMONTROUGE;

grant select on Reseau_Carte to LCPMONTROUGE;
--grant insert on Reseau_Carte to LCPMONTROUGE;
--grant update on Reseau_Carte to LCPMONTROUGE;
--grant delete on Reseau_Carte to LCPMONTROUGE;

grant select on Type_Carte to LCPMONTROUGE;
--grant insert on Type_Carte to LCPMONTROUGE;
--grant update on Type_Carte to LCPMONTROUGE;
--grant delete on Type_Carte to LCPMONTROUGE;

grant select on Referentiel_Carte to LCPMONTROUGE;
--grant insert on Referentiel_Carte to LCPMONTROUGE;
--grant update on Referentiel_Carte to LCPMONTROUGE;
--grant delete on Referentiel_Carte to LCPMONTROUGE;


grant select on Chequier to LCPMONTROUGE;
grant insert on Chequier to LCPMONTROUGE;
grant update on Chequier to LCPMONTROUGE;
grant delete on Chequier to LCPMONTROUGE;

grant select on Contrat to LCPMONTROUGE;
grant insert on Contrat to LCPMONTROUGE;
grant update on Contrat to LCPMONTROUGE;
grant delete on Contrat to LCPMONTROUGE;

grant select on Statut_Juridique_Client to LCPMONTROUGE;
--grant insert on Statut_Juridique_Client to LCPMONTROUGE;
--grant update on Statut_Juridique_Client to LCPMONTROUGE;
--grant delete on Statut_Juridique_Client to LCPMONTROUGE;


grant select on Type_Contrat to LCPMONTROUGE;
--grant insert on Type_Contrat to LCPMONTROUGE;
--grant update on Type_Contrat to LCPMONTROUGE;
--grant delete on Type_Contrat to LCPMONTROUGE;


grant select on Produit_Epargne to LCPMONTROUGE;
--grant insert on Produit_Epargne to LCPMONTROUGE;
--grant update on Produit_Epargne to LCPMONTROUGE;
--grant delete on Produit_Epargne to LCPMONTROUGE;

grant select on Versement_Epargne_Operation to LCPMONTROUGE;
grant insert on Versement_Epargne_Operation to LCPMONTROUGE;
grant update on Versement_Epargne_Operation to LCPMONTROUGE;
--grant delete on Versement_Epargne to LCPMONTROUGE;


grant select on Type_Versement to LCPMONTROUGE;
--grant insert on Type_Versement to LCPMONTROUGE;
--grant update on Type_Versement to LCPMONTROUGE;
--grant delete on Type_Versement to LCPMONTROUGE;

grant select on Periodicite_Versement to LCPMONTROUGE;
--grant insert on Periodicite_Versement to LCPMONTROUGE;
--grant update on Periodicite_Versement to LCPMONTROUGE;
--grant delete on Periodicite_Versement to LCPMONTROUGE;

grant select on Emprunt_Contrat to LCPMONTROUGE;
grant insert on Emprunt_Contrat to LCPMONTROUGE;
grant update on Emprunt_Contrat to LCPMONTROUGE;
grant delete on Emprunt_Contrat to LCPMONTROUGE;

grant select on Conditions_Amortissement to LCPMONTROUGE;
grant insert on Conditions_Amortissement to LCPMONTROUGE;
grant update on Conditions_Amortissement to LCPMONTROUGE;
grant delete on Conditions_Amortissement to LCPMONTROUGE;

grant select on Contrat_Produit_Epargne to LCPMONTROUGE;
grant insert on Contrat_Produit_Epargne to LCPMONTROUGE;
grant update on Contrat_Produit_Epargne to LCPMONTROUGE;
grant delete on Contrat_Produit_Epargne to LCPMONTROUGE;

grant select on Reglement_Echeance_Operation to LCPMONTROUGE;
grant insert on Reglement_Echeance_Operation to LCPMONTROUGE;
grant update on Reglement_Echeance_Operation to LCPMONTROUGE;
grant delete on Reglement_Echeance_Operation to LCPMONTROUGE;

/* Attribution des droits aux séquences */
 
GRANT SELECT ON seq_idclient TO LCPPARIS13;
GRANT SELECT ON seq_refoperation TO LCPPARIS13;
GRANT SELECT ON seq_numero_carte TO LCPPARIS13;
GRANT SELECT ON seq_numerocheque TO LCPPARIS13;
GRANT SELECT ON seq_numcontrat TO LCPPARIS13;
GRANT SELECT ON seq_idemprunt TO LCPPARIS13;
GRANT SELECT ON seq_cle_rib TO LCPPARIS13;
GRANT SELECT ON seq_reglementecheance TO LCPPARIS13;

GRANT SELECT ON seq_idclient TO LCPPARIS05;
GRANT SELECT ON seq_refoperation TO LCPPARIS05;
GRANT SELECT ON seq_numero_carte TO LCPPARIS05;
GRANT SELECT ON seq_numerocheque TO LCPPARIS05;
GRANT SELECT ON seq_numcontrat TO LCPPARIS05;
GRANT SELECT ON seq_idemprunt TO LCPPARIS05;
GRANT SELECT ON seq_cle_rib TO LCPPARIS05;
GRANT SELECT ON seq_reglementecheance TO LCPPARIS05;

GRANT SELECT ON seq_idclient TO LCPMONTROUGE;
GRANT SELECT ON seq_refoperation TO LCPMONTROUGE;
GRANT SELECT ON seq_numero_carte TO LCPMONTROUGE;
GRANT SELECT ON seq_numerocheque TO LCPMONTROUGE;
GRANT SELECT ON seq_numcontrat TO LCPMONTROUGE;
GRANT SELECT ON seq_idemprunt TO LCPMONTROUGE;
GRANT SELECT ON seq_cle_rib TO LCPMONTROUGE;
GRANT SELECT ON seq_reglementecheance TO LCPMONTROUGE;



SPOOL OFF; 
