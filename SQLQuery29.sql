CREATE TABLE [pfesalimdwh].[dbo].[factgitlab] (
    factgitlab_id INT IDENTITY(1,1) PRIMARY KEY,
    date_id INT NOT NULL,
    project_id INT NOT NULL,
    deployment_id INT NOT NULL
);
