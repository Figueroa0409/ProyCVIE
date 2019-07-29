use indicadoresDB;
go

create database indicadoresDB;

use indicadoresDB;
go

create table provincias(
id int primary key,
provincia varchar(20) 
);

create table cantones(
id int primary key,
idProvincia int,
canton varchar(20)
constraint KK_Cantones foreign key (idProvincia) references provincias(id)
);

create table distritos(
id int primary key,
idCanton int,
distritos varchar(30)
constraint KK_Distritos foreign key (idCanton) references cantones(id)
);

select * from provincias;

Insert into provincias(id, provincia) values (1,'San Jose');
Insert into provincias(id, provincia) values (2,'Cartago');
Insert into provincias(id, provincia) values (3,'Alajuela');
Insert into provincias(id, provincia) values (4,'Heredia');
Insert into provincias(id, provincia) values (5,'Guanacaste');
Insert into provincias(id, provincia) values (6,'Puntarenas');
Insert into provincias(id, provincia) values (7,'Limón');

select p.id,p.provincia, c.idProvincia,c.canton from cantones c inner join provincias p on p.id = c.idProvincia;
select * from cantones;

Insert into cantones(id, idProvincia, canton) values (1,1,'San Jose');
Insert into cantones(id, idProvincia, canton) values (2,1,'Escazu');
Insert into cantones(id, idProvincia, canton) values (3,1,'Desamparados');
Insert into cantones(id, idProvincia, canton) values (4,1,'Puriscal');
Insert into cantones(id, idProvincia, canton) values (5,1,'Tarrazu');
Insert into cantones(id, idProvincia, canton) values (6,1,'Aserri');
Insert into cantones(id, idProvincia, canton) values (7,1,'Mora');
Insert into cantones(id, idProvincia, canton) values (8,1,'Goicoechea');
Insert into cantones(id, idProvincia, canton) values (9,1,'Santa Ana');
Insert into cantones(id, idProvincia, canton) values (10,1,'Alajuelita');
Insert into cantones(id, idProvincia, canton) values (11,1,'Vasquez de coronado');
Insert into cantones(id, idProvincia, canton) values (12,1,'Acosta');
Insert into cantones(id, idProvincia, canton) values (13,1,'Tibas');
Insert into cantones(id, idProvincia, canton) values (14,1,'Moravia');
Insert into cantones(id, idProvincia, canton) values (15,1,'Montes de Oca');
Insert into cantones(id, idProvincia, canton) values (16,1,'Turrubares');
Insert into cantones(id, idProvincia, canton) values (17,1,'Dota');
Insert into cantones(id, idProvincia, canton) values (18,1,'Curridabat');
Insert into cantones(id, idProvincia, canton) values (19,1,'Perez Zeledon');
Insert into cantones(id, idProvincia, canton) values (20,1,'LeónCortes');

Insert into cantones(id, idProvincia, canton) values (21,2,'Cartago');
Insert into cantones(id, idProvincia, canton) values (22,2,'Paraiso');
Insert into cantones(id, idProvincia, canton) values (23,2,'La unión');
Insert into cantones(id, idProvincia, canton) values (24,2,'Jimenez');
Insert into cantones(id, idProvincia, canton) values (25,2,'Turrialba');
Insert into cantones(id, idProvincia, canton) values (26,2,'Alvarado');
Insert into cantones(id, idProvincia, canton) values (27,2,'Oreamuno');
Insert into cantones(id, idProvincia, canton) values (28,2,'El Guarco');

Insert into cantones(id, idProvincia, canton) values (29,3,'Alajuela');
Insert into cantones(id, idProvincia, canton) values (30,3,'Atenas');
Insert into cantones(id, idProvincia, canton) values (31,3,'Grecia');
Insert into cantones(id, idProvincia, canton) values (32,3,'Guatuso');
Insert into cantones(id, idProvincia, canton) values (33,3,'Chiles');
Insert into cantones(id, idProvincia, canton) values (34,3,'Naranjo');
Insert into cantones(id, idProvincia, canton) values (35,3,'Orotina');
Insert into cantones(id, idProvincia, canton) values (36,3,'Palmare');
Insert into cantones(id, idProvincia, canton) values (37,3,'Poas');
Insert into cantones(id, idProvincia, canton) values (38,3,'Rio Cuarto');
Insert into cantones(id, idProvincia, canton) values (39,3,'San Carlos');
Insert into cantones(id, idProvincia, canton) values (40,3,'San Mateo');
Insert into cantones(id, idProvincia, canton) values (41,3,'San Ramón');
Insert into cantones(id, idProvincia, canton) values (42,3,'Upala');
Insert into cantones(id, idProvincia, canton) values (43,3,'Sarchi');
Insert into cantones(id, idProvincia, canton) values (44,3,'Zarcero');

Insert into cantones(id, idProvincia, canton) values (45,4,'Heredia');
Insert into cantones(id, idProvincia, canton) values (46,4,'Barba');
Insert into cantones(id, idProvincia, canton) values (47,4,'Bélen');
Insert into cantones(id, idProvincia, canton) values (48,4,'Flores');
Insert into cantones(id, idProvincia, canton) values (49,4,'San Isidro');
Insert into cantones(id, idProvincia, canton) values (50,4,'San Pablo');
Insert into cantones(id, idProvincia, canton) values (51,4,'San Rafael');
Insert into cantones(id, idProvincia, canton) values (52,4,'Santa Barbara');
Insert into cantones(id, idProvincia, canton) values (53,4,'Santo Domingo');
Insert into cantones(id, idProvincia, canton) values (54,4,'Sarapiqui');

