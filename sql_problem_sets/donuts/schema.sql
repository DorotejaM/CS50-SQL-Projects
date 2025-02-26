CREATE TABLE ingredients (
    id NUMBER PRIMARY KEY,
    name TEXT NOT NULL,
    price_per_unit REAL NOT NULL
);

CREATE TABLE donuts (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    gluten_free BOOLEAN NOT NULL,
    price_per_unit REAL NOT NULL
);

CREATE TABLE donut_ingredients (
    donut_id INTEGER NOT NULL,
    ingredient_id INTEGERNOT NULL,
    FOREIGN KEY(donut_id) REFERENCES donuts(id),
    FOREIGN KEY(ingredient_id) REFERENCES ingredients(id),
    PRIMARY KEY(donut_id, ingredient_id)
);

CREATE TABLE orders (
    order_number INTEGER PRIMARY KEY,
    customer_id INTEGER NOT NULL,
    FOREIGN KEY(customer_id) REFERENCES customers(id)
);

CREATE TABLE orders_donuts (
    donut_id INTEGER NOT NULL,
    order_number INTEGER NOT NULL,
    quantity INTEGER NOT NULL,
    FOREIGN KEY(donut_id) REFERENCES donuts(id),
    FOREIGN KEY(order_number) REFERENCES orders(order_number),
    PRIMARY KEY(donut_id, order_number)

);

CREATE TABLE customers (
    id NUMBER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE customer_history (
    order_id INTEGER NOT NULL,
    customer_id INTEGER NOT NULL,
    date_time DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP,
    amount REAL NOT NULL,
    FOREIGN KEY(order_id) REFERENCES orders(id),
    FOREIGN KEY(customer_id) REFERENCES customers(id),
    PRIMARY KEY (order_id, customer_id)
);
