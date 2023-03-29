CREATE RULE update_rule AS ON UPDATE TO child_table_1
    WHERE OLD.id BETWEEN 0 AND 9999
    DO INSERT INTO hub_table VALUES (
                                    500000,
                                    OLD.name
                                );

CREATE RULE update_rule AS ON UPDATE TO child_table_2
    WHERE OLD.id BETWEEN 100000 AND 109999
    DO INSERT INTO hub_table VALUES (
                                    600000,
                                    OLD.name
                                );

CREATE RULE update_rule AS ON UPDATE TO child_table_3
    WHERE OLD.id BETWEEN 200000 AND 209999
    DO INSERT INTO hub_table VALUES (
                                    700000,
                                    OLD.name
                                );

CREATE RULE update_rule AS ON UPDATE TO child_table_4
    WHERE OLD.id BETWEEN 300000 AND 309999
    DO INSERT INTO hub_table VALUES (
                                    800000,
                                    OLD.name
                                );
CREATE RULE update_rule AS ON UPDATE TO child_table_5
    WHERE OLD.id BETWEEN 400000 AND 409999
    DO INSERT INTO hub_table VALUES (
                                    999999,
                                    OLD.name
                                );
CREATE RULE nothing_rule AS ON UPDATE TO child_table_6
    DO INSTEAD NOTHING;

CREATE RULE nothing_rule AS ON UPDATE TO child_table_7
    DO INSTEAD NOTHING;

CREATE RULE nothing_rule AS ON UPDATE TO child_table_8
    DO INSTEAD NOTHING;

CREATE RULE nothing_rule AS ON UPDATE TO child_table_9
    DO INSTEAD NOTHING;

CREATE RULE nothing_rule AS ON UPDATE TO child_table_10
    DO INSTEAD NOTHING;