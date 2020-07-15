USE music;

-- -----------------------------------------------------
-- Table `music`.`ambito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `music`.`ambito` (
  `id_ambito` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `tipo` VARCHAR(255) NULL,
  PRIMARY KEY (`id_ambito`));


-- -----------------------------------------------------
-- Table `music`.`artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `music`.`artista` (
  `id_artista` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NOT NULL,
  `bio` VARCHAR(255) NULL,
  PRIMARY KEY (`id_artista`));


-- -----------------------------------------------------
-- Table `music`.`cancion`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `music`.`cancion` (
  `id_cancion` VARCHAR(255) NOT NULL,
  `nombre` VARCHAR(255) NULL,
  PRIMARY KEY (`id_cancion`));


-- -----------------------------------------------------
-- Table `music`.`cancion_ambito`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `music`.`cancion_ambito` (
  `id_cancion_ambito` INT NOT NULL AUTO_INCREMENT,
  `id_cancion` VARCHAR(255) NOT NULL,
  `id_ambito` VARCHAR(255) NOT NULL,
  `orden` INT NOT NULL,
  PRIMARY KEY (`id_cancion_ambito`),
  FOREIGN KEY (`id_cancion`) REFERENCES `music`.`cancion`(id_cancion),
  FOREIGN KEY (`id_ambito`) REFERENCES `music`.`ambito`(id_ambito));


-- -----------------------------------------------------
-- Table `music`.`ambito_artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `music`.`ambito_artista` (
  `id_ambito_artista` INT NOT NULL AUTO_INCREMENT,
  `id_artista` VARCHAR(255) NOT NULL,
  `id_ambito` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_ambito_artista`),
  FOREIGN KEY (`id_artista`) REFERENCES `music`.`artista`(id_artista),
  FOREIGN KEY (`id_ambito`) REFERENCES `music`.`ambito`(id_ambito));


-- -----------------------------------------------------
-- Table `music`.`cancion_artista`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `music`.`cancion_artista` (
  `id_cancion_artista` INT NOT NULL AUTO_INCREMENT,
  `id_cancion` VARCHAR(255) NOT NULL,
  `id_artista` VARCHAR(255) NOT NULL,
  PRIMARY KEY (`id_cancion_artista`),
  FOREIGN KEY (`id_cancion`) REFERENCES `music`.`cancion`(id_cancion),
  FOREIGN KEY (`id_artista`) REFERENCES `music`.`artista`(id_artista));

 -- -----------------------------------------------------
 -- Inserts
 -- -----------------------------------------------------

 -- Artistas

INSERT INTO `music`.`artista` (id_artista, nombre) VALUES ("70523e4c-fdec-4f23-b555-25ccd5e69eb6", "The Beatles");
INSERT INTO `music`.`artista` (id_artista, nombre) VALUES ("394a202e-745e-4724-ab77-5f74bb255733", "Guns N' Roses");
INSERT INTO `music`.`artista` (id_artista, nombre) VALUES ("3c6e78ef-5bed-4667-b6f3-e2d00ec6bd56", "Billy Joel");
INSERT INTO `music`.`artista` (id_artista, nombre) VALUES ("1015c1c1-382e-4ea6-b94b-3c9b0f1808d1", "Electric Light Orchestra");
INSERT INTO `music`.`artista` (id_artista, nombre) VALUES ("eb198b6e-20eb-45c9-8c91-e5a8be7000be", "Queen");

 -- Ambitos

INSERT INTO `music`.`ambito` VALUES ("c0524bb7-179a-47e5-a3b6-0df4164bfeab", "Sgt. Pepper's Lonely Heart Club Band", "album");
INSERT INTO `music`.`ambito` VALUES ("eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5", "Abbey Road", "album");
INSERT INTO `music`.`ambito` VALUES ("04a32389-930f-41d3-9d79-a62a0bfdc7c9", "Appetite for Destruction", "album");
INSERT INTO `music`.`ambito` VALUES ("7e8fba26-d300-4e75-a13b-5053c994ea68", "Use Your Illusion II", "album");
INSERT INTO `music`.`ambito` VALUES ("ef4a7035-a7ea-4a51-8e57-8505fe611c7e", "70s Rock", "playlist");
INSERT INTO `music`.`ambito` VALUES ("a98cf4a0-8df8-4b17-9c04-a7e54565e16d", "Queen Radio", "radio");
INSERT INTO `music`.`ambito` VALUES ("0841a0de-e2b1-496a-a72a-45b72371d49c", "80's Hard Rock", "playlist");

