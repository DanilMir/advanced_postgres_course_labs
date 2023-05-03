CREATE INDEX hash_index ON table_1 USING hash(name);
CREATE INDEX btree_index ON table_2 USING btree(name);
CREATE INDEX brin_index ON table_3 USING brin(name);