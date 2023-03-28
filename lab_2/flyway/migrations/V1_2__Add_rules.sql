CREATE OR REPLACE RULE redirect_insert_to_child1
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 0 AND 99999
DO INSTEAD
    INSERT INTO child_table_1 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child2
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 100000 AND 199999
DO INSTEAD
    INSERT INTO child_table_2 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child3
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 200000 AND 299999
DO INSTEAD
    INSERT INTO child_table_3 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child4
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 300000 AND 399999
DO INSTEAD
    INSERT INTO child_table_4 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child5
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 400000 AND 499999
DO INSTEAD
    INSERT INTO child_table_5 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child6
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 500000 AND 599999
DO INSTEAD
    INSERT INTO child_table_6 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child7
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 600000 AND 699999
DO INSTEAD
    INSERT INTO child_table_7 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child8
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 700000 AND 799999
DO INSTEAD
    INSERT INTO child_table_8 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child9
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 800000 AND 899999
DO INSTEAD
    INSERT INTO child_table_9 VALUES (NEW.id, NEW.name);

CREATE OR REPLACE RULE redirect_insert_to_child10
AS ON INSERT TO hub_table
    WHERE NEW.id BETWEEN 900000 AND 999999
DO INSTEAD
    INSERT INTO child_table_10 VALUES (NEW.id, NEW.name);