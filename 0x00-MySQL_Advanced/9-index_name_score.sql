-- Create index idx_name_first_score on names table for faster lookups
-- based on the first character of the name column and the score column.
CREATE INDEX idx_name_first_score ON names(name(1), score);