Insert into cantones(id, idProvincia, canton) values (55,5,'Liberia');
Insert into cantones(id, idProvincia, canton) values (56,5,'Abangares');
Insert into cantones(id, idProvincia, canton) values (57,5,'Bagaces');
Insert into cantones(id, idProvincia, canton) values (58,5,'Cañas');
Insert into cantones(id, idProvincia, canton) values (59,5,'Carrillo');
Insert into cantones(id, idProvincia, canton) values (60,5,'Hojancha');
Insert into cantones(id, idProvincia, canton) values (61,5,'La cruz');
Insert into cantones(id, idProvincia, canton) values (62,5,'Nandayure');
Insert into cantones(id, idProvincia, canton) values (63,5,'Nicoya');
Insert into cantones(id, idProvincia, canton) values (64,5,'Santa Cruz');
Insert into cantones(id, idProvincia, canton) values (65,5,'Tilarán');

Insert into cantones(id, idProvincia, canton) values (66,6,'Puntarenas');
Insert into cantones(id, idProvincia, canton) values (67,6,'Buenos aires');
Insert into cantones(id, idProvincia, canton) values (68,6,'Corredores');
Insert into cantones(id, idProvincia, canton) values (69,6,'Coto brus');
Insert into cantones(id, idProvincia, canton) values (70,6,'Esparza');
Insert into cantones(id, idProvincia, canton) values (71,6,'Garabito');
Insert into cantones(id, idProvincia, canton) values (72,6,'Golfito');
Insert into cantones(id, idProvincia, canton) values (73,6,'Montes de oro');
Insert into cantones(id, idProvincia, canton) values (74,6,'Osa');
Insert into cantones(id, idProvincia, canton) values (75,6,'Parrita');
Insert into cantones(id, idProvincia, canton) values (76,6,'Quepos');

Insert into cantones(id, idProvincia, canton) values (77,7,'Limón');
Insert into cantones(id, idProvincia, canton) values (78,7,'Guácimo');
Insert into cantones(id, idProvincia, canton) values (79,7,'Matina');
Insert into cantones(id, idProvincia, canton) values (80,7,'Pococí');
Insert into cantones(id, idProvincia, canton) values (81,7,'Siquirres');
Insert into cantones(id, idProvincia, canton) values (82,7,'Talamnca');


select p.id,p.provincia, c.idProvincia,c.canton, d.idCanton, d.distritos from distritos d inner join cantones c inner join provincias p on p.id = c.idProvincia on d.idCanton = c.id;

select c.idProvincia,c.canton, d.idCanton, d.distritos from distritos d inner join cantones c on d.idCanton = c.id;

select * from distritos;


Insert into distritos(id, idCanton, distritos) values (1,1,'San Jose');
Insert into distritos(id, idCanton, distritos) values (2,1,'El Carmen');
Insert into distritos(id, idCanton, distritos) values (3,1,'Hospital');
Insert into distritos(id, idCanton, distritos) values (4,1,'Catedral');
Insert into distritos(id, idCanton, distritos) values (5,1,'Zapote');
Insert into distritos(id, idCanton, distritos) values (6,1,'San Francisco de dos rios');
Insert into distritos(id, idCanton, distritos) values (7,1,'Uruca');
Insert into distritos(id, idCanton, distritos) values (8,1,'Mata Redonda');
Insert into distritos(id, idCanton, distritos) values (9,1,'Pavas');
Insert into distritos(id, idCanton, distritos) values (10,1,'Hatillo');
Insert into distritos(id, idCanton, distritos) values (11,1,'San Sebastián');