-- Canciones

INSERT INTO `music`.`cancion` VALUES ("6b6f59fd-6646-426d-8b30-9e72eba85a9d", "Getting Better");
INSERT INTO `music`.`cancion` VALUES ("a98dafaa-a509-477c-a675-620c346138f0", "Fixing a Hole");
INSERT INTO `music`.`cancion` VALUES ("ca2abc4e-2124-448e-8620-850f7415b71c", "She's Leaving Home");
INSERT INTO `music`.`cancion` VALUES ("fc3ea933-0296-475d-9d69-5b0a29722931", "Being for the Benefit of Mr. Kite!");
INSERT INTO `music`.`cancion` VALUES ("458b3319-3c15-46f7-afb1-96e1fb1fb306", "A Day in the Life");

INSERT INTO `music`.`cancion` VALUES ("01ddc30e-a926-4f57-b1d5-820ad33b6aa4", "You Never Give Me Your Money");
INSERT INTO `music`.`cancion` VALUES ("34ce3a33-e9ce-4810-bae5-7027d8b478f0", "Sun King");
INSERT INTO `music`.`cancion` VALUES ("75077243-cbf7-43c3-bd83-987b8f70323f", "Golden Slumbers");
INSERT INTO `music`.`cancion` VALUES ("98daab47-ed8c-4ec8-8bd9-0bdaae694166", "Carry That Weight");
INSERT INTO `music`.`cancion` VALUES ("6eaccf3c-68ab-47c7-a797-99533b5d58ab", "The End");

INSERT INTO `music`.`cancion` VALUES ("acf5f441-09d9-453a-939a-c574d8394c92", "Welcome to the Jungle");
INSERT INTO `music`.`cancion` VALUES ("cc630a52-487e-434e-986e-93f65a0fb6eb", "Nightrain");
INSERT INTO `music`.`cancion` VALUES ("336cf7ef-707c-4025-a949-587735de3302", "Mr. Brownstone");
INSERT INTO `music`.`cancion` VALUES ("f25b4b25-383d-494b-b75c-9117c10bf224", "My Michelle");
INSERT INTO `music`.`cancion` VALUES ("02094eac-18cc-413d-b3ce-2f0f6313d20e", "Rocket Queen");

INSERT INTO `music`.`cancion` VALUES ("41ea9be5-478f-4c19-832d-9eb3f678b41a", "Civil War");
INSERT INTO `music`.`cancion` VALUES ("92fc8d06-81c9-49a9-ad76-fb78b2dcc23a", "14 Years");
INSERT INTO `music`.`cancion` VALUES ("f2ce176b-064c-4873-b34a-134c129d9195", "Knockin' on Heaven's Door");
INSERT INTO `music`.`cancion` VALUES ("23859d1a-65ae-44a9-9ff3-ecdf9e728837", "Estranged");
INSERT INTO `music`.`cancion` VALUES ("ae35e193-66bb-4e58-bba9-28c17862c503", "You Could Be Mine");

INSERT INTO `music`.`cancion` VALUES ("b5c638d8-f1fa-43ef-8a85-d7c429624cfb", "Vienna");
INSERT INTO `music`.`cancion` VALUES ("96531353-5a92-4d43-97e6-ec1844ebd017", "Movin' Out (Anthony's Song)");
INSERT INTO `music`.`cancion` VALUES ("f5ba3199-9343-49c3-a6ae-705b6171f516", "Bluebird is Dead");
INSERT INTO `music`.`cancion` VALUES ("dd5a9366-07ad-488c-9ade-78f4a9b500bb", "Showdown");
INSERT INTO `music`.`cancion` VALUES ("9a092afd-f959-4450-84ec-051380f8942d", "Killer Queen");

