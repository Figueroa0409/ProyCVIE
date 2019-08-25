use indicadoresDB;
go

--create database indicadoresDB;

select * from consulta;
select * from respuesta;

delete from respuesta where id = 3;

create table consulta(
id int identity (1,1) primary key,
nombre varchar(100),
consulta varchar(1000)
)

create table respuesta(
id int identity(1,1) primary key,
consultaId int,
nombre varchar(100),
respuesta varchar(1000), 
constraint FK_RESPUESTA_CONSULTA foreign key (consultaId) references consulta(id)
)

create table fecha(
id int identity (1,1) primary key,
fecha date
)

create table cliente(
id int identity(1,1) primary key,
nombre varchar (20),
apellido1 varchar (20),
apellido2 varchar (20),
cedula varchar (20),
edad int,
correo varchar (40),
profesion varchar (40),
)

create table provincia(
idProvincia int identity(1,1) primary key,
provincias varchar(20) 
);

create table canton(
idCanton int identity(1,1) primary key,
idCantonProvincia int,
cantones varchar(20)
constraint FK_Canton FOREIGN KEY (idCantonProvincia) REFERENCES provincia(idProvincia)
);

create table distrito(
idDistrito int identity(1,1) primary key,
idDistritoCanton int ,
distritos varchar(30),
constraint FK_Distrito FOREIGN KEY (idDistritoCanton) REFERENCES canton(idCanton)
);

select * from provincia;

SET IDENTITY_INSERT provincia ON 

Insert into provincia (idProvincia, provincias) values (1,'San Jose');
Insert into provincia (idProvincia, provincias) values (2,'Cartago');
Insert into provincia (idProvincia, provincias) values (3,'Alajuela');
Insert into provincia (idProvincia, provincias) values (4,'Heredia');
Insert into provincia (idProvincia, provincias) values (5,'Guanacaste');
Insert into provincia (idProvincia, provincias) values (6,'Puntarenas');
Insert into provincia (idProvincia, provincias) values (7,'Limón');

SET IDENTITY_INSERT provincia OFF 

select p.idProvincia,p.provincias, c.idCanton,c.cantones from canton c inner join provincia p on p.idProvincia = c.idCantonProvincia;
select * from canton;

SET IDENTITY_INSERT canton ON 

Insert into canton(idCanton, idCantonProvincia, cantones) values (1,1,'San Jose');
Insert into canton(idCanton, idCantonProvincia, cantones) values (2,1,'Escazu');
Insert into canton(idCanton, idCantonProvincia, cantones) values (3,1,'Desamparados');
Insert into canton(idCanton, idCantonProvincia, cantones) values (4,1,'Puriscal');
Insert into canton(idCanton, idCantonProvincia, cantones) values (5,1,'Tarrazu');
Insert into canton(idCanton, idCantonProvincia, cantones) values (6,1,'Aserri');
Insert into canton(idCanton, idCantonProvincia, cantones) values (7,1,'Mora');
Insert into canton(idCanton, idCantonProvincia, cantones) values (8,1,'Goicoechea');
Insert into canton(idCanton, idCantonProvincia, cantones) values (9,1,'Santa Ana');
Insert into canton(idCanton, idCantonProvincia, cantones) values (10,1,'Alajuelita');
Insert into canton(idCanton, idCantonProvincia, cantones) values (11,1,'Vasquez de coronado');
Insert into canton(idCanton, idCantonProvincia, cantones) values (12,1,'Acosta');
Insert into canton(idCanton, idCantonProvincia, cantones) values (13,1,'Tibas');
Insert into canton(idCanton, idCantonProvincia, cantones) values (14,1,'Moravia');
Insert into canton(idCanton, idCantonProvincia, cantones) values (15,1,'Montes de Oca');
Insert into canton(idCanton, idCantonProvincia, cantones) values (16,1,'Turrubares');
Insert into canton(idCanton, idCantonProvincia, cantones) values (17,1,'Dota');
Insert into canton(idCanton, idCantonProvincia, cantones) values (18,1,'Curridabat');
Insert into canton(idCanton, idCantonProvincia, cantones) values (19,1,'Perez Zeledon');
Insert into canton(idCanton, idCantonProvincia, cantones) values (20,1,'LeónCortes');

