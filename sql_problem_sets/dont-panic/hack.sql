/*
SELECT * FROM items;
| id |          name           | price |

SELECT * FROM orders
LIMIT 5;
| id | user_id | item_id | quantity |

SELECT * FROM user_logs
LIMIT 5;
| id |  type  | old_username | new_username | old_password |           new_password           |

SELECT * FROM users
LIMIT 5;
| id | username |             password             |

*/

/*
UPDATE users SET password = '982c0381c279d139fd221fce974916e7'
    WHERE username = 'admin';

DELETE FROM user_logs
    WHERE  new_password = '982c0381c279d139fd221fce974916e7';

INSERT INTO "user_logs" ("type", 'old_username', 'new_username', "old_password", "new_password")
SELECT 'update', 'admin', 'admin','e10adc3949ba59abbe56e057f20f883e', (
    SELECT "password"
    FROM "users"
    WHERE "username" = 'emily33'
);
*/

INSERT INTO "user_logs" ("type", 'old_username', 'new_username', "old_password", "new_password")
SELECT 'update', 'admin', 'admin', (
    SELECT "password"
    FROM "users"
    WHERE "username" = 'admin'
),
(
    SELECT "password"
    FROM "users"
    WHERE "username" = 'emily33');

UPDATE users SET "password" = '982c0381c279d139fd221fce974916e7'
    WHERE username = 'admin';

DELETE FROM user_logs
    WHERE  new_password = '982c0381c279d139fd221fce974916e7';
