CREATE TABLE factgitlab (
    factgitlab_id INT IDENTITY(1,1) PRIMARY KEY,  -- Cl� primaire auto-incr�ment�e
    date_id INT NOT NULL,
    project_id INT NOT NULL,
    deployment_id INT NOT NULL,

);
