create table log_date (
    id integer PRIMARY KEY AUTOINCREMENT,
    entry_date date NOT NULL
);

create table food(
    id integer PRIMARY KEY AUTOINCREMENT,
    name text NOT NULL,
    protein integer NOT NULL,
    carbohydrates integer NOT NULL,
    fat integer NOT NULL,
    calories integer NOT NULL
);

create table food_date(
    food_id integer NOT NULL,
    log_date_id integer NOT NULL,
    PRIMARY KEY(food_id, log_date_id)
);