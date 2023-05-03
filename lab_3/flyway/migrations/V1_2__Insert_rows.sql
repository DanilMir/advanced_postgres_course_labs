-- Генерируем 100 000 строк и вставляем их в таблицу table_1
DO $$
DECLARE
  i INTEGER := 1;
BEGIN
  WHILE i <= 100000 LOOP
    INSERT INTO table_1 VALUES (i, substr(md5(random()::text), 0, 3));
    i := i + 1;
  END LOOP;
END $$;


-- Генерируем 100 000 строк и вставляем их в таблицу table_2
DO $$
DECLARE
  i INTEGER := 1;
BEGIN
  WHILE i <= 100000 LOOP
    INSERT INTO table_2 VALUES (i, substr(md5(random()::text), 0, 3));
    i := i + 1;
  END LOOP;
END $$;


-- Генерируем 100 000 строк и вставляем их в таблицу table_3
DO $$
DECLARE
  i INTEGER := 1;
BEGIN
  WHILE i <= 100000 LOOP
    INSERT INTO table_3 VALUES (i, substr(md5(random()::text), 0, 3));
    i := i + 1;
  END LOOP;
END $$;