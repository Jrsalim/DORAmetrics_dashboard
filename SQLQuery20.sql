CREATE TABLE factgitlab (
    factgitlab_id INT IDENTITY(1,1) PRIMARY KEY,  -- Clé primaire de la table de faits (facultatif mais recommandé)

    date_id INT NOT NULL,
    project_id INT NOT NULL,
    deployment_id INT NOT NULL,


    -- Clés étrangères
    CONSTRAINT fk_fact_date FOREIGN KEY (date_id) REFERENCES dimtemps(date_id),
    CONSTRAINT fk_fact_projet FOREIGN KEY (project_id) REFERENCES dimprojects(project_id),
    CONSTRAINT fk_fact_deployment FOREIGN KEY (deployment_id) REFERENCES dimdeployments(deployment_id)
);
