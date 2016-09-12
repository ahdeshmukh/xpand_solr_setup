DROP DATABASE IF EXISTS solr_tutorial;
CREATE DATABASE solr_tutorial;
USE solr_tutorial;

CREATE TABLE animals(
	id INT(4) NOT NULL AUTO_INCREMENT,
	name VARCHAR(25),
	description TEXT,
	created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	UNIQUE KEY name (name)
);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Tiger', 'The tiger (Panthera tigris) is the largest cat species, most recognisable for their pattern of dark vertical stripes on reddish-orange fur with a lighter underside. They are territorial and generally solitary but social animals, often requiring large contiguous areas of habitat that support their prey requirements.', NULL, NULL);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Lion', 'The lion (Panthera leo) is one of the big cats in the genus Panthera and a member of the family Felidae. The commonly used term African lion collectively denotes the several subspecies in Africa. It is the second-largest living cat after the tiger.', NULL, NULL);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Elephant', 'Elephants are large mammals of the family Elephantidae and the order Proboscidea. Two species are traditionally recognised, the African elephant (Loxodonta africana) and the Asian elephant (Elephas maximus). Elephants are herbivorous and can be found in different habitats including savannahs, forests, deserts and marshes.', NULL, NULL);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Crocodile', 'Crocodiles (subfamily Crocodylinae) or true crocodiles are large aquatic reptiles that live throughout the tropics in Africa, Asia, the Americas and Australia. Crocodylinae, all of whose members are considered true crocodiles, is classified as a biological subfamily. All crocodiles are semiaquatic and tend to congregate in freshwater habitats such as rivers, lakes, wetlands and sometimes in brackish water and saltwater.', NULL, NULL);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Bear', 'Bears are mammals of the family Ursidae. Bears are classified as caniforms, or doglike carnivorans, with the pinnipeds being their closest living relatives. Although only eight species of bears are extant, they are widespread, appearing in a wide variety of habitats throughout the Northern Hemisphere and partially in the Southern Hemisphere. Bears are found on the continents of North America, South America, Europe, and Asia.', NULL, NULL);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Rhinoceros', 'A rhinoceros, often abbreviated to rhino, is one of any five extant species of odd-toed ungulates in the family Rhinocerotidae, as well as any of the numerous extinct species. Two of these extant species are native to Africa and three to Southern Asia.', NULL, NULL);

INSERT INTO animals(id, name, description, created_time, updated_time) VALUES(NULL, 'Zebra', 'Zebra are several species of African equids (horse family) united by their distinctive black and white striped coats. Their stripes come in different patterns, unique to each individual. They are generally social animals that live in small harems to large herds. Unlike their closest relatives the horses and donkeys, zebras have never been truly domesticated.', NULL, NULL);

CREATE TABLE tags(
	id INT(4) NOT NULL AUTO_INCREMENT,
	name VARCHAR(25),
	created_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
	updated_time TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
	PRIMARY KEY (id),
	UNIQUE KEY name (name)
);

INSERT INTO tags(id, name, created_time, updated_time) VALUES(NULL, 'carnivore', NULL, NULL);
INSERT INTO tags(id, name, created_time, updated_time) VALUES(NULL, 'herbivore', NULL, NULL);
INSERT INTO tags(id, name, created_time, updated_time) VALUES(NULL, 'omnivore', NULL, NULL);
INSERT INTO tags(id, name, created_time, updated_time) VALUES(NULL, 'feline', NULL, NULL);
INSERT INTO tags(id, name, created_time, updated_time) VALUES(NULL, 'pachyderm', NULL, NULL);
INSERT INTO tags(id, name, created_time, updated_time) VALUES(NULL, 'reptile', NULL, NULL);

CREATE TABLE animals_tags(
	id INT(4) NOT NULL AUTO_INCREMENT,
	animal_id INT(4) NOT NULL,
	tag_id INT(4) NOT NULL,
	PRIMARY KEY (id),
	CONSTRAINT animals_fk FOREIGN KEY (animal_id) REFERENCES animals (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	CONSTRAINT tags_fk FOREIGN KEY (tag_id) REFERENCES tags (id) ON DELETE NO ACTION ON UPDATE NO ACTION,
	UNIQUE KEY animals_tags_unique (animal_id, tag_id)
);

INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 1, 1);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 1, 4);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 2, 1);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 2, 4);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 3, 2);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 3, 5);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 4, 1);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 4, 6);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 5, 3);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 6, 2);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 6, 5);
INSERT INTO animals_tags(id, animal_id, tag_id) VALUES(NULL, 7, 2);