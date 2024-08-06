-- write a script print the full description of the table

SELECT column_name, column_type, is_nullable, column_key, column_default, extra FROM information_schema.columns WHERE TABLE_SCHEMA = 'hbtn_0c_0' AND TABLE_NAME = 'first_table';
