CREATE FUNCTION get_item_sql(name varchar)
    RETURNS INTEGER AS $$
    SELECT "Id" from "Users" WHERE "Name" = name LIMIT 1
$$LANGUAGE SQL;