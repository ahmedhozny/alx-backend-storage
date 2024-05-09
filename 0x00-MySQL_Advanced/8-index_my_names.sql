-- Create index idx_name_first on names table for faster lookups
-- based on the first character of the name column.
CREATE INDEX idx_name_first ON names(name(1));
