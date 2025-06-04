CREATE TABLE factgitlab (
    factgitlab_id INT IDENTITY(1,1) PRIMARY KEY,  -- Clé primaire auto-incrémentée
    date_id INT NOT NULL,
    project_id INT NOT NULL,
    deployment_id INT NOT NULL,

);
