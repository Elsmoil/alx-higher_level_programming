-- Step 1: Convert the database charset and collation
ALTER DATABASE `hbtn_0c_0`
    CHARACTER SET = utf8mb4
    COLLATE = utf8mb4_unicode_ci;

-- Step 2: Convert the charset and collation of the `first_table`

ALTER TABLE first_table FROM hbtn_0c_0
    CONVERT TO CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

-- Step 3: Convert the charset and collation of the `name` field in `first_table`
ALTER TABLE first_table
    MODIFY `name` VARCHAR(256) CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

