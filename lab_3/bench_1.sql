BEGIN;
SELECT * FROM table_1 WHERE name=substr(md5(random()::text), 0, 3);
END;