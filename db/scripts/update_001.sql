CREATE TABLE IF NOT EXISTS auto_user
(
    id   SERIAL PRIMARY KEY,
    name TEXT,
    login varchar(30) unique,
    password text
);

CREATE TABLE IF NOT EXISTS auto_post
(
    id   SERIAL PRIMARY KEY,
    name TEXT,
    description TEXT,
    created timestamp,
    auto_user_id int references auto_user(id)
);
