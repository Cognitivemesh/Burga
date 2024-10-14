--- Roles:  It stores the roles of the team members
CREATE TABLE IF NOT EXISTS roles (
    role_id INT PRIMARY KEY,
    role_name TEXT NOT NULL,
    role_description TEXT(50) NULL
    role_updated_at TEXT    NULL    ,
    role_created_at TEXT    NULL    ,
);

CREATE TABLE IF NOT EXISTS increments (
    increment_id INTEGER PRIMARY KEY AUTOINCREMENT,
    increment_number INTEGER NOT NULL,
    increment_startDate TEXT NOT NULL,
    increment_endDate TEXT NOT NULL,
    increment_duration INTEGER NULL,
    -- calculated working dayss
    increment_workdays INTEGER NULL,
    increment_updated_at TEXT    NULL,
    increment_created_at TEXT    NULL
);

-- Create the sprints_model table
CREATE TABLE IF NOT EXISTS sprints_model (
   -- sprint model id
    sprint_model_id INTEGER PRIMARY KEY AUTOINCREMENT,
    -- Foreign key to the sprints table
    sprint_id INTEGER NOT NULL,
    -- Total complexity of the stories in the sprint
    total_complexity INTEGER NULL,
    -- Velocity of the team during the sprint
    velocity NUMBER NULL,
    -- Accuracy of story points estimation (e.g., 0.9 for 90%)
    accuracy NUMBER NULL,
    -- Total capacity in story points
    total_capacity NUMBER NULL,
   -- Story points planned for the sprint
    planned_stpoints NUMBER NULL,
   -- Story points completed in the sprint
    complete_stpoints NUMBER NULL,
   -- Story points spilled to the next sprint
    spilled_stpoints NUMBER NULL,
   -- Cost per story point (in the specified currency)
    cost_per_point NUMBER NULL,
   -- Currency unit, either 'dollars' or 'euros'
    currency_unit TEXT NULL,
  -- model updated and created
    sprint_model_updated_at TEXT    NULL,
  -- model created at
    sprint_model_created_at TEXT    NULL
    
    -- Setting a foreign key relationship with the sprints table
    FOREIGN KEY (sprint_id) REFERENCES sprints(sprint_id)
);