Insert into canton(idCanton, idCantonProvincia, cantones) values (21,2,'Cartago');
Insert into canton(idCanton, idCantonProvincia, cantones) values (22,2,'Paraiso');
Insert into canton(idCanton, idCantonProvincia, cantones) values (23,2,'La unión');
Insert into canton(idCanton, idCantonProvincia, cantones) values (24,2,'Jimenez');
Insert into canton(idCanton, idCantonProvincia, cantones) values (25,2,'Turrialba');
Insert into canton(idCanton, idCantonProvincia, cantones) values (26,2,'Alvarado');
Insert into canton(idCanton, idCantonProvincia, cantones) values (27,2,'Oreamuno');
Insert into canton(idCanton, idCantonProvincia, cantones) values (28,2,'El Guarco');

Insert into canton(idCanton, idCantonProvincia, cantones) values (29,3,'Alajuela');
Insert into canton(idCanton, idCantonProvincia, cantones) values (30,3,'Atenas');
Insert into canton(idCanton, idCantonProvincia, cantones) values (31,3,'Grecia');
Insert into canton(idCanton, idCantonProvincia, cantones) values (32,3,'Guatuso');
Insert into canton(idCanton, idCantonProvincia, cantones) values (33,3,'Chiles');
Insert into canton(idCanton, idCantonProvincia, cantones) values (34,3,'Naranjo');
Insert into canton(idCanton, idCantonProvincia, cantones) values (35,3,'Orotina');
Insert into canton(idCanton, idCantonProvincia, cantones) values (36,3,'Palmare');
Insert into canton(idCanton, idCantonProvincia, cantones) values (37,3,'Poas');
Insert into canton(idCanton, idCantonProvincia, cantones) values (38,3,'Rio Cuarto');
Insert into canton(idCanton, idCantonProvincia, cantones) values (39,3,'San Carlos');
Insert into canton(idCanton, idCantonProvincia, cantones) values (40,3,'San Mateo');
Insert into canton(idCanton, idCantonProvincia, cantones) values (41,3,'San Ramón');
Insert into canton(idCanton, idCantonProvincia, cantones) values (42,3,'Upala');
Insert into canton(idCanton, idCantonProvincia, cantones) values (43,3,'Sarchi');
Insert into canton(idCanton, idCantonProvincia, cantones) values (44,3,'Zarcero');

Insert into canton(idCanton, idCantonProvincia, cantones) values (45,4,'Heredia');
Insert into canton(idCanton, idCantonProvincia, cantones) values (46,4,'Barba');
Insert into canton(idCanton, idCantonProvincia, cantones) values (47,4,'Bélen');
Insert into canton(idCanton, idCantonProvincia, cantones) values (48,4,'Flores');
Insert into canton(idCanton, idCantonProvincia, cantones) values (49,4,'San Isidro');
Insert into canton(idCanton, idCantonProvincia, cantones) values (50,4,'San Pablo');
Insert into canton(idCanton, idCantonProvincia, cantones) values (51,4,'San Rafael');
Insert into canton(idCanton, idCantonProvincia, cantones) values (52,4,'Santa Barbara');
Insert into canton(idCanton, idCantonProvincia, cantones) values (53,4,'Santo Domingo');
Insert into canton(idCanton, idCantonProvincia, cantones) values (54,4,'Sarapiqui');

Insert into canton(idCanton, idCantonProvincia, cantones) values (55,5,'Liberia');
Insert into canton(idCanton, idCantonProvincia, cantones) values (56,5,'Abangares');
Insert into canton(idCanton, idCantonProvincia, cantones) values (57,5,'Bagaces');
Insert into canton(idCanton, idCantonProvincia, cantones) values (58,5,'Cañas');
Insert into canton(idCanton, idCantonProvincia, cantones) values (59,5,'Carrillo');
Insert into canton(idCanton, idCantonProvincia, cantones) values (60,5,'Hojancha');
Insert into canton(idCanton, idCantonProvincia, cantones) values (61,5,'La cruz');
Insert into canton(idCanton, idCantonProvincia, cantones) values (62,5,'Nandayure');
Insert into canton(idCanton, idCantonProvincia, cantones) values (63,5,'Nicoya');
Insert into canton(idCanton, idCantonProvincia, cantones) values (64,5,'Santa Cruz');
Insert into canton(idCanton, idCantonProvincia, cantones) values (65,5,'Tilarán');

