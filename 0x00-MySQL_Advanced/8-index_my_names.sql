-- 8-index_my_names.sql
-- Create index
CREATE INDEX idx_name_first ON names (SUBSTRING(name, 1, 1));
