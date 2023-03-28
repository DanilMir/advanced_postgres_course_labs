-- Создаем таблицу-концентратор
CREATE TABLE hub_table (
  id INT PRIMARY KEY,
  name VARCHAR(255) NOT NULL
);

-- Создаем дочерние таблицы

CREATE TABLE child_table_1 (
  field1 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_2 (
  field2 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_3 (
  field3 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_4 (
  field4 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_5 (
  field5 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_6 (
  field6 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_7 (
  field7 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_8 (
  field8 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_9 (
  field9 TEXT
) INHERITS (hub_table);

CREATE TABLE child_table_10 (
  field10 TEXT
) INHERITS (hub_table);


ALTER TABLE child_table_1 ADD CONSTRAINT id_check CHECK(id >= 0 AND id < 100000);
ALTER TABLE child_table_2 ADD CONSTRAINT id_check CHECK(id >= 100000 AND id < 200000);
ALTER TABLE child_table_3 ADD CONSTRAINT id_check CHECK(id >= 200000 AND id < 300000);
ALTER TABLE child_table_4 ADD CONSTRAINT id_check CHECK(id >= 300000 AND id < 400000);
ALTER TABLE child_table_5 ADD CONSTRAINT id_check CHECK(id >= 400000 AND id < 500000);
ALTER TABLE child_table_6 ADD CONSTRAINT id_check CHECK(id >= 500000 AND id < 600000);
ALTER TABLE child_table_7 ADD CONSTRAINT id_check CHECK(id >= 600000 AND id < 700000);
ALTER TABLE child_table_8 ADD CONSTRAINT id_check CHECK(id >= 700000 AND id < 800000);
ALTER TABLE child_table_9 ADD CONSTRAINT id_check CHECK(id >= 800000 AND id < 900000);
ALTER TABLE child_table_10 ADD CONSTRAINT id_check CHECK(id >= 900000 AND id < 1000000);