Insert into canton(idCanton, idCantonProvincia, cantones) values (66,6,'Puntarenas');
Insert into canton(idCanton, idCantonProvincia, cantones) values (67,6,'Buenos aires');
Insert into canton(idCanton, idCantonProvincia, cantones) values (68,6,'Corredores');
Insert into canton(idCanton, idCantonProvincia, cantones) values (69,6,'Coto brus');
Insert into canton(idCanton, idCantonProvincia, cantones) values (70,6,'Esparza');
Insert into canton(idCanton, idCantonProvincia, cantones) values (71,6,'Garabito');
Insert into canton(idCanton, idCantonProvincia, cantones) values (72,6,'Golfito');
Insert into canton(idCanton, idCantonProvincia, cantones) values (73,6,'Montes de oro');
Insert into canton(idCanton, idCantonProvincia, cantones) values (74,6,'Osa');
Insert into canton(idCanton, idCantonProvincia, cantones) values (75,6,'Parrita');
Insert into canton(idCanton, idCantonProvincia, cantones) values (76,6,'Quepos');

Insert into canton(idCanton, idCantonProvincia, cantones) values (77,7,'Limón');
Insert into canton(idCanton, idCantonProvincia, cantones) values (78,7,'Guácimo');
Insert into canton(idCanton, idCantonProvincia, cantones) values (79,7,'Matina');
Insert into canton(idCanton, idCantonProvincia, cantones) values (80,7,'Pococí');
Insert into canton(idCanton, idCantonProvincia, cantones) values (81,7,'Siquirres');
Insert into canton(idCanton, idCantonProvincia, cantones) values (82,7,'Talamnca');

SET IDENTITY_INSERT canton OFF

select p.idProvincia,p.provincias, c.idCanton,c.cantones, d.idDistrito, d.distritos 
from distrito d inner join canton c inner join provincia p on p.idProvincia = c.idCantonProvincia on d.idDistritoCanton = c.idCanton;

select c.idCanton,c.cantones, d.idDistrito, d.distritos 
from distrito d inner join canton c on d.idDistritoCanton = c.idCanton;

select * from distrito;

