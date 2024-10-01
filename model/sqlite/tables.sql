--- Roles:  It stores the roles of the team members
CREATE TABLE IF NOT EXISTS roles (
    roleID INT PRIMARY KEY,
    role_name TEXT NOT NULL,
    role_description TEXT(50) NULL
    role_updated_at TEXT    NULL    ,
    role_created_at TEXT    NULL    ,
);

CREATE TABLE IF NOT EXISTS increments (
    incrementID INTEGER PRIMARY KEY AUTOINCREMENT,
    incrementNumber INTEGER NOT NULL,
    startDate TEXT NOT NULL,
    endDate TEXT NOT NULL,
    duration INTEGER NULL,
    -- calculated working dayss
    workdays INTEGER NULL,
    increment_updated_at TEXT    NULL,
    increment_created_at TEXT    NULL
);