INSERT INTO `music`.`cancion` VALUES ("855b74aa-9e87-4ab9-8630-3981fcd9cbfe", "March of the Black Queen");
INSERT INTO `music`.`cancion` VALUES ("74eee105-f8ab-443d-a50d-caebb935a324", "My Melancholy Blues");
INSERT INTO `music`.`cancion` VALUES ("68656eb8-bed1-40f1-ba1b-9c8021217477", "The Prophet's Song");
INSERT INTO `music`.`cancion` VALUES ("23bf2588-d7ea-4ed3-aa50-595881732ff5", "Ogre Battle");

 -- Cancion-Ambito

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("6b6f59fd-6646-426d-8b30-9e72eba85a9d", "c0524bb7-179a-47e5-a3b6-0df4164bfeab", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("a98dafaa-a509-477c-a675-620c346138f0", "c0524bb7-179a-47e5-a3b6-0df4164bfeab", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("ca2abc4e-2124-448e-8620-850f7415b71c", "c0524bb7-179a-47e5-a3b6-0df4164bfeab", 3);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("fc3ea933-0296-475d-9d69-5b0a29722931", "c0524bb7-179a-47e5-a3b6-0df4164bfeab", 4);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("458b3319-3c15-46f7-afb1-96e1fb1fb306", "c0524bb7-179a-47e5-a3b6-0df4164bfeab", 5);

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("01ddc30e-a926-4f57-b1d5-820ad33b6aa4", "eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("34ce3a33-e9ce-4810-bae5-7027d8b478f0", "eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("75077243-cbf7-43c3-bd83-987b8f70323f", "eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5", 3);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("98daab47-ed8c-4ec8-8bd9-0bdaae694166", "eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5", 4);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("6eaccf3c-68ab-47c7-a797-99533b5d58ab", "eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5", 5);

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("acf5f441-09d9-453a-939a-c574d8394c92", "04a32389-930f-41d3-9d79-a62a0bfdc7c9", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("cc630a52-487e-434e-986e-93f65a0fb6eb", "04a32389-930f-41d3-9d79-a62a0bfdc7c9", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("336cf7ef-707c-4025-a949-587735de3302", "04a32389-930f-41d3-9d79-a62a0bfdc7c9", 3);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("f25b4b25-383d-494b-b75c-9117c10bf224", "04a32389-930f-41d3-9d79-a62a0bfdc7c9", 4);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("02094eac-18cc-413d-b3ce-2f0f6313d20e", "04a32389-930f-41d3-9d79-a62a0bfdc7c9", 5);

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("41ea9be5-478f-4c19-832d-9eb3f678b41a", "7e8fba26-d300-4e75-a13b-5053c994ea68", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("92fc8d06-81c9-49a9-ad76-fb78b2dcc23a", "7e8fba26-d300-4e75-a13b-5053c994ea68", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("f2ce176b-064c-4873-b34a-134c129d9195", "7e8fba26-d300-4e75-a13b-5053c994ea68", 3);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("23859d1a-65ae-44a9-9ff3-ecdf9e728837", "7e8fba26-d300-4e75-a13b-5053c994ea68", 4);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("ae35e193-66bb-4e58-bba9-28c17862c503", "7e8fba26-d300-4e75-a13b-5053c994ea68", 5);

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("b5c638d8-f1fa-43ef-8a85-d7c429624cfb", "ef4a7035-a7ea-4a51-8e57-8505fe611c7e", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("96531353-5a92-4d43-97e6-ec1844ebd017", "ef4a7035-a7ea-4a51-8e57-8505fe611c7e", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("f5ba3199-9343-49c3-a6ae-705b6171f516", "ef4a7035-a7ea-4a51-8e57-8505fe611c7e", 3);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("dd5a9366-07ad-488c-9ade-78f4a9b500bb", "ef4a7035-a7ea-4a51-8e57-8505fe611c7e", 4);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("9a092afd-f959-4450-84ec-051380f8942d", "ef4a7035-a7ea-4a51-8e57-8505fe611c7e", 5);

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("855b74aa-9e87-4ab9-8630-3981fcd9cbfe", "a98cf4a0-8df8-4b17-9c04-a7e54565e16d", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("74eee105-f8ab-443d-a50d-caebb935a324", "a98cf4a0-8df8-4b17-9c04-a7e54565e16d", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("68656eb8-bed1-40f1-ba1b-9c8021217477", "a98cf4a0-8df8-4b17-9c04-a7e54565e16d", 3);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("23bf2588-d7ea-4ed3-aa50-595881732ff5", "a98cf4a0-8df8-4b17-9c04-a7e54565e16d", 4);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("9a092afd-f959-4450-84ec-051380f8942d", "a98cf4a0-8df8-4b17-9c04-a7e54565e16d", 5);

INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("23859d1a-65ae-44a9-9ff3-ecdf9e728837", "0841a0de-e2b1-496a-a72a-45b72371d49c", 1);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("ae35e193-66bb-4e58-bba9-28c17862c503", "0841a0de-e2b1-496a-a72a-45b72371d49c", 2);
INSERT INTO `music`.`cancion_ambito` (id_cancion, id_ambito, orden) VALUES ("02094eac-18cc-413d-b3ce-2f0f6313d20e", "0841a0de-e2b1-496a-a72a-45b72371d49c", 3);

 -- Album-Artista

INSERT INTO `music`.`ambito_artista` (id_artista, id_ambito) VALUES ("70523e4c-fdec-4f23-b555-25ccd5e69eb6", "c0524bb7-179a-47e5-a3b6-0df4164bfeab");
INSERT INTO `music`.`ambito_artista` (id_artista, id_ambito) VALUES ("70523e4c-fdec-4f23-b555-25ccd5e69eb6", "eff0bfb7-1907-4b98-b093-3f5ca7fbe3a5");
INSERT INTO `music`.`ambito_artista` (id_artista, id_ambito) VALUES ("394a202e-745e-4724-ab77-5f74bb255733", "04a32389-930f-41d3-9d79-a62a0bfdc7c9");
INSERT INTO `music`.`ambito_artista` (id_artista, id_ambito) VALUES ("394a202e-745e-4724-ab77-5f74bb255733", "7e8fba26-d300-4e75-a13b-5053c994ea68");
INSERT INTO `music`.`ambito_artista` (id_artista, id_ambito) VALUES ("eb198b6e-20eb-45c9-8c91-e5a8be7000be", "a98cf4a0-8df8-4b17-9c04-a7e54565e16d");


 -- Cancion-Artista

INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("6b6f59fd-6646-426d-8b30-9e72eba85a9d", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("a98dafaa-a509-477c-a675-620c346138f0", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("ca2abc4e-2124-448e-8620-850f7415b71c", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("fc3ea933-0296-475d-9d69-5b0a29722931", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("458b3319-3c15-46f7-afb1-96e1fb1fb306", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("01ddc30e-a926-4f57-b1d5-820ad33b6aa4", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("34ce3a33-e9ce-4810-bae5-7027d8b478f0", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("75077243-cbf7-43c3-bd83-987b8f70323f", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("98daab47-ed8c-4ec8-8bd9-0bdaae694166", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("6eaccf3c-68ab-47c7-a797-99533b5d58ab", "70523e4c-fdec-4f23-b555-25ccd5e69eb6");

INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("acf5f441-09d9-453a-939a-c574d8394c92", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("cc630a52-487e-434e-986e-93f65a0fb6eb", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("336cf7ef-707c-4025-a949-587735de3302", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("f25b4b25-383d-494b-b75c-9117c10bf224", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("02094eac-18cc-413d-b3ce-2f0f6313d20e", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("41ea9be5-478f-4c19-832d-9eb3f678b41a", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("92fc8d06-81c9-49a9-ad76-fb78b2dcc23a", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("f2ce176b-064c-4873-b34a-134c129d9195", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("23859d1a-65ae-44a9-9ff3-ecdf9e728837", "394a202e-745e-4724-ab77-5f74bb255733");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("ae35e193-66bb-4e58-bba9-28c17862c503", "394a202e-745e-4724-ab77-5f74bb255733");

INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("b5c638d8-f1fa-43ef-8a85-d7c429624cfb", "3c6e78ef-5bed-4667-b6f3-e2d00ec6bd56");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("96531353-5a92-4d43-97e6-ec1844ebd017", "3c6e78ef-5bed-4667-b6f3-e2d00ec6bd56");

INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("f5ba3199-9343-49c3-a6ae-705b6171f516", "1015c1c1-382e-4ea6-b94b-3c9b0f1808d1");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("dd5a9366-07ad-488c-9ade-78f4a9b500bb", "1015c1c1-382e-4ea6-b94b-3c9b0f1808d1");

INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("9a092afd-f959-4450-84ec-051380f8942d", "eb198b6e-20eb-45c9-8c91-e5a8be7000be");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("855b74aa-9e87-4ab9-8630-3981fcd9cbfe", "eb198b6e-20eb-45c9-8c91-e5a8be7000be");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("74eee105-f8ab-443d-a50d-caebb935a324", "eb198b6e-20eb-45c9-8c91-e5a8be7000be");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("68656eb8-bed1-40f1-ba1b-9c8021217477", "eb198b6e-20eb-45c9-8c91-e5a8be7000be");
INSERT INTO `music`.`cancion_artista` (id_cancion, id_artista) VALUES ("23bf2588-d7ea-4ed3-aa50-595881732ff5", "eb198b6e-20eb-45c9-8c91-e5a8be7000be");
