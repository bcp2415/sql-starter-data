CREATE SCHEMA garden;

CREATE TABLE plant (
	plant_id INTEGER PRIMARY KEY auto_increment,
    plant_name VARCHAR(200),
    zone INTEGER,
	season ENUM ("Winter", "Spring", "Summer", "Fall")
);

CREATE TABLE seeds (
	seed_id INTEGER PRIMARY KEY AUTO_INCREMENT,
    expiration_date DATE,
    quantity INTEGER,
    reorder BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant (plant_id)
);

CREATE TABLE garden_bed (
	space_number INTEGER PRIMARY KEY AUTO_INCREMENT,
    date_planted DATE,
    doing_well BOOL,
    plant_id INTEGER,
    FOREIGN KEY (plant_id) REFERENCES plant (plant_id)
);

SELECT * FROM seeds
INNER JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

SELECT * FROM seeds
LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

SELECT * FROM seeds
RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

SELECT * FROM seeds
LEFT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id
UNION ALL
SELECT * FROM seeds
RIGHT JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id;

SELECT * FROM plant
WHERE plant_id IN (SELECT seeds.plant_id FROM seeds
INNER JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id);

SELECT plant_name, space_number, date_planted, seeds.quantity FROM seeds
INNER JOIN garden_bed ON seeds.plant_id = garden_bed.plant_id
INNER JOIN plant ON garden_bed.plant_id = plant.plant_id;

SELECT plant_id FROM plant
WHERE plant_name LIKE "Hosta";

INSERT INTO seeds (expiration_date, quantity, reorder, plant_id)
VALUES (08/05/2020, 100, false, (SELECT plant_id FROM plant
WHERE plant_name LIKE "Hosta"));

SELECT * FROM seeds;