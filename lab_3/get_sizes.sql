SELECT pg_size_pretty (pg_relation_size('hash_index'));
SELECT pg_size_pretty (pg_relation_size('btree_index'));
SELECT pg_size_pretty (pg_relation_size('brin_index'));