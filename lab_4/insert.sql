DO $$
DECLARE
  i INTEGER := 1;
BEGIN
  WHILE i <= 140000 LOOP
    INSERT INTO Users VALUES (i, substr(md5(random()::VARCHAR), 0, 4));
    i := i + 1;
  END LOOP;
END $$;