Insert into distritos(id, idCanton, distritos) values (12,2,'Escazú');
Insert into distritos(id, idCanton, distritos) values (13,2,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (14,2,'San Rafael');

Insert into distritos(id, idCanton, distritos) values (15,3,'Desamparados');
Insert into distritos(id, idCanton, distritos) values (16,3,'San Miguel');
Insert into distritos(id, idCanton, distritos) values (17,3,'San Juan de Dios');
Insert into distritos(id, idCanton, distritos) values (18,3,'San Rafael Arriba');
Insert into distritos(id, idCanton, distritos) values (19,3,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (20,3,'Fráiles');
Insert into distritos(id, idCanton, distritos) values (21,3,'Patarrá');
Insert into distritos(id, idCanton, distritos) values (22,3,'San Cristóbal');
Insert into distritos(id, idCanton, distritos) values (23,3,'Rosario');
Insert into distritos(id, idCanton, distritos) values (24,3,'Damas');
Insert into distritos(id, idCanton, distritos) values (25,3,'San Rafael Abajo');
Insert into distritos(id, idCanton, distritos) values (26,3,'Gravilias');

Insert into distritos(id, idCanton, distritos) values (27,4,'Santiago');
Insert into distritos(id, idCanton, distritos) values (28,4,'Mercedes sur');
Insert into distritos(id, idCanton, distritos) values (29,4,'Barbacoas');
Insert into distritos(id, idCanton, distritos) values (30,4,'Grifo Alto');
Insert into distritos(id, idCanton, distritos) values (31,4,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (32,4,'Candelarita');
Insert into distritos(id, idCanton, distritos) values (33,4,'Desamparaditos');
Insert into distritos(id, idCanton, distritos) values (34,4,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (35,4,'Chires');

Insert into distritos(id, idCanton, distritos) values (36,5,'San Marcos');
Insert into distritos(id, idCanton, distritos) values (37,5,'San Lorenzo');
Insert into distritos(id, idCanton, distritos) values (38,5,'San Carlos');


Insert into distritos(id, idCanton, distritos) values (39,6,'Aserri');
Insert into distritos(id, idCanton, distritos) values (40,6,'Tarbaca');
Insert into distritos(id, idCanton, distritos) values (41,6,'Vuelta de Jorco');
Insert into distritos(id, idCanton, distritos) values (42,6,'San Gabriel');
Insert into distritos(id, idCanton, distritos) values (43,6,'Legua');
Insert into distritos(id, idCanton, distritos) values (44,6,'Monterrey');
Insert into distritos(id, idCanton, distritos) values (45,6,'Salitrillos');

Insert into distritos(id, idCanton, distritos) values (46,7,'Colón');
Insert into distritos(id, idCanton, distritos) values (47,7,'Guayabo');
Insert into distritos(id, idCanton, distritos) values (48,7,'Tabarcia');
Insert into distritos(id, idCanton, distritos) values (49,7,'Piedras Negras');
Insert into distritos(id, idCanton, distritos) values (50,7,'Picagres');

Insert into distritos(id, idCanton, distritos) values (51,8,'Guadalupe');
Insert into distritos(id, idCanton, distritos) values (52,8,'San Francisco');
Insert into distritos(id, idCanton, distritos) values (53,8,'Calle Francisco');
Insert into distritos(id, idCanton, distritos) values (54,8,'Mta dde Platano');
Insert into distritos(id, idCanton, distritos) values (55,8,'Ipís');
Insert into distritos(id, idCanton, distritos) values (56,8,'Rancho Redondo');
Insert into distritos(id, idCanton, distritos) values (57,8,'Purral');

Insert into distritos(id, idCanton, distritos) values (58,9,'Santa Ana');
Insert into distritos(id, idCanton, distritos) values (59,9,'Salitral');
Insert into distritos(id, idCanton, distritos) values (60,9,'Pozos');
Insert into distritos(id, idCanton, distritos) values (61,9,'Uruca');
Insert into distritos(id, idCanton, distritos) values (62,9,'Piedades');
Insert into distritos(id, idCanton, distritos) values (63,9,'Brasil');

Insert into distritos(id, idCanton, distritos) values (64,10,'Alajuelita');
Insert into distritos(id, idCanton, distritos) values (65,10,'San Josecito');
Insert into distritos(id, idCanton, distritos) values (66,10,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (67,10,'Concepción');
Insert into distritos(id, idCanton, distritos) values (68,10,'San Felipe');

Insert into distritos(id, idCanton, distritos) values (69,11,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (70,11,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (71,11,'Dulce Nombre De Jesus');
Insert into distritos(id, idCanton, distritos) values (72,11,'Patalillo');
Insert into distritos(id, idCanton, distritos) values (73,11,'Cascajal');

Insert into distritos(id, idCanton, distritos) values (74,12,'San Ignacio');
Insert into distritos(id, idCanton, distritos) values (75,12,'Guaitil');
Insert into distritos(id, idCanton, distritos) values (76,12,'Palmichal');
Insert into distritos(id, idCanton, distritos) values (77,12,'Cangrejal');
Insert into distritos(id, idCanton, distritos) values (78,12,'Sabanillas');


Insert into distritos(id, idCanton, distritos) values (79,13,'San Juan');
Insert into distritos(id, idCanton, distritos) values (80,13,'Cinco Esquinas');
Insert into distritos(id, idCanton, distritos) values (81,13,'Anselmo Llorente');
Insert into distritos(id, idCanton, distritos) values (82,13,'León XIII');
Insert into distritos(id, idCanton, distritos) values (83,13,'Colina');

Insert into distritos(id, idCanton, distritos) values (84,14,'San Vicente');
Insert into distritos(id, idCanton, distritos) values (85,14,'San Jerónimo');
Insert into distritos(id, idCanton, distritos) values (86,14,'Trinidad');


Insert into distritos(id, idCanton, distritos) values (87,15,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (88,15,'Sabanilla');
Insert into distritos(id, idCanton, distritos) values (89,15,'Mercedes');
Insert into distritos(id, idCanton, distritos) values (90,15,'San Rafael');

Insert into distritos(id, idCanton, distritos) values (91,16,'San Pablo');
Insert into distritos(id, idCanton, distritos) values (92,16,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (93,16,'San Juan de Mata');
Insert into distritos(id, idCanton, distritos) values (94,16,'San Luis');

Insert into distritos(id, idCanton, distritos) values (95,17,'Santa María');
Insert into distritos(id, idCanton, distritos) values (96,17,'Jardín');
Insert into distritos(id, idCanton, distritos) values (97,17,'Copey');

Insert into distritos(id, idCanton, distritos) values (98,18,'Curridabat');
Insert into distritos(id, idCanton, distritos) values (99,18,'Granadilla');
Insert into distritos(id, idCanton, distritos) values (100,18,'Sánchez');
Insert into distritos(id, idCanton, distritos) values (101,18,'Tirrases');

Insert into distritos(id, idCanton, distritos) values (102,19,'San Isidro del General');
Insert into distritos(id, idCanton, distritos) values (103,19,'General');
Insert into distritos(id, idCanton, distritos) values (104,19,'Daniel Flores');
Insert into distritos(id, idCanton, distritos) values (105,19,'Rivas');
Insert into distritos(id, idCanton, distritos) values (106,19,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (107,19,'Platanares');
Insert into distritos(id, idCanton, distritos) values (108,19,'Pejibaye');
Insert into distritos(id, idCanton, distritos) values (109,19,'Cajón');
Insert into distritos(id, idCanton, distritos) values (110,19,'Barú');
Insert into distritos(id, idCanton, distritos) values (111,19,'Rio Nuevo');
Insert into distritos(id, idCanton, distritos) values (112,19,'Páramo');

Insert into distritos(id, idCanton, distritos) values (113,20,'San Pablo');
Insert into distritos(id, idCanton, distritos) values (114,20,'San Andrés');
Insert into distritos(id, idCanton, distritos) values (115,20,'Llano Bonito');
Insert into distritos(id, idCanton, distritos) values (116,20,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (117,20,'Santa Cruz');
Insert into distritos(id, idCanton, distritos) values (118,20,'San Antonio');

Insert into distritos(id, idCanton, distritos) values (119,21,'Oiental');
Insert into distritos(id, idCanton, distritos) values (120,21,'Occidental');
Insert into distritos(id, idCanton, distritos) values (121,21,'Carmen');
Insert into distritos(id, idCanton, distritos) values (122,21,'San Nicólas');
Insert into distritos(id, idCanton, distritos) values (123,21,'Aguacaliente');
Insert into distritos(id, idCanton, distritos) values (124,21,'Guadalupe o Arenilla');
Insert into distritos(id, idCanton, distritos) values (125,21,'Corralillo');
Insert into distritos(id, idCanton, distritos) values (126,21,'Tierra Blanca');
Insert into distritos(id, idCanton, distritos) values (127,21,'Dulce Nombre');
Insert into distritos(id, idCanton, distritos) values (128,21,'LLano Grande');
Insert into distritos(id, idCanton, distritos) values (129,21,'Quebradilla');


Insert into distritos(id, idCanton, distritos) values (130,22,'Paraiso');
Insert into distritos(id, idCanton, distritos) values (131,22,'Santiago');
Insert into distritos(id, idCanton, distritos) values (132,22,'Orosi');
Insert into distritos(id, idCanton, distritos) values (133,22,'Cachi');

Insert into distritos(id, idCanton, distritos) values (134,23,'La Unión');
Insert into distritos(id, idCanton, distritos) values (135,23,'Tres Rios');
Insert into distritos(id, idCanton, distritos) values (136,23,'San Diego');
Insert into distritos(id, idCanton, distritos) values (137,23,'San Juan');
Insert into distritos(id, idCanton, distritos) values (138,23,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (139,23,'Concepción');
Insert into distritos(id, idCanton, distritos) values (140,23,'Dulce Nombre');
Insert into distritos(id, idCanton, distritos) values (141,23,'San Ramón');
Insert into distritos(id, idCanton, distritos) values (142,23,'Rio Azul');

Insert into distritos(id, idCanton, distritos) values (143,24,'Juan Viñas');
Insert into distritos(id, idCanton, distritos) values (144,24,'Tucurrique');
Insert into distritos(id, idCanton, distritos) values (145,24,'Pejibaye');

Insert into distritos(id, idCanton, distritos) values (146,25,'Turrialba');
Insert into distritos(id, idCanton, distritos) values (147,25,'La suiza');
Insert into distritos(id, idCanton, distritos) values (148,25,'Peralta');
Insert into distritos(id, idCanton, distritos) values (149,25,'Santa Cruz');
Insert into distritos(id, idCanton, distritos) values (150,25,'Santa Teresita');
Insert into distritos(id, idCanton, distritos) values (151,25,'Pavones');
Insert into distritos(id, idCanton, distritos) values (152,25,'Tuis');
Insert into distritos(id, idCanton, distritos) values (153,25,'Tuis');
Insert into distritos(id, idCanton, distritos) values (154,25,'Tayutic');
Insert into distritos(id, idCanton, distritos) values (155,25,'Santa Rosa');
Insert into distritos(id, idCanton, distritos) values (156,25,'Tres Equis');

Insert into distritos(id, idCanton, distritos) values (157,26,'Pacayas');
Insert into distritos(id, idCanton, distritos) values (158,26,'Cervantes');
Insert into distritos(id, idCanton, distritos) values (159,26,'Capellades');

Insert into distritos(id, idCanton, distritos) values (160,27,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (161,27,'Cot');
Insert into distritos(id, idCanton, distritos) values (162,27,'Potrero Cerrado');
Insert into distritos(id, idCanton, distritos) values (163,27,'Cipreses');
Insert into distritos(id, idCanton, distritos) values (164,27,'Santa Rosa');

Insert into distritos(id, idCanton, distritos) values (165,28,'El Tejar');
Insert into distritos(id, idCanton, distritos) values (166,28,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (167,28,'Tobosi');
Insert into distritos(id, idCanton, distritos) values (168,28,'Patio de Agua');

Insert into distritos(id, idCanton, distritos) values (170,29,'San José');
Insert into distritos(id, idCanton, distritos) values (171,29,'Carrizal');
Insert into distritos(id, idCanton, distritos) values (172,29,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (173,29,'Guácima');
Insert into distritos(id, idCanton, distritos) values (174,29,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (175,29,'Sabanilla');
Insert into distritos(id, idCanton, distritos) values (176,29,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (177,29,'Río Segundo');
Insert into distritos(id, idCanton, distritos) values (178,29,'Desamparados');
Insert into distritos(id, idCanton, distritos) values (179,29,'Turrucares');
Insert into distritos(id, idCanton, distritos) values (180,29,'Tambor');
Insert into distritos(id, idCanton, distritos) values (181,29,'La Garita');
Insert into distritos(id, idCanton, distritos) values (182,29,'Sarapiqui');


Insert into distritos(id, idCanton, distritos) values (184,30,'Atenas');
Insert into distritos(id, idCanton, distritos) values (185,30,'Jésus');
Insert into distritos(id, idCanton, distritos) values (186,30,'Mercedes');
Insert into distritos(id, idCanton, distritos) values (187,30,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (188,30,'Concepción');
Insert into distritos(id, idCanton, distritos) values (189,30,'San Jose');
Insert into distritos(id, idCanton, distritos) values (190,30,'´Santa Eulalia');


Insert into distritos(id, idCanton, distritos) values (192,31,'Grecia');
Insert into distritos(id, idCanton, distritos) values (193,31,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (194,31,'San José');
Insert into distritos(id, idCanton, distritos) values (195,31,'San Roque');
Insert into distritos(id, idCanton, distritos) values (196,31,'Tacares');
Insert into distritos(id, idCanton, distritos) values (197,31,'Rio Cuarto');
Insert into distritos(id, idCanton, distritos) values (198,31,'Puente de Piedra');
Insert into distritos(id, idCanton, distritos) values (199,31,'Bolivar');


Insert into distritos(id, idCanton, distritos) values (200,32,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (201,32,'Buenavista');
Insert into distritos(id, idCanton, distritos) values (202,32,'Cote');


Insert into distritos(id, idCanton, distritos) values (203,33,'Los Chiles');
Insert into distritos(id, idCanton, distritos) values (204,33,'Caño Negro');
Insert into distritos(id, idCanton, distritos) values (205,33,'El Amparo');
Insert into distritos(id, idCanton, distritos) values (206,33,'San Jorge');


Insert into distritos(id, idCanton, distritos) values (207,34,'Naranjo');
Insert into distritos(id, idCanton, distritos) values (208,34,'San Miguel');
Insert into distritos(id, idCanton, distritos) values (209,34,'San José');
Insert into distritos(id, idCanton, distritos) values (210,34,'Cirri Sur');
Insert into distritos(id, idCanton, distritos) values (211,34,'San Jerónimo');
Insert into distritos(id, idCanton, distritos) values (212,34,'San Juan');
Insert into distritos(id, idCanton, distritos) values (213,34,'Rosario');

Insert into distritos(id, idCanton, distritos) values (214,35,'Orotina');
Insert into distritos(id, idCanton, distritos) values (215,35,'Mastate');
Insert into distritos(id, idCanton, distritos) values (216,35,'Hacienda Vieja');
Insert into distritos(id, idCanton, distritos) values (217,35,'Coyolar');
Insert into distritos(id, idCanton, distritos) values (218,35,'Ceiba');

Insert into distritos(id, idCanton, distritos) values (219,36,'Palmares');
Insert into distritos(id, idCanton, distritos) values (220,36,'Zaragoza');
Insert into distritos(id, idCanton, distritos) values (221,36,'Buenos Aires');
Insert into distritos(id, idCanton, distritos) values (222,36,'Santiago');
Insert into distritos(id, idCanton, distritos) values (223,36,'Candelaria');
Insert into distritos(id, idCanton, distritos) values (224,36,'Esquipulas');
Insert into distritos(id, idCanton, distritos) values (225,36,'Granja');

Insert into distritos(id, idCanton, distritos) values (226,37,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (227,37,'San Juan');
Insert into distritos(id, idCanton, distritos) values (228,37,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (229,37,'Carrillos');
Insert into distritos(id, idCanton, distritos) values (230,37,'Sabana Redonda');


Insert into distritos(id, idCanton, distritos) values (231,38,'Rio Cuarto');
Insert into distritos(id, idCanton, distritos) values (232,38,'Santa Rita');
Insert into distritos(id, idCanton, distritos) values (233,38,'Santa Isabel');

Insert into distritos(id, idCanton, distritos) values (234,29,'Quesada');
Insert into distritos(id, idCanton, distritos) values (235,29,'Florencia');
Insert into distritos(id, idCanton, distritos) values (236,29,'Buenavista');
Insert into distritos(id, idCanton, distritos) values (237,29,'Aguas Zarcas');
Insert into distritos(id, idCanton, distritos) values (238,39,'Venecia');
Insert into distritos(id, idCanton, distritos) values (239,39,'Pital');
Insert into distritos(id, idCanton, distritos) values (240,39,'Fortuna');
Insert into distritos(id, idCanton, distritos) values (241,39,'Tigra');
Insert into distritos(id, idCanton, distritos) values (242,39,'Palmera');
Insert into distritos(id, idCanton, distritos) values (243,39,'Venado');
Insert into distritos(id, idCanton, distritos) values (244,39,'Cutris');
Insert into distritos(id, idCanton, distritos) values (245,39,'Monterrey');
Insert into distritos(id, idCanton, distritos) values (256,39,'Pocosol');

Insert into distritos(id, idCanton, distritos) values (257,40,'San Mateo');
Insert into distritos(id, idCanton, distritos) values (258,40,'Desmonte');
Insert into distritos(id, idCanton, distritos) values (259,40,'Jesús María');

Insert into distritos(id, idCanton, distritos) values (260,41,'San Ramón');
Insert into distritos(id, idCanton, distritos) values (261,41,'Santiago');
Insert into distritos(id, idCanton, distritos) values (262,41,'San Juan');
Insert into distritos(id, idCanton, distritos) values (263,41,'Piedades Norte');
Insert into distritos(id, idCanton, distritos) values (264,41,'Piedades Sur');
Insert into distritos(id, idCanton, distritos) values (265,41,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (266,41,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (267,41,'Angeles');
Insert into distritos(id, idCanton, distritos) values (268,41,'Alfaro');
Insert into distritos(id, idCanton, distritos) values (269,41,'Volio');
Insert into distritos(id, idCanton, distritos) values (270,41,'Concepcion');
Insert into distritos(id, idCanton, distritos) values (271,41,'Zapotal');
Insert into distritos(id, idCanton, distritos) values (272,41,'Peñas Blancas');

Insert into distritos(id, idCanton, distritos) values (273,42,'Upala');
Insert into distritos(id, idCanton, distritos) values (274,42,'Aguas Claras');
Insert into distritos(id, idCanton, distritos) values (275,42,'San José');
Insert into distritos(id, idCanton, distritos) values (276,42,'Bijagua');
Insert into distritos(id, idCanton, distritos) values (277,42,'Delicias');
Insert into distritos(id, idCanton, distritos) values (278,42,'Dos Rios');
Insert into distritos(id, idCanton, distritos) values (279,42,'Yolillal');


Insert into distritos(id, idCanton, distritos) values (280,43,'Sarchi Norte');
Insert into distritos(id, idCanton, distritos) values (281,43,'Sarchi Sur');
Insert into distritos(id, idCanton, distritos) values (282,43,'Toro Amarillo');
Insert into distritos(id, idCanton, distritos) values (283,43,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (284,43,'Rodriguez');

Insert into distritos(id, idCanton, distritos) values (285,44,'Zarcero');
Insert into distritos(id, idCanton, distritos) values (286,44,'Laguna');
Insert into distritos(id, idCanton, distritos) values (287,44,'Tapezco');
Insert into distritos(id, idCanton, distritos) values (288,44,'Guadalupe');
Insert into distritos(id, idCanton, distritos) values (289,44,'Palmira');
Insert into distritos(id, idCanton, distritos) values (290,44,'Zapote');
Insert into distritos(id, idCanton, distritos) values (291,44,'Brisas');


Insert into distritos(id, idCanton, distritos) values (292,45,'Heredia');
Insert into distritos(id, idCanton, distritos) values (293,45,'Mercedes');
Insert into distritos(id, idCanton, distritos) values (294,45,'San Francisco');
Insert into distritos(id, idCanton, distritos) values (295,45,'Ulloa');
Insert into distritos(id, idCanton, distritos) values (296,45,'Vara Blanca');

Insert into distritos(id, idCanton, distritos) values (298,46,'Barva');
Insert into distritos(id, idCanton, distritos) values (299,46,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (300,46,'San Pablo');
Insert into distritos(id, idCanton, distritos) values (301,46,'San Roque');
Insert into distritos(id, idCanton, distritos) values (302,46,'Santa Lucia');
Insert into distritos(id, idCanton, distritos) values (303,46,'San José de la montaña');

Insert into distritos(id, idCanton, distritos) values (304,47,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (305,47,'Rivera');
Insert into distritos(id, idCanton, distritos) values (307,47,'Asunción');


Insert into distritos(id, idCanton, distritos) values (308,48,'San Joaquín');
Insert into distritos(id, idCanton, distritos) values (309,48,'Barrantes');
Insert into distritos(id, idCanton, distritos) values (310,48,'Llorente');

Insert into distritos(id, idCanton, distritos) values (311,49,'San Isidro');
Insert into distritos(id, idCanton, distritos) values (312,49,'San José');
Insert into distritos(id, idCanton, distritos) values (313,49,'Concepción');
Insert into distritos(id, idCanton, distritos) values (314,49,'San Francisco');

Insert into distritos(id, idCanton, distritos) values (315,50,'San Pablo');

Insert into distritos(id, idCanton, distritos) values (316,51,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (317,51,'San Josecito');
Insert into distritos(id, idCanton, distritos) values (318,51,'Santiago');
Insert into distritos(id, idCanton, distritos) values (319,51,'Angeles');
Insert into distritos(id, idCanton, distritos) values (320,51,'Concepción');

Insert into distritos(id, idCanton, distritos) values (321,52,'Santa Barbara');
Insert into distritos(id, idCanton, distritos) values (322,52,'San Pedro');
Insert into distritos(id, idCanton, distritos) values (323,52,'San Juan');
Insert into distritos(id, idCanton, distritos) values (324,52,'Jesús');
Insert into distritos(id, idCanton, distritos) values (325,52,'Santo Domingo');
Insert into distritos(id, idCanton, distritos) values (326,52,'Purabá');

Insert into distritos(id, idCanton, distritos) values (327,53,'Santo Domingo');
Insert into distritos(id, idCanton, distritos) values (328,53,'San Vicente');
Insert into distritos(id, idCanton, distritos) values (329,53,'San Miguel');
Insert into distritos(id, idCanton, distritos) values (330,53,'Paracito');
Insert into distritos(id, idCanton, distritos) values (331,53,'Santo Tomás');
Insert into distritos(id, idCanton, distritos) values (332,53,'Santa Rosa');
Insert into distritos(id, idCanton, distritos) values (333,53,'Tures');
Insert into distritos(id, idCanton, distritos) values (334,53,'Pará');

Insert into distritos(id, idCanton, distritos) values (335,54,'Puerto Viejo');
Insert into distritos(id, idCanton, distritos) values (336,54,'La Virgen');
Insert into distritos(id, idCanton, distritos) values (337,54,'Horquetas');
Insert into distritos(id, idCanton, distritos) values (338,54,'Llanuras del Gaspar');
Insert into distritos(id, idCanton, distritos) values (339,54,'Cureña');


Insert into distritos(id, idCanton, distritos) values (340,55,'Liberia');
Insert into distritos(id, idCanton, distritos) values (341,55,'Cañas Dulces');
Insert into distritos(id, idCanton, distritos) values (342,55,'Mayorga');
Insert into distritos(id, idCanton, distritos) values (343,55,'Nacascolo');
Insert into distritos(id, idCanton, distritos) values (344,55,'Curubande');

Insert into distritos(id, idCanton, distritos) values (345,56,'Juntas');
Insert into distritos(id, idCanton, distritos) values (346,56,'Sierra');
Insert into distritos(id, idCanton, distritos) values (347,56,'San Juan');
Insert into distritos(id, idCanton, distritos) values (348,56,'Colorado');

Insert into distritos(id, idCanton, distritos) values (350,57,'Bagaces');
Insert into distritos(id, idCanton, distritos) values (351,57,'Fortuns');
Insert into distritos(id, idCanton, distritos) values (352,57,'Mogote');
Insert into distritos(id, idCanton, distritos) values (353,57,'Río Naranjo');

Insert into distritos(id, idCanton, distritos) values (354,58,'Cañas');
Insert into distritos(id, idCanton, distritos) values (355,58,'Palmira');
Insert into distritos(id, idCanton, distritos) values (356,58,'San Miguel');
Insert into distritos(id, idCanton, distritos) values (357,58,'Bebedero');
Insert into distritos(id, idCanton, distritos) values (358,58,'Porozal');

Insert into distritos(id, idCanton, distritos) values (359,59,'Filadelfia');
Insert into distritos(id, idCanton, distritos) values (360,59,'Palmira');
Insert into distritos(id, idCanton, distritos) values (361,59,'Sardinal');
Insert into distritos(id, idCanton, distritos) values (362,59,'Belén');

Insert into distritos(id, idCanton, distritos) values (363,60,'Hojancha');
Insert into distritos(id, idCanton, distritos) values (364,60,'Monte Romo');
Insert into distritos(id, idCanton, distritos) values (365,60,'Puerto Carrillo');
Insert into distritos(id, idCanton, distritos) values (366,60,'Huacas');

Insert into distritos(id, idCanton, distritos) values (367,61,'La Cruz');
Insert into distritos(id, idCanton, distritos) values (368,61,'Santa Cecilia');
Insert into distritos(id, idCanton, distritos) values (369,61,'Garita');
Insert into distritos(id, idCanton, distritos) values (370,61,'Santa Elena');

Insert into distritos(id, idCanton, distritos) values (371,62,'Carmona');
Insert into distritos(id, idCanton, distritos) values (372,62,'Santa Rita');
Insert into distritos(id, idCanton, distritos) values (373,62,'Zapotal');
Insert into distritos(id, idCanton, distritos) values (374,62,'San Pablo');
Insert into distritos(id, idCanton, distritos) values (375,62,'Porvenir');
Insert into distritos(id, idCanton, distritos) values (376,62,'Bejuco');


Insert into distritos(id, idCanton, distritos) values (377,63,'Nicoya');
Insert into distritos(id, idCanton, distritos) values (378,63,'Mansión');
Insert into distritos(id, idCanton, distritos) values (379,63,'San Antonio');
Insert into distritos(id, idCanton, distritos) values (380,63,'Quebrada Honda');
Insert into distritos(id, idCanton, distritos) values (381,63,'Sámara');
Insert into distritos(id, idCanton, distritos) values (382,63,'Nosara');
Insert into distritos(id, idCanton, distritos) values (383,63,'Belén de Nosarita');

Insert into distritos(id, idCanton, distritos) values (384,64,'Santa Cruz');
Insert into distritos(id, idCanton, distritos) values (385,64,'Bolsón');
Insert into distritos(id, idCanton, distritos) values (386,64,'27 de Abril');
Insert into distritos(id, idCanton, distritos) values (387,64,'Tempate');
Insert into distritos(id, idCanton, distritos) values (388,64,'Cartagena');
Insert into distritos(id, idCanton, distritos) values (389,64,'Cuajiniquil');
Insert into distritos(id, idCanton, distritos) values (390,64,'Diriá');
Insert into distritos(id, idCanton, distritos) values (391,64,'Cabo Velas');
Insert into distritos(id, idCanton, distritos) values (392,64,'Tamarindo');

Insert into distritos(id, idCanton, distritos) values (393,65,'Tilarán');
Insert into distritos(id, idCanton, distritos) values (394,65,'Quebrada Grande');
Insert into distritos(id, idCanton, distritos) values (395,65,'Tronadora');
Insert into distritos(id, idCanton, distritos) values (396,65,'Santa Rosa');
Insert into distritos(id, idCanton, distritos) values (397,65,'Libano');
Insert into distritos(id, idCanton, distritos) values (398,65,'Tierra Morenas');
Insert into distritos(id, idCanton, distritos) values (399,65,'Arenal');


Insert into distritos(id, idCanton, distritos) values (400,66,'Puntarenas');
Insert into distritos(id, idCanton, distritos) values (401,66,'Pitahaya');
Insert into distritos(id, idCanton, distritos) values (402,66,'Chomes');
Insert into distritos(id, idCanton, distritos) values (403,66,'Lepanto');
Insert into distritos(id, idCanton, distritos) values (404,66,'Paquera');
Insert into distritos(id, idCanton, distritos) values (405,66,'Manzanillo');
Insert into distritos(id, idCanton, distritos) values (406,66,'Guacimal');
Insert into distritos(id, idCanton, distritos) values (407,66,'Barranca');
Insert into distritos(id, idCanton, distritos) values (408,66,'Monte Verde');
Insert into distritos(id, idCanton, distritos) values (409,66,'Cóbano');
Insert into distritos(id, idCanton, distritos) values (410,66,'Chacarita');
Insert into distritos(id, idCanton, distritos) values (411,66,'Chira');
Insert into distritos(id, idCanton, distritos) values (412,66,'Acapulco');


Insert into distritos(id, idCanton, distritos) values (413,67,'Buenos Aires');
Insert into distritos(id, idCanton, distritos) values (414,67,'Volcán');
Insert into distritos(id, idCanton, distritos) values (415,67,'Potrero Grande');
Insert into distritos(id, idCanton, distritos) values (416,67,'Boruca');
Insert into distritos(id, idCanton, distritos) values (417,67,'Plas');
Insert into distritos(id, idCanton, distritos) values (418,67,'Colinas');
Insert into distritos(id, idCanton, distritos) values (419,67,'Changuena');
Insert into distritos(id, idCanton, distritos) values (420,67,'Biolley');

Insert into distritos(id, idCanton, distritos) values (421,68,'Corredor');
Insert into distritos(id, idCanton, distritos) values (422,68,'La Cuesta');
Insert into distritos(id, idCanton, distritos) values (423,68,'Canoas');
Insert into distritos(id, idCanton, distritos) values (424,68,'Laurel');


Insert into distritos(id, idCanton, distritos) values (425,69,'San Vito');
Insert into distritos(id, idCanton, distritos) values (426,69,'Sabalito');
Insert into distritos(id, idCanton, distritos) values (427,69,'Agua Buena');
Insert into distritos(id, idCanton, distritos) values (428,69,'Limoncito');
Insert into distritos(id, idCanton, distritos) values (429,69,'Pittier');

Insert into distritos(id, idCanton, distritos) values (430,70,'Espiritu Santo');
Insert into distritos(id, idCanton, distritos) values (431,70,'San Juan Grande');
Insert into distritos(id, idCanton, distritos) values (432,70,'Macacona');
Insert into distritos(id, idCanton, distritos) values (433,70,'San Rafael');
Insert into distritos(id, idCanton, distritos) values (434,70,'San Jerónimo');


Insert into distritos(id, idCanton, distritos) values (435,71,'Jacó');
Insert into distritos(id, idCanton, distritos) values (436,71,'Tárcoles');

Insert into distritos(id, idCanton, distritos) values (437,72,'Golfito');
Insert into distritos(id, idCanton, distritos) values (438,72,'Puerto Jiménes');
Insert into distritos(id, idCanton, distritos) values (439,72,'Guaycará');
Insert into distritos(id, idCanton, distritos) values (440,72,'Pavón');

Insert into distritos(id, idCanton, distritos) values (441,73,'Miramar');
Insert into distritos(id, idCanton, distritos) values (442,73,'Unión');
Insert into distritos(id, idCanton, distritos) values (443,73,'San Isidro');

Insert into distritos(id, idCanton, distritos) values (444,74,'Puerto Cortes');
Insert into distritos(id, idCanton, distritos) values (445,74,'Palmar');
Insert into distritos(id, idCanton, distritos) values (446,74,'Sierpe');
Insert into distritos(id, idCanton, distritos) values (447,74,'Bahia Ballena');
Insert into distritos(id, idCanton, distritos) values (448,74,'Piedras Blancas');

Insert into distritos(id, idCanton, distritos) values (449,75,'Parrita');

Insert into distritos(id, idCanton, distritos) values (450,76,'Quepos');
Insert into distritos(id, idCanton, distritos) values (451,76,'Savegre');
Insert into distritos(id, idCanton, distritos) values (452,76,'Naranjito');

Insert into distritos(id, idCanton, distritos) values (453,77,'Limón');
Insert into distritos(id, idCanton, distritos) values (454,77,'Valle la Estrella');
Insert into distritos(id, idCanton, distritos) values (455,77,'Río Blanco');
Insert into distritos(id, idCanton, distritos) values (456,77,'Matama');

Insert into distritos(id, idCanton, distritos) values (457,78,'Guácimo');
Insert into distritos(id, idCanton, distritos) values (458,78,'Mercedes');
Insert into distritos(id, idCanton, distritos) values (459,78,'Pocora');
Insert into distritos(id, idCanton, distritos) values (460,78,'Río Jiménez');
Insert into distritos(id, idCanton, distritos) values (461,78,'Duacarí');

Insert into distritos(id, idCanton, distritos) values (462,79,'Matina');
Insert into distritos(id, idCanton, distritos) values (463,79,'Batán');
Insert into distritos(id, idCanton, distritos) values (464,79,'Carrandi');

Insert into distritos(id, idCanton, distritos) values (465,80,'Guápiles');
Insert into distritos(id, idCanton, distritos) values (466,80,'Jiménez');
Insert into distritos(id, idCanton, distritos) values (467,80,'Rita');
Insert into distritos(id, idCanton, distritos) values (468,80,'Roxana');
Insert into distritos(id, idCanton, distritos) values (469,80,'Cariari');
Insert into distritos(id, idCanton, distritos) values (470,80,'Colorado');

Insert into distritos(id, idCanton, distritos) values (471,81,'Siquirres');
Insert into distritos(id, idCanton, distritos) values (472,81,'Pacuarito');
Insert into distritos(id, idCanton, distritos) values (473,81,'Florida');
Insert into distritos(id, idCanton, distritos) values (474,81,'Germania');
Insert into distritos(id, idCanton, distritos) values (475,81,'Cairo');
Insert into distritos(id, idCanton, distritos) values (476,81,'Alegría');

Insert into distritos(id, idCanton, distritos) values (477,82,'Bratsi');
Insert into distritos(id, idCanton, distritos) values (478,82,'Sixaola');
Insert into distritos(id, idCanton, distritos) values (479,82,'Cahuita');












