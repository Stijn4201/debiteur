DROP TABLE IF EXISTS `myTable`;

CREATE TABLE `myTable` (
  `id` mediumint(8) unsigned NOT NULL auto_increment,
  `voornaam` varchar(255) default NULL,
  `tussenvoegsel` TEXT default NULL,
  `achternaam` varchar(255) default NULL,
  `email` varchar(255) default NULL,
  `totaal` varchar(100) default NULL,
  PRIMARY KEY (`id`)
) AUTO_INCREMENT=1;

INSERT INTO `myTable` (`voornaam`,`tussenvoegsel`,`achternaam`,`email`,`totaal`)
VALUES
  ("Palmer","de","Kennedy","nibh.quisque@google.couk","€24.83"),
  ("Timon","het","Beasley","ipsum.dolor.sit@yahoo.edu","€11.43"),
  ("Alden","ten","Hudson","nullam.feugiat.placerat@hotmail.com","€46.29"),
  ("Nero","van","Rivers","aliquam@aol.ca","€40.07"),
  ("Quamar","van de","Landry","urna.convallis.erat@protonmail.couk","€88.77"),
  ("Phyllis","van den","Phelps","vivamus@google.ca","€32.78"),
  ("Megan","van der","Whitney","vitae@hotmail.net","€2.31"),
  ("Patrick","van het","David","gravida.praesent@outlook.couk","€91.43"),
  ("Aaron","de","Hobbs","dolor.vitae@aol.net","€0.33"),
  ("Brian","het","Blackwell","lobortis@hotmail.com","€72.14");
INSERT INTO `myTable` (`voornaam`,`tussenvoegsel`,`achternaam`,`email`,`totaal`)
VALUES
  ("John","ten","Gutierrez","dolor.fusce@yahoo.com","€80.18"),
  ("Price","van","Christian","metus.aenean@hotmail.ca","€19.37"),
  ("Brandon","van de","Hanson","egestas.hendrerit@outlook.net","€59.21"),
  ("Rose","van den","Wheeler","hendrerit.donec@yahoo.ca","€64.92"),
  ("Mercedes","van der","Hickman","egestas@aol.couk","€77.68"),
  ("Emi","van het","Hess","lobortis.quam@icloud.couk","€45.79"),
  ("Kenneth","de","Mullen","tristique@hotmail.ca","€2.69"),
  ("Nina","het","Nolan","scelerisque.lorem@hotmail.org","€99.78"),
  ("Asher","ten","Sheppard","vehicula.risus.nulla@google.org","€71.28"),
  ("Tiger","van","Olsen","ut.sem.nulla@hotmail.net","€71.10");
INSERT INTO `myTable` (`voornaam`,`tussenvoegsel`,`achternaam`,`email`,`totaal`)
VALUES
  ("Keely","van de","Stephenson","duis.gravida.praesent@aol.com","€97.46"),
  ("Blythe","van den","Carver","ut.pharetra@yahoo.com","€26.90"),
  ("Moses","van der","Strong","nullam@google.couk","€92.16"),
  ("Cassidy","van het","David","luctus.lobortis@google.org","€86.56"),
  ("Susan","de","Sweeney","quam.a@outlook.com","€84.07"),
  ("Regan","het","Gay","cursus.in@protonmail.couk","€72.86"),
  ("TaShya","ten","Cantrell","aenean.eget@hotmail.edu","€83.78"),
  ("Mallory","van","Hooper","urna.suscipit@outlook.com","€96.68"),
  ("Octavia","van de","Rogers","ornare.facilisis@hotmail.edu","€52.21"),
  ("Colorado","van den","Barron","ad.litora.torquent@aol.edu","€92.47");
INSERT INTO `myTable` (`voornaam`,`tussenvoegsel`,`achternaam`,`email`,`totaal`)
VALUES
  ("Genevieve","van der","Cole","leo.cras@aol.couk","€0.01"),
  ("Tallulah","van het","Love","lacinia.at@google.ca","€79.73"),
  ("Maggy","de","Burns","congue.elit@icloud.couk","€14.03"),
  ("Lois","het","Weeks","aliquet.vel@google.com","€53.72"),
  ("Remedios","ten","Flores","mauris.rhoncus@outlook.com","€37.03"),
  ("Cain","van","Snyder","pharetra.sed@outlook.ca","€93.71"),
  ("Rogan","van de","Hall","sem.elit@aol.org","€45.56"),
  ("Sharon","van den","Olsen","erat.etiam@google.ca","€32.15"),
  ("Timothy","van der","Hanson","nunc@aol.net","€55.18"),
  ("Sydney","van het","Clay","velit.cras@aol.edu","€59.59");
INSERT INTO `myTable` (`voornaam`,`tussenvoegsel`,`achternaam`,`email`,`totaal`)
VALUES
  ("Nelle","de","Griffin","nonummy.fusce.fermentum@yahoo.ca","€87.09"),
  ("Hammett","het","Chaney","mauris.ut@icloud.edu","€23.52"),
  ("Alfonso","ten","Wolfe","consequat@yahoo.net","€81.15"),
  ("Rhiannon","van","Wilkinson","malesuada.malesuada.integer@hotmail.ca","€28.50"),
  ("Lev","van de","Palmer","non@icloud.com","€22.33"),
  ("Devin","van den","Nixon","luctus@aol.ca","€89.92"),
  ("Shannon","van der","Bauer","cras.convallis.convallis@yahoo.couk","€49.20"),
  ("Brennan","van het","Bonner","morbi.neque.tellus@hotmail.com","€5.83"),
  ("Velma","de","Randolph","dui.lectus.rutrum@yahoo.net","€66.13"),
  ("Nissim","het","Rogers","mi.eleifend.egestas@outlook.net","€68.49");
