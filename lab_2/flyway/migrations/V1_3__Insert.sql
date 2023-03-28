-- Генерируем 1 000 000 строк и вставляем их в таблицу hub
DO $$
DECLARE
  i INTEGER := 1;
BEGIN
  WHILE i <= 1000000 LOOP
    INSERT INTO hub_table VALUES (i, 'temp');
    i := i + 1;
  END LOOP;
END $$;