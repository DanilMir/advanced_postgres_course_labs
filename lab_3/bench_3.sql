BEGIN;
SELECT * FROM table_3 WHERE name=substr(md5(random()::text), 0, 3);
END;