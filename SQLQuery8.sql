CREATE TABLE [pfesalimstg].[dbo].[factgitlab] (
    factgitlab_id INT IDENTITY(1,1) PRIMARY KEY,  -- Identifiant unique auto-incrémenté
    date_id DATE,                                  -- Référence à la date (dimension temps)
    project_id INT,                               -- Référence au projet
    deployment_id INT                             -- Référence au déploiement
);