SET IDENTITY_INSERT distrito ON 

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (1,1,'San Jose');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (2,1,'El Carmen');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (3,1,'Hospital');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (4,1,'Catedral');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (5,1,'Zapote');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (6,1,'San Francisco de dos rios');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (7,1,'Uruca');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (8,1,'Mata Redonda');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (9,1,'Pavas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (10,1,'Hatillo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (11,1,'San Sebastián');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (12,2,'Escazú');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (13,2,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (14,2,'San Rafael');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (15,3,'Desamparados');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (16,3,'San Miguel');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (17,3,'San Juan de Dios');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (18,3,'San Rafael Arriba');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (19,3,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (20,3,'Fráiles');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (21,3,'Patarrá');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (22,3,'San Cristóbal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (23,3,'Rosario');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (24,3,'Damas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (25,3,'San Rafael Abajo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (26,3,'Gravilias');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (27,4,'Santiago');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (28,4,'Mercedes sur');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (29,4,'Barbacoas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (30,4,'Grifo Alto');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (31,4,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (32,4,'Candelarita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (33,4,'Desamparaditos');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (34,4,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (35,4,'Chires');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (36,5,'San Marcos');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (37,5,'San Lorenzo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (38,5,'San Carlos');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (39,6,'Aserri');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (40,6,'Tarbaca');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (41,6,'Vuelta de Jorco');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (42,6,'San Gabriel');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (43,6,'Legua');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (44,6,'Monterrey');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (45,6,'Salitrillos');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (46,7,'Colón');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (47,7,'Guayabo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (48,7,'Tabarcia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (49,7,'Piedras Negras');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (50,7,'Picagres');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (51,8,'Guadalupe');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (52,8,'San Francisco');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (53,8,'Calle Francisco');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (54,8,'Mta dde Platano');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (55,8,'Ipís');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (56,8,'Rancho Redondo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (57,8,'Purral');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (58,9,'Santa Ana');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (59,9,'Salitral');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (60,9,'Pozos');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (61,9,'Uruca');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (62,9,'Piedades');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (63,9,'Brasil');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (64,10,'Alajuelita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (65,10,'San Josecito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (66,10,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (67,10,'Concepción');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (68,10,'San Felipe');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (69,11,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (70,11,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (71,11,'Dulce Nombre De Jesus');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (72,11,'Patalillo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (73,11,'Cascajal');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (74,12,'San Ignacio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (75,12,'Guaitil');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (76,12,'Palmichal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (77,12,'Cangrejal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (78,12,'Sabanillas');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (79,13,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (80,13,'Cinco Esquinas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (81,13,'Anselmo Llorente');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (82,13,'León XIII');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (83,13,'Colina');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (84,14,'San Vicente');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (85,14,'San Jerónimo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (86,14,'Trinidad');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (87,15,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (88,15,'Sabanilla');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (89,15,'Mercedes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (90,15,'San Rafael');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (91,16,'San Pablo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (92,16,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (93,16,'San Juan de Mata');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (94,16,'San Luis');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (95,17,'Santa María');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (96,17,'Jardín');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (97,17,'Copey');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (98,18,'Curridabat');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (99,18,'Granadilla');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (100,18,'Sánchez');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (101,18,'Tirrases');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (102,19,'San Isidro del General');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (103,19,'General');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (104,19,'Daniel Flores');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (105,19,'Rivas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (106,19,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (107,19,'Platanares');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (108,19,'Pejibaye');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (109,19,'Cajón');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (110,19,'Barú');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (111,19,'Rio Nuevo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (112,19,'Páramo');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (113,20,'San Pablo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (114,20,'San Andrés');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (115,20,'Llano Bonito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (116,20,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (117,20,'Santa Cruz');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (118,20,'San Antonio');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (119,21,'Oiental');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (120,21,'Occidental');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (121,21,'Carmen');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (122,21,'San Nicólas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (123,21,'Aguacaliente');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (124,21,'Guadalupe o Arenilla');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (125,21,'Corralillo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (126,21,'Tierra Blanca');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (127,21,'Dulce Nombre');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (128,21,'LLano Grande');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (129,21,'Quebradilla');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (130,22,'Paraiso');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (131,22,'Santiago');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (132,22,'Orosi');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (133,22,'Cachi');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (134,23,'La Unión');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (135,23,'Tres Rios');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (136,23,'San Diego');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (137,23,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (138,23,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (139,23,'Concepción');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (140,23,'Dulce Nombre');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (141,23,'San Ramón');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (142,23,'Rio Azul');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (143,24,'Juan Viñas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (144,24,'Tucurrique');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (145,24,'Pejibaye');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (146,25,'Turrialba');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (147,25,'La suiza');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (148,25,'Peralta');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (149,25,'Santa Cruz');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (150,25,'Santa Teresita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (151,25,'Pavones');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (152,25,'Tuis');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (153,25,'Tuis');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (154,25,'Tayutic');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (155,25,'Santa Rosa');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (156,25,'Tres Equis');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (157,26,'Pacayas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (158,26,'Cervantes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (159,26,'Capellades');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (160,27,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (161,27,'Cot');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (162,27,'Potrero Cerrado');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (163,27,'Cipreses');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (164,27,'Santa Rosa');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (165,28,'El Tejar');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (166,28,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (167,28,'Tobosi');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (168,28,'Patio de Agua');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (170,29,'San José');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (171,29,'Carrizal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (172,29,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (173,29,'Guácima');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (174,29,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (175,29,'Sabanilla');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (176,29,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (177,29,'Río Segundo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (178,29,'Desamparados');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (179,29,'Turrucares');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (180,29,'Tambor');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (181,29,'La Garita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (182,29,'Sarapiqui');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (184,30,'Atenas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (185,30,'Jésus');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (186,30,'Mercedes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (187,30,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (188,30,'Concepción');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (189,30,'San Jose');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (190,30,'´Santa Eulalia');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (192,31,'Grecia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (193,31,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (194,31,'San José');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (195,31,'San Roque');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (196,31,'Tacares');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (197,31,'Rio Cuarto');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (198,31,'Puente de Piedra');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (199,31,'Bolivar');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (200,32,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (201,32,'Buenavista');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (202,32,'Cote');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (203,33,'Los Chiles');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (204,33,'Caño Negro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (205,33,'El Amparo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (206,33,'San Jorge');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (207,34,'Naranjo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (208,34,'San Miguel');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (209,34,'San José');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (210,34,'Cirri Sur');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (211,34,'San Jerónimo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (212,34,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (213,34,'Rosario');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (214,35,'Orotina');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (215,35,'Mastate');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (216,35,'Hacienda Vieja');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (217,35,'Coyolar');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (218,35,'Ceiba');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (219,36,'Palmares');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (220,36,'Zaragoza');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (221,36,'Buenos Aires');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (222,36,'Santiago');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (223,36,'Candelaria');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (224,36,'Esquipulas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (225,36,'Granja');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (226,37,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (227,37,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (228,37,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (229,37,'Carrillos');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (230,37,'Sabana Redonda');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (231,38,'Rio Cuarto');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (232,38,'Santa Rita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (233,38,'Santa Isabel');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (234,29,'Quesada');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (235,29,'Florencia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (236,29,'Buenavista');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (237,29,'Aguas Zarcas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (238,39,'Venecia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (239,39,'Pital');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (240,39,'Fortuna');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (241,39,'Tigra');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (242,39,'Palmera');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (243,39,'Venado');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (244,39,'Cutris');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (245,39,'Monterrey');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (256,39,'Pocosol');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (257,40,'San Mateo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (258,40,'Desmonte');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (259,40,'Jesús María');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (260,41,'San Ramón');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (261,41,'Santiago');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (262,41,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (263,41,'Piedades Norte');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (264,41,'Piedades Sur');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (265,41,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (266,41,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (267,41,'Angeles');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (268,41,'Alfaro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (269,41,'Volio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (270,41,'Concepcion');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (271,41,'Zapotal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (272,41,'Peñas Blancas');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (273,42,'Upala');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (274,42,'Aguas Claras');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (275,42,'San José');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (276,42,'Bijagua');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (277,42,'Delicias');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (278,42,'Dos Rios');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (279,42,'Yolillal');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (280,43,'Sarchi Norte');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (281,43,'Sarchi Sur');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (282,43,'Toro Amarillo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (283,43,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (284,43,'Rodriguez');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (285,44,'Zarcero');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (286,44,'Laguna');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (287,44,'Tapezco');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (288,44,'Guadalupe');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (289,44,'Palmira');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (290,44,'Zapote');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (291,44,'Brisas');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (292,45,'Heredia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (293,45,'Mercedes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (294,45,'San Francisco');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (295,45,'Ulloa');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (296,45,'Vara Blanca');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (298,46,'Barva');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (299,46,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (300,46,'San Pablo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (301,46,'San Roque');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (302,46,'Santa Lucia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (303,46,'San José de la montaña');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (304,47,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (305,47,'Rivera');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (307,47,'Asunción');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (308,48,'San Joaquín');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (309,48,'Barrantes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (310,48,'Llorente');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (311,49,'San Isidro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (312,49,'San José');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (313,49,'Concepción');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (314,49,'San Francisco');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (315,50,'San Pablo');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (316,51,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (317,51,'San Josecito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (318,51,'Santiago');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (319,51,'Angeles');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (320,51,'Concepción');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (321,52,'Santa Barbara');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (322,52,'San Pedro');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (323,52,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (324,52,'Jesús');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (325,52,'Santo Domingo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (326,52,'Purabá');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (327,53,'Santo Domingo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (328,53,'San Vicente');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (329,53,'San Miguel');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (330,53,'Paracito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (331,53,'Santo Tomás');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (332,53,'Santa Rosa');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (333,53,'Tures');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (334,53,'Pará');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (335,54,'Puerto Viejo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (336,54,'La Virgen');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (337,54,'Horquetas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (338,54,'Llanuras del Gaspar');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (339,54,'Cureña');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (340,55,'Liberia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (341,55,'Cañas Dulces');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (342,55,'Mayorga');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (343,55,'Nacascolo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (344,55,'Curubande');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (345,56,'Juntas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (346,56,'Sierra');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (347,56,'San Juan');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (348,56,'Colorado');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (350,57,'Bagaces');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (351,57,'Fortuns');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (352,57,'Mogote');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (353,57,'Río Naranjo');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (354,58,'Cañas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (355,58,'Palmira');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (356,58,'San Miguel');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (357,58,'Bebedero');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (358,58,'Porozal');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (359,59,'Filadelfia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (360,59,'Palmira');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (361,59,'Sardinal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (362,59,'Belén');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (363,60,'Hojancha');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (364,60,'Monte Romo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (365,60,'Puerto Carrillo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (366,60,'Huacas');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (367,61,'La Cruz');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (368,61,'Santa Cecilia');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (369,61,'Garita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (370,61,'Santa Elena');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (371,62,'Carmona');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (372,62,'Santa Rita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (373,62,'Zapotal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (374,62,'San Pablo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (375,62,'Porvenir');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (376,62,'Bejuco');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (377,63,'Nicoya');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (378,63,'Mansión');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (379,63,'San Antonio');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (380,63,'Quebrada Honda');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (381,63,'Sámara');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (382,63,'Nosara');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (383,63,'Belén de Nosarita');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (384,64,'Santa Cruz');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (385,64,'Bolsón');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (386,64,'27 de Abril');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (387,64,'Tempate');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (388,64,'Cartagena');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (389,64,'Cuajiniquil');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (390,64,'Diriá');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (391,64,'Cabo Velas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (392,64,'Tamarindo');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (393,65,'Tilarán');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (394,65,'Quebrada Grande');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (395,65,'Tronadora');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (396,65,'Santa Rosa');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (397,65,'Libano');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (398,65,'Tierra Morenas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (399,65,'Arenal');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (400,66,'Puntarenas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (401,66,'Pitahaya');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (402,66,'Chomes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (403,66,'Lepanto');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (404,66,'Paquera');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (405,66,'Manzanillo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (406,66,'Guacimal');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (407,66,'Barranca');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (408,66,'Monte Verde');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (409,66,'Cóbano');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (410,66,'Chacarita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (411,66,'Chira');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (412,66,'Acapulco');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (413,67,'Buenos Aires');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (414,67,'Volcán');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (415,67,'Potrero Grande');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (416,67,'Boruca');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (417,67,'Plas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (418,67,'Colinas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (419,67,'Changuena');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (420,67,'Biolley');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (421,68,'Corredor');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (422,68,'La Cuesta');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (423,68,'Canoas');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (424,68,'Laurel');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (425,69,'San Vito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (426,69,'Sabalito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (427,69,'Agua Buena');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (428,69,'Limoncito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (429,69,'Pittier');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (430,70,'Espiritu Santo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (431,70,'San Juan Grande');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (432,70,'Macacona');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (433,70,'San Rafael');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (434,70,'San Jerónimo');


Insert into distrito(idDistrito, idDistritoCanton, distritos) values (435,71,'Jacó');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (436,71,'Tárcoles');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (437,72,'Golfito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (438,72,'Puerto Jiménes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (439,72,'Guaycará');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (440,72,'Pavón');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (441,73,'Miramar');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (442,73,'Unión');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (443,73,'San Isidro');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (444,74,'Puerto Cortes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (445,74,'Palmar');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (446,74,'Sierpe');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (447,74,'Bahia Ballena');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (448,74,'Piedras Blancas');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (449,75,'Parrita');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (450,76,'Quepos');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (451,76,'Savegre');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (452,76,'Naranjito');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (453,77,'Limón');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (454,77,'Valle la Estrella');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (455,77,'Río Blanco');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (456,77,'Matama');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (457,78,'Guácimo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (458,78,'Mercedes');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (459,78,'Pocora');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (460,78,'Río Jiménez');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (461,78,'Duacarí');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (462,79,'Matina');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (463,79,'Batán');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (464,79,'Carrandi');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (465,80,'Guápiles');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (466,80,'Jiménez');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (467,80,'Rita');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (468,80,'Roxana');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (469,80,'Cariari');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (470,80,'Colorado');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (471,81,'Siquirres');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (472,81,'Pacuarito');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (473,81,'Florida');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (474,81,'Germania');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (475,81,'Cairo');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (476,81,'Alegría');

Insert into distrito(idDistrito, idDistritoCanton, distritos) values (477,82,'Bratsi');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (478,82,'Sixaola');
Insert into distrito(idDistrito, idDistritoCanton, distritos) values (479,82,'Cahuita');

SET IDENTITY_INSERT distrito OFF










