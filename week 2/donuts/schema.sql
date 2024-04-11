CREATE TABLE Ingredients (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    price REAL NOT NULL,
    unit TEXT NOT NULL
);

CREATE TABLE Donuts (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    is_gluten_free BOOLEAN NOT NULL,
    price REAL NOT NULL
);

CREATE TABLE DonutIngredients (
    donut_id INTEGER,
    ingredient_id INTEGER,
    FOREIGN KEY(donut_id) REFERENCES Donuts(id),
    FOREIGN KEY(ingredient_id) REFERENCES Ingredients(id)
);

CREATE TABLE Customers (
    id INTEGER PRIMARY KEY,
    first_name TEXT NOT NULL,
    last_name TEXT NOT NULL
);

CREATE TABLE Orders (
    id INTEGER PRIMARY KEY,
    customer_id INTEGER,
    FOREIGN KEY(customer_id) REFERENCES Customers(id)
);

CREATE TABLE OrderDetails (
    order_id INTEGER,
    donut_id INTEGER,
    quantity INTEGER NOT NULL,
    FOREIGN KEY(order_id) REFERENCES Orders(id),
    FOREIGN KEY(donut_id) REFERENCES Donuts(id)
);
