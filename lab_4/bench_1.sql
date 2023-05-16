BEGIN;
SELECT get_item_sql(substr(md5(random()::varchar), 0, 4));
END;