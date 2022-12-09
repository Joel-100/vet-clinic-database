/* Database schema to keep the structure of entire database. */

-- Create animals table
CREATE TABLE animals (
    id int GENERATED ALWAYS AS IDENTITY,
    name varchar(250),
    date_of_birth date,
	escape_attempts int,
	neutered boolean,
	weight_kg decimal,
	PRIMARY KEY(id)
);
