CREATE TABLE map2 (
    map2_id INT IDENTITY(1,1) PRIMARY KEY,
    issue_id INT,
    sprint_id INT,
    project_id INT,
    developer_id INT,
    label_id INT,
    created DATE
);
