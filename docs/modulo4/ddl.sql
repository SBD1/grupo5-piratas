CREATE TABLE Navio(  
 IdNav SERIAL PRIMARY KEY,  
 Nome VARCHAR(50) NOT NULL,  
 Vida INTEGER DEFAULT 100,  
 Dano INTEGER DEFAULT 10,  
 VelocidadeDeAtaque INTEGER DEFAULT 10,  
 Capacidade NUMERIC(1) DEFAULT 2,  
 Fama INTEGER DEFAULT 0,  

 CONSTRAINT NavioCk CHECK(Capacidade > 1)  
); 

 
CREATE TABLE Capitao(   
IdCapitao SERIAL PRIMARY KEY,   
IdTrip INTEGER NOT NULL,   
PorcentagemDeEsquiva INTEGER DEFAULT 1,  

CONSTRAINT CapitaoFk FOREIGN KEY(IdTrip) REFERENCES TipoTripulante(IdTrip)
); 


CREATE TABLE Atirador(   
IdAtirador SERIAL PRIMARY KEY,   
IdTrip INTEGER NOT NULL,   
PorcentagemDeAcerto NUMERIC(10) DEFAULT 1,   

CONSTRAINT AtiradorFk FOREIGN KEY(IdTrip) REFERENCES TipoTripulante(IdTrip)
); 


CREATE TABLE Carpinteiro(   
IdCarpinteiro SERIAL PRIMARY KEY, 
IdTrip INTEGER NOT NULL,   
Cura NUMERIC(10) DEFAULT 1,   

CONSTRAINT CarpinteiroFk FOREIGN KEY(IdTrip) REFERENCES TipoTripulante(IdTrip) 
); 


CREATE TABLE Tripulantes(
IdTrip SERIAL PRIMARY KEY,
IdCapitao INTEGER,
IdAtirador INTEGER,
IdCarpinteiro INTEGER,

CONSTRAINT TripCapFk FOREIGN KEY(IdTrip) REFERENCES Capitao(IdCapitao),
CONSTRAINT TripAtirFk FOREIGN KEY(IdTrip) REFERENCES Atirador(IdAtirador), 
CONSTRAINT TripCarFk FOREIGN KEY(IdTrip) REFERENCES Carpinteiro(IdCarpinteiro) 
);


CREATE TABLE TipoArea(
IdTipoArea SERIAL PRIMARY KEY,
Tipo VARCHAR(20) NOT NULL,

CONSTRAINT TipoAreaCk CHECK(Tipo IN  ('Agua','Porto'))
);


CREATE TABLE Area(
PosX INTEGER NOT NULL,
PosY INTEGER NOT NULL,
TipoArea INTEGER,

CONSTRAINT AreaPk PRIMARY KEY(PosX, PosY),
CONSTRAINT AreaTipoFk FOREIGN KEY(TipoArea) REFERENCES tipoarea(IdTipoArea)
);


CREATE TABLE Agua( 
IdAgua SERIAL PRIMARY KEY,
PosX INTEGER NOT NULL, 
PosY INTEGER NOT NULL,
Dano INTEGER NOT NULL,

CONSTRAINT AguaPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy)
);


CREATE TABLE Porto( 
IdPorto SERIAL PRIMARY KEY,
PosX INTEGER NOT NULL, 
PosY INTEGER NOT NULL, 
Dica VARCHAR(100), 
Cura INTEGER, 

CONSTRAINT PortoPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy)
);


CREATE TABLE Contrato( 
IdContrato SERIAL PRIMARY KEY, 
PosX INTEGER NOT NULL, 
PosY INTEGER NOT NULL, 
Fama INTEGER, 
Ouro INTEGER, 

CONSTRAINT ContratoPosFK FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
);


CREATE TABLE EventosAleatorios( 
IdEvento SERIAL PRIMARY KEY, 
PosX INTEGER NOT NULL, 
PosY INTEGER NOT NULL, 
Dano INTEGER, 
Ouro INTEGER, 
Fama INTEGER, 
CURA INTEGER,

CONSTRAINT EvemtosAleatoriosPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
);


