CREATE TABLE [pfesalimstg].[dbo].[factgitlab] (
    factgitlab_id INT IDENTITY(1,1) PRIMARY KEY,  -- Identifiant unique auto-incr�ment�
    date_id DATE,                                  -- R�f�rence � la date (dimension temps)
    project_id INT,                               -- R�f�rence au projet
    deployment_id INT                             -- R�f�rence au d�ploiement
);
