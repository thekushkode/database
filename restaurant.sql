CREATE TABLE restaurant (
    id SERIAL PRIMARY KEY,
    rest_name VARCHAR NOT NULL,
    proximity NUMERIC,
    star_rating NUMERIC,
    category VARCHAR,
    fav_dish VARCHAR,
    does_takeout BOOLEAN,
    last_visit DATE
);

INSERT INTO
    restaurant
VALUES
    (
        DEFAULT,
        'The Varsity',
        10.2,
        4.6,
        'Fast Food',
        'Chili Burger',
        FALSE,
        '2017-05re-21'
    ),
    (
        DEFAULT,
        'Chick-Fil-A',
        1.3,
        5.0,
        'Fast Food',
        '3 Grilled Chkn Sandys',
        TRUE,
        '2020-03-21'
    ),
    (
        DEFAULT,
        'Panda Express',
        3.2,
        4.4,
        'Fast Food',
        'Beijing Beef',
        TRUE,
        '2020-01-01'
    ),
    (
        DEFAULT,
        'Nuevo Laredo',
        3.2,
        4.8,
        'Mexican',
        'Barbacoa Fajitas',
        FALSE,
        '2019-12-21'
    ),
    (
        DEFAULT,
        'Thompson Bros',
        4.1,
        4.4,
        'BBQ',
        'BBQ Cicken Plate',
        TRUE,
        '2013-06-05'
    ),
    (
        DEFAULT,
        'Nan Thai',
        6.1,
        4.8,
        'Thai',
        'Chicken Curry',
        FALSE,
        '2019-11-08'
    );