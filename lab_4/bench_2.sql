BEGIN;
SELECT get_item_plpgsql(substr(md5(random()::varchar), 0, 4));
END;