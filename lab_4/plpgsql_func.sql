CREATE FUNCTION get_item_plpgsql(name varchar)
    RETURNS INTEGER AS $$
    DECLARE
        id INTEGER;
    BEGIN
        SELECT "Id" INTO id FROM "Users" WHERE "Name" = name LIMIT 1;
        RETURN id;
    END;
$$LANGUAGE plpgsql;