CREATE TABLE Inimigo( 
IdIni SERIAL PRIMARY KEY, 
Nome VARCHAR(50) NOT NULL, 
Vida INTEGER DEFAULT 100, 
Dano INTEGER DEFAULT 10, 
VelocidadeDeAtaque INTEGER DEFAULT 10
); 

 
CREATE TABLE InstanciaInimigo( 
IdInstanciaInimigo SERIAL PRIMARY KEY, 
IdIni INTEGER NOT NULL, 
PosX INTEGER NOT NULL, 
PosY INTEGER NOT NULL, 
  
CONSTRAINT InstanciaInimigoIdFk FOREIGN KEY(IdIni) REFERENCES inimigo(idini), 
CONSTRAINT InstanciaInimigoPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
); 
 

CREATE TABLE TipoItem(
IdItem SERIAL PRIMARY KEY,  
Tipo VARCHAR(20) NOT NULL,
Quantidade INTEGER NOT NULL,
   
CONSTRAINT ItemCk CHECK(Tipo IN  ('Canhao','Casco','Vela','Luneta', 'Item Especial'))
);


CREATE TABLE Canhao (
IdCanhao SERIAL PRIMARY KEY,
IdItem INTEGER NOT NULL,
Nome VARCHAR(40) NOT NULL,
AdicaoVelocidadeAtaque INTEGER NOT NULL,
AdicaoAtaque INTEGER NOT NULL,

CONSTRAINT CanhaoFk FOREIGN KEY(IdItem) REFERENCES TipoItem(IdItem)
);


CREATE TABLE Casco (
IdCasco SERIAL PRIMARY KEY,
IdItem INTEGER NOT NULL,
Nome VARCHAR(40) NOT NULL,
AdicaoVida INTEGER NOT NULL,

CONSTRAINT CascoFk FOREIGN KEY(IdItem) REFERENCES TipoItem(IdItem)
);


CREATE TABLE Vela (
IdVela SERIAL PRIMARY KEY,
IdItem INTEGER NOT NULL,
Nome VARCHAR(40) NOT NULL,
AdicaoEsquiva INTEGER NOT NULL,

CONSTRAINT VelaFk FOREIGN KEY(IdItem) REFERENCES TipoItem(IdItem)
);


CREATE TABLE Luneta (
IdLuneta SERIAL PRIMARY KEY,
IdItem INTEGER NOT NULL,
Nome VARCHAR(40) NOT NULL,
AdicaoAcerto INTEGER NOT NULL,

CONSTRAINT LunetaFk FOREIGN KEY(IdItem) REFERENCES TipoItem(IdItem)
);


CREATE TABLE ItemEspecial (
IdItemEspecial SERIAL PRIMARY KEY,
IdItem INTEGER NOT NULL,
Nome VARCHAR(40),
ReducaoVelocidadeAtaqueInimiga INTEGER,
ReducaoAtaqueInimiga INTEGER,
ReducaoEsquivaInimiga INTEGER,
ReducaoVidaInimiga INTEGER,
ReducaoAcertoInimiga INTEGER,
Cooldown INTEGER,

CONSTRAINT ItemEspecialFk FOREIGN KEY(IdItem) REFERENCES TipoItem(IdItem)
);


CREATE TABLE Item(
IdItem SERIAL PRIMARY KEY,
IdCanhao INTEGER,
IdCasco INTEGER,
IdVela INTEGER,
IdLuneta INTEGER,
IdItemEspecial INTEGER,


CONSTRAINT ItemCanhaoFk FOREIGN KEY(IdCanhao) REFERENCES Canhao(IdCanhao),
CONSTRAINT ItemCascoFk FOREIGN KEY(IdCasco) REFERENCES Casco(IdCasco),
CONSTRAINT ItemVelaFk FOREIGN KEY(IdVela) REFERENCES Vela(IdVela),
CONSTRAINT ItemLunetaFk FOREIGN KEY(IdLuneta) REFERENCES Luneta(IdLuneta),
CONSTRAINT ItemEspecialFk FOREIGN KEY(IdItemEspecial) REFERENCES ItemEspecial(IdItemEspecial)
);


CREATE TABLE Batalha (
IdBat SERIAL PRIMARY KEY,
IdNav INTEGER,
IdInstanciaInimigo INTEGER,
Ouro INTEGER,
Fama INTEGER,

CONSTRAINT BatalhaNavFk FOREIGN KEY(IdNav) REFERENCES navio(idnav),
CONSTRAINT BatalhaIniFk FOREIGN KEY(IdInstanciaInimigo) REFERENCES instanciainimigo(IdInstanciaInimigo)
);