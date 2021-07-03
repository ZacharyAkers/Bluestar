CREATE TABLE users {
    id serial PRIMARY KEY,
    name varchar(30) NOT NULL,
    email varchar(50) NOT NULL
};

CREATE TABLE player {
    id serial PRIMARY KEY,
    name varchar(50) NOT NULL,
    race text NOT NULL,
    class text NOT NULL,
    alive smallint NOT NULL,
    level smallint NOT NULL,
    xp bigint NOT NULL,
    money bigint NOT NULL,
    user_id integer REFERENCES users(id)
};

CREATE TABLE attributes {
    id serial PRIMARY KEY,
    name varchar(255) NOT NULL,
    desc varchar(255)
};

INSERT INTO attributes (name, desc) VALUES ('strength', 'A measure of how physically strong a character is');
INSERT INTO attributes (name, desc) VALUES ('constitution', 'A measure of how resilient a character is.');
INSERT INTO attributes (name, desc) VALUES ('dexterity', 'A measure of how agile a character is.');
INSERT INTO attributes (name, desc) VALUES ('intelligence', 'A measure of a character''s problem-solving ability.');
INSERT INTO attributes (name, desc) VALUES ('wisdom', 'A measure of a character''s common sense and/or spirituality.');
INSERT INTO attributes (name, desc) VALUES ('willpower', 'A measure of the character''s mental resistance.');
INSERT INTO attributes (name, desc) VALUES ('perception', 'A measure of a character''s openness to their surroundings.');
INSERT INTO attributes (name, desc) VALUES ('damage', 'A measure to inflict damage');

CREATE TABLE player_attribute {
    id serial PRIMARY KEY,
    player_id integer REFERENCES player(id),
    attribute_id integer REFERENCES attributes(id)
};