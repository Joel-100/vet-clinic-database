/*Queries that provide answers to the questions from all projects.*/

SELECT * from ANIMALS WHERE name LIKE '%mon';
SELECT name FROM animals WHERE date_of_birth BETWEEN '2016-01-01' and '2019-12-31';
SELECT name FROM animals WHERE neutered IS true AND escape_attempts < 3;

SELECT date_of_birth FROM animals WHERE name = 'Agumon' OR name = 'Pikachu';

SELECT name, escape_attempts FROM animals WHERE weight_kg > 10.5;

SELECT * FROM animals WHERE neutered IS TRUE;

SELECT * FROM animals WHERE name != 'Gabumon';

SELECT * FROM animals WHERE weight_kg BETWEEN 10.4 AND 17.3;


/* update the animals table by setting the species column to unspecified */
-- Begin Transaction
BEGIN; 

-- Update species column to 'unspecified'
UPDATE animals
SET species = 'unspecified';

-- verify that change was made
SELECT * from animals;

-- roll back and verify that species column went back to state
ROLLBACK;

-- verify changes
SELECT * from animals; 

-- Update species column based on a condition
-- Transaction begins
  BEGIN;

  -- update species column for animals with names ending in mon
  UPDATE animals
  SET species = 'digimon'
  WHERE name LIKE '%mon';

  -- update species column for animals with names not ending in mon
  UPDATE animals
  SET species = 'pokemon'
  WHERE name NOT LIKE '%mon';

  -- commit transaction
  COMMIT;

  -- verify changes
  SELECT * from animals

-- Delete records
DELETE from animals;

-- verify all records are deleted
SELECT * from animals;

-- rollback changes
ROLLBACK;

-- verify all records still exist
SELECT * from animals;

-- queries
-- begin transaction
BEGIN;

-- delete all animals born after Jan 1st 2022
DELETE from animal
WHERE date_of_birth > '01-01-2022';

-- create a savepoint for the transaction
SAVEPOINT SP1;

-- update all animals' weights that are negative multiplied by -1
UPDATE animals
SET weight_kg = weight_kg * -1
WHERE weight_kg < 0;

-- commit the transactions
COMMIT;








