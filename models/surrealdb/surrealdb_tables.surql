-- Create the sprints table with automated sprint_duration
DEFINE TABLE sprints SCHEMAFULL;

DEFINE FIELD sprint_id ON sprints TYPE string; -- Unique identifier for the sprint
DEFINE FIELD sprint_number ON sprints TYPE int; -- Sprint number
DEFINE FIELD sprint_start_date ON sprints TYPE datetime; -- Start date of the sprint
DEFINE FIELD sprint_end_date ON sprints TYPE datetime; -- End date of the sprint
DEFINE FIELD sprint_start_dayOfWeek ON sprints TYPE string; -- Day of the week when the sprint starts
DEFINE FIELD sprint_end_dayOfWeek ON sprints TYPE string; -- Day of the week when the sprint ends

-- Automated sprint_duration calculation (difference in days between start and end date)
DEFINE FIELD sprint_duration ON sprints TYPE int 
  VALUE (sprint_end_date - sprint_start_date) / 1000 / 60 / 60 / 24;

-- Create the sprints_model table
DEFINE TABLE sprints_model SCHEMAFULL;

DEFINE FIELD sprint_id ON sprints_model TYPE string; -- Foreign key to the sprints table
DEFINE FIELD total_complexity ON sprints_model TYPE int; -- Total complexity of stories
DEFINE FIELD velocity ON sprints_model TYPE int; -- Velocity of the team
DEFINE FIELD accuracy ON sprints_model TYPE float; -- Accuracy of the estimation
DEFINE FIELD total_capacity ON sprints_model TYPE int; -- Total capacity in story points
DEFINE FIELD planned_stpoints ON sprints_model TYPE int; -- Planned story points
DEFINE FIELD complete_stpoints ON sprints_model TYPE int; -- Completed story points
DEFINE FIELD spilled_stpoints ON sprints_model TYPE int; -- Spilled story points
DEFINE FIELD cost_per_point ON sprints_model TYPE float; -- Cost per story point
DEFINE FIELD currency_unit ON sprints_model TYPE string; -- Currency unit ('dollars' or 'euros')

-- Ensure the sprint_id in sprints_model references an existing sprint in the sprints table
DEFINE INDEX idx_sprint_id ON sprints_model FIELDS sprint_id;
