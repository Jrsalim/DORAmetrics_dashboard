CREATE TABLE factjira (
    factjira_id INT IDENTITY(1,1) PRIMARY KEY,  -- Clé primaire de la table de faits

    date_id INT NOT NULL,
    project_id INT NOT NULL,
    issue_id INT NOT NULL,
    sprint_id INT NOT NULL,
    [label_id] INT NOT NULL,

    -- Clés étrangères avec bons noms de tables et contraintes uniques
    CONSTRAINT fk_factjira_date     FOREIGN KEY (date_id)     REFERENCES dbo.dimtemps(date_id),
    CONSTRAINT fk_factjira_projet   FOREIGN KEY (project_id)  REFERENCES dbo.dimprojects(project_id),
    CONSTRAINT fk_factjira_issue    FOREIGN KEY (issue_id)    REFERENCES dbo.dimissues(issue_id),
    CONSTRAINT fk_factjira_sprint   FOREIGN KEY (sprint_id)   REFERENCES dbo.dimsprints(sprint_id),
    CONSTRAINT fk_factjira_label    FOREIGN KEY ([label_id])    REFERENCES dbo.dimlabels([label_id])
);
