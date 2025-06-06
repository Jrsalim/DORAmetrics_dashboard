# DORA Metrics Dashboard

Ce dépôt regroupe les livrables de mon projet de fin d'études (PFE) visant à construire un tableau de bord DORA Metrics via SSIS, SSMS et Power BI.

## Contenu du dépôt

- `pfesalim.sln`  
  Solution SSIS (.sln) développée avec SQL Server Data Tools (SSDT) pour orchestrer l’extraction et le chargement des données.

- `*.sql`  
  Scripts SQL destinés à créer les tables et objets de la base de données dans SQL Server Management Studio (SSMS).

- `performance.pbix`  
  Fichier Power BI Desktop (.pbix) contenant les rapports et visualisations du tableau de bord.

## Prérequis

- Visual Studio avec SSDT (pour ouvrir et déployer la solution SSIS)  
- SQL Server Management Studio (pour exécuter les scripts SQL)  
- Power BI Desktop (pour ouvrir et publier le fichier .pbix)

## Instructions de mise en route

1. **Ouvrir** la solution SSIS :  
   - Lancez Visual Studio et chargez `pfesalim.sln`.

2. **Créer la base de données** :  
   - Exécutez les scripts `.sql` dans SSMS pour créer les schémas et tables nécessaires.

3. **Déployer et exécuter** les packages SSIS.

4. **Ouvrir** le fichier Power BI :  
   - Chargez `performance.pbix` dans Power BI Desktop, rafraîchissez les données et publiez votre rapport.

---

> **Note** : Adaptez les paramètres de connexion (chaînes de connexion SSIS, sources de données Power BI) selon votre environnement local.
