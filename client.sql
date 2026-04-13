/* SCRIPT DE SELECTION D'INFORMATIONS SUR UN CLIENT  */ 

SPOOL "C:\temp\client.log"

/* Consultation des transactions sur un compte */ 
connect LCPPARIS05/LCPPARIS05

SELECT 
    ob.*, 
	TO_CHAR(ob.num_compte,'99999999999999999999') AS NUMERO_CARTE
FROM 
    LCP.Operation_Bancaire ob
    INNER JOIN Compte_Bancaire cb ON ob.num_compte = cb.num_compte
    INNER JOIN Client c ON cb.id_client = c.id_client
WHERE 
    upper(c.nom_client) like upper('%Lefevbre%');


/*Informations de base sur un client à partir du nom et du prenom du client*/

SELECT * 
FROM LCP.Client 
WHERE upper(prenom_client) like upper('%Antoine%') and upper(nom_client) like upper('%Lefevbre%') ; 


/*Details des opérations bancaires sur le compte d'un client */

SELECT *
FROM LCP.Operation_Bancaire ob
INNER JOIN Compte_Bancaire cb ON ob.num_compte = cb.num_compte
INNER JOIN Client c ON cb.id_client = c.id_client
WHERE upper(c.prenom_client) like upper('%Antoine%') and upper(c.nom_client) like upper('%Lefevbre%'); 


/*Historique des virements effectués par un client */

SELECT * 
FROM LCP.Operation_Bancaire ob
INNER JOIN Type_Operation typeope ON ob.id_typeoperation = typeope.id_typeoperation
INNER JOIN Compte_Bancaire cb ON ob.num_compte = cb.num_compte
INNER JOIN Client c ON cb.id_client = c.id_client
WHERE upper(c.nom_client) like upper('%Lefevbre%') 
AND upper(typeope.libelle_typeoperation) like upper('%Virement%'); 


/*Connaître  les opérations en lien avec l'épargne d'un client*/

SELECT * 
FROM LCP.Operation_Bancaire ob 
INNER JOIN Compte_Bancaire cb ON ob.num_compte = cb.num_compte
INNER JOIN Client c ON cb.id_client = c.id_client
WHERE upper(ob.libelle_operation) like upper('%epargne%')
AND upper(c.nom_client) like upper('%Lefevbre%'); 




/* Edition de RIB à la demande d’un client de la banque */ 

SELECT
  'Nom de la Banque: ' || a.nom_banque AS Nom_Banque,
  cli.nom_client || ' ' || cli.prenom_client || ', ' || cli.adr_p_client AS Client_Adresse,
  'IBAN du Compte: ' || SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 1, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 5, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 9, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 13, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 17, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 21) AS IBAN,
  'BIC: ' || a.BIC AS BIC,
  'RIB: ' || a.code_banque || ' | ' || a.code_agence || ' | ' || cb.num_compte || ' | ' || cb.cle_rib || ' | ' || a.nom_agence AS RIB
FROM Client cli
  JOIN Compte_Bancaire cb ON cli.id_client = cb.id_client
  JOIN Agence_LCP a ON cli.code_agence = a.code_agence
WHERE UPPER(cli.nom_client) like UPPER('%Lefevbre%')AND UPPER(cli.prenom_client) like UPPER ('%Antoine%');


---- /*Edition du relevé bancaire électronique mensuel */

SELECT 
    c.nom_client AS Nom_Client,
    TO_CHAR(cb.num_compte, '99999999999999999999') AS Numero_Compte,
    cb.date_ouv_compte AS Date_Ouverture_Compte,
    CASE 
        WHEN cb.id_typecompte = 1 THEN 'Compte Chèque'
        WHEN cb.id_typecompte = 2 THEN 'Compte Épargne'
        ELSE 'Autre'
    END AS Type_Compte,
    opb.ref_operation AS Reference_Operation,
    opb.libelle_operation AS Libelle_Operation,
    opb.Date_Comptable AS Date_Comptable,
    opb.Date_Valeur AS Date_Valeur,
    opb.Montant_Debit AS Montant_Debit,
    opb.Montant_Credite AS Montant_Credit,
    so.libelle_statutoperation AS Statut_Operation
FROM 
    Client c
    JOIN Compte_Bancaire cb ON c.id_client = cb.id_client
    LEFT JOIN Operation_Bancaire opb ON cb.num_compte = opb.num_compte
    LEFT JOIN Statut_Operation so ON opb.id_statutoperation = so.id_statutoperation
WHERE 
    UPPER(c.nom_client) LIKE UPPER('%Lefevbre%')
    AND opb.Date_Comptable BETWEEN TO_DATE('01/03/2024', 'DD/MM/YYYY') AND (ADD_MONTHS(TO_DATE('01/03/2024', 'DD/MM/YYYY'), 1) - 1);


	
	
	/* Edition de RIB à la demande d’un étudiant, par exemple l'étudiant avec le nom Gauthier par l'agence LCP PARIS 13*/ 
connect LCPPARIS13/LCPPARIS13
	
	SELECT
  'Nom de la Banque: ' || a.nom_banque AS Nom_Banque,
   LPAD(a.code_agence, 5, '0') AS CODE_AGENCE,
  cli.nom_client || ' ' || cli.prenom_client || ', ' || cli.adr_p_client AS Client_Adresse,
  'IBAN du Compte: ' || SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 1, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 5, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 9, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 13, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 17, 4) || ' ' ||
                         SUBSTR(a.code_pays || a.cle_ctrl || a.code_banque || a.code_agence || cb.num_compte || cb.cle_rib, 21) AS IBAN,
  'BIC: ' || a.BIC AS BIC,
  'RIB: ' || a.code_banque || ' | ' || a.code_agence || ' | ' || cb.num_compte || ' | ' || cb.cle_rib || ' | ' || a.nom_agence AS RIB
FROM LCP.Client cli
  INNER JOIN Compte_Bancaire cb ON cli.id_client = cb.id_client
  INNER JOIN Agence_LCP a ON cli.code_agence = a.code_agence
WHERE UPPER(cli.nom_client) like UPPER('%Gauthier%');


/* Edition de synthèse des remboursements de prêt de l'etudiant avec le nom Gauthier par l'agence LCP PARIS 13*/  

SELECT 
    cli.nom_client || ' ' || cli.prenom_client AS Nom_Client,
    cli.adr_p_client AS Adresse_Client,
    infos.Annee_academique || ' - ' || infos.Diplome_prepare AS Infos_Etudiant,
    cont.numero_contrat AS Numero_Contrat,
    cont.Date_Souscription	AS Date_Souscription,
    emprunt.objet_credit AS Objet_Credit,
    emprunt.Montant_Credit AS Montant_Credit,
    conditions.type_remboursement AS Type_Remboursement,
    conditions.Prochaine_Echeance AS Prochaine_Echeance,
    conditions.Montant_Echeance AS Montant_Echeance,
    conditions.Taux_Nominal AS Taux_Nominal,
    conditions.Encours AS Encours
FROM 
    LCP.Client cli
    LEFT JOIN Infos_Etudiant_Client infos ON cli.id_client = infos.id_client
    LEFT JOIN Contrat cont ON cli.id_client = cont.id_client
    LEFT JOIN Emprunt_Contrat emprunt ON cont.numero_contrat = emprunt.numero_contrat
    LEFT JOIN Conditions_Amortissement conditions ON emprunt.id_conditions = conditions.id_conditions
WHERE UPPER(cli.nom_client) like UPPER('%Gauthier%');
	
disconnect

SPOOL OFF; 
