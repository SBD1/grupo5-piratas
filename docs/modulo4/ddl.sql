CREATE TABLE Navio(  
 IdNav NUMERIC(4) NOT NULL,  
 Nome VARCHAR(50) NOT NULL,  
 Vida NUMERIC(4) DEFAULT 100,  
 Dano NUMERIC(4) DEFAULT 10,  
 VelocidadeDeAtaque NUMERIC(4) DEFAULT 10,  
 Capacidade NUMERIC(1) DEFAULT 2,  
 Fama NUMERIC(4) DEFAULT 0,  
   
 CONSTRAINT NavioPk PRIMARY KEY(IdNav),  
 CONSTRAINT NavioCk CHECK(Capacidade > 1)  
); 

 
CREATE TABLE TipoTripulante(  
 IdTrip NUMERIC(4) NOT NULL,  
 Tipo VARCHAR(20) NOT NULL,  
   
 CONSTRAINT TripPk PRIMARY KEY(IdTrip),  
 CONSTRAINT TripCk CHECK(Tipo IN  ('Capitao','Atirador','Carpinteiro'))
); 

 
CREATE TABLE Capitao(   
IdCapitao NUMERIC(4) NOT NULL,   
IdTrip NUMERIC(4) NOT NULL,   
PorcentagemDeEsquiva NUMERIC(4) DEFAULT 1,  

CONSTRAINT CapitaoFk FOREIGN KEY(IdTrip) REFERENCES TipoTripulante(IdTrip),   
Constraint CapitaoPk PRIMARY KEY(IdCapitao)   
); 


CREATE TABLE Atirador(   
IdAtirador NUMERIC(4) NOT NULL,   
IdTrip NUMERIC(4) NOT NULL,   
PorcentagemDeAcerto NUMERIC(10) DEFAULT 1,   

CONSTRAINT AtiradorFk FOREIGN KEY(IdTrip) REFERENCES TipoTripulante(IdTrip),   
CONSTRAINT AtiradorPk PRIMARY KEY(IdAtirador)   
); 


CREATE TABLE Carpinteiro(   
IdCarpinteiro NUMERIC(4) NOT NULL,   
IdTrip NUMERIC(4) NOT NULL,   
Cura NUMERIC(10) DEFAULT 1,   

CONSTRAINT CarpinteiroFk FOREIGN KEY(IdTrip) REFERENCES TipoTripulante(IdTrip),   
Constraint CarpinteiroPk PRIMARY KEY(IdCarpinteiro)   
); 


CREATE TABLE Inimigo(
IdIni NUMERIC(4,0) NOT NULL,
Nome VARCHAR(50) NOT NULL,
Vida NUMERIC(4) DEFAULT 100,
Dano NUMERIC(4) DEFAULT 10,
VelocidadeDeAtaque NUMERIC(4) DEFAULT 10,

CONSTRAINT IniPk PRIMARY KEY(IdIni)
);


CREATE TABLE InstanciaInimigo( 
IdInstanciaInimigo NUMERIC(4), 
IdIni NUMERIC(4), 
PosX NUMERIC(4), 
PosY NUMERIC(4),
 
CONSTRAINT InstanciaInimigoPk PRIMARY KEY(IdInstanciaInimigo), 
CONSTRAINT InstanciaInimigoIdFk FOREIGN KEY(IdIni) REFERENCES inimigo(idini), 
CONSTRAINT InstanciaInimigoPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy)
);

CREATE TABLE Area(
PosX NUMERIC(4),
PosY NUMERIC(4),
TipoArea VARCHAR(20),

CONSTRAINT AreaPk PRIMARY KEY(PosX, PosY),
CONSTRAINT AreaCk Check(TipoArea IN ('Agua', 'Porto', 'Eventos Aleatorios', 'Contrato'))
);


CREATE TABLE Agua( 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Dano NUMERIC(4), 

CONSTRAINT AguaPk PRIMARY KEY(PosX, PosY) 
);


CREATE TABLE Porto( 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Dica VARCHAR(100), 
Cura NUMERIC(4), 

CONSTRAINT PortoPk PRIMARY KEY(PosX, PosY) 
);


CREATE TABLE Contrato( 
IdContrato NUMERIC(4), 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Fama NUMERIC(4), 
Ouro NUMERIC(4), 

CONSTRAINT ContratoPk PRIMARY KEY(IdContrato), 
CONSTRAINT ContratoPosFK FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
);


CREATE TABLE EventosAleatorios( 
IdEvento NUMERIC(4), 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Dano NUMERIC(4), 
Ouro NUMERIC(4), 
Fama NUMERIC(4), 
CURA NUMERIC(4),

CONSTRAINT EventosAleatoriosPK PRIMARY KEY(IdEvento), 
CONSTRAINT EvemtosAleatoriosPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
);


CREATE TABLE Inimigo( 
IdIni NUMERIC(4,0) NOT NULL, 
Nome VARCHAR(50) NOT NULL, 
Vida NUMERIC(4) DEFAULT 100, 
Dano NUMERIC(4) DEFAULT 10, 
VelocidadeDeAtaque NUMERIC(4) DEFAULT 10, 

CONSTRAINT IniPk PRIMARY KEY(IdIni) 
); 

 
CREATE TABLE InstanciaInimigo( 
IdInstanciaInimigo NUMERIC(4), 
IdIni NUMERIC(4), 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
 
CONSTRAINT InstanciaInimigoPk PRIMARY KEY(IdInstanciaInimigo), 
CONSTRAINT InstanciaInimigoIdFk FOREIGN KEY(IdIni) REFERENCES inimigo(idini), 
CONSTRAINT InstanciaInimigoPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
); 

 
CREATE TABLE Area( 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
TipoArea VARCHAR(20),

CONSTRAINT AreaPk PRIMARY KEY(PosX, PosY), 
CONSTRAINT AreaCk Check(TipoArea IN ('Agua', 'Porto', 'Eventos Aleatorios', 'Contrato')) 
); 
 

CREATE TABLE Agua( 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Dano NUMERIC(4), 

CONSTRAINT AguaPk PRIMARY KEY(PosX, PosY) 
); 
 

CREATE TABLE Porto( 
PosX
NUMERIC(4), 
PosY NUMERIC(4), 
Dica VARCHAR(100), 
Cura NUMERIC(4), 

CONSTRAINT PortoPk PRIMARY KEY(PosX, PosY) 
); 
 

CREATE TABLE Contrato( 
IdContrato NUMERIC(4), 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Fama NUMERIC(4), 
Ouro NUMERIC(4), 

CONSTRAINT ContratoPk PRIMARY KEY(IdContrato), 
CONSTRAINT ContratoPosFK FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
); 
 
 
CREATE TABLE EventosAleatorios( 
IdEvento NUMERIC(4), 
PosX NUMERIC(4), 
PosY NUMERIC(4), 
Dano NUMERIC(4), 
Ouro NUMERIC(4), 
Fama NUMERIC(4), 
CURA NUMERIC(4), 

CONSTRAINT EventosAleatoriosPK PRIMARY KEY(IdEvento), 
CONSTRAINT EvemtosAleatoriosPosFk FOREIGN KEY(PosX, PosY) REFERENCES area(posx, posy) 
);


CREATE TABLE Item(
IdItem NUMERIC(4) NOT NULL,
Nome VARCHAR(20),
Quantidade NUMERIC(4),
Tipo VARCHAR(20),

CONSTRAINT ItemPk PRIMARY KEY(IdItem),
CONSTRAINT ItemCk CHECK(Tipo IN ('Canhao', 'Casco', 'Luneta', 'Item Especial'))
);


CREATE TABLE Canhao (
IdItem NUMERIC(4) NOT NULL,
Nome VARCHAR(40),
Quantidade NUMERIC(4),
AdicaoVelocidadeAtaque NUMERIC(4),
AdicaoAtaque NUMERIC(4),

CONSTRAINT CanhaoPk PRIMARY KEY(IdItem)
);


CREATE TABLE Casco (
IdItem NUMERIC(4) NOT NULL,
Nome VARCHAR(40),
Quantidade NUMERIC(4),
AdicaoVida NUMERIC(4),

CONSTRAINT CascoPk PRIMARY KEY(IdItem)
);


CREATE TABLE Vela (
IdItem NUMERIC(4) NOT NULL,
Nome VARCHAR(40),
Quantidade NUMERIC(4),
AdicaoEsquiva NUMERIC(4),

CONSTRAINT VelaPk PRIMARY KEY(IdItem)
);


CREATE TABLE Luneta (
IdItem NUMERIC(4) NOT NULL,
Nome VARCHAR(40),
Quantidade NUMERIC(4),
AdicaoAcerto NUMERIC(4),

CONSTRAINT LunetaPk PRIMARY KEY(IdItem)
);


CREATE TABLE ItemEspecial (
IdItem NUMERIC(4) NOT NULL,
Nome VARCHAR(40),
Quantidade NUMERIC(4),
ReducaoVelocidadeAtaqueInimiga NUMERIC(4),
ReducaoAtaqueInimiga NUMERIC(4),
ReducaoEsquivaInimiga NUMERIC(4),
ReducaoVidaInimiga NUMERIC(4),
ReducaoAcertoInimiga NUMERIC(4),
Cooldown NUMERIC(4),

CONSTRAINT ItemEspecialPk PRIMARY KEY(IdItem)
);


CREATE TABLE Batalha (
IdBat NUMERIC(4),
IdNav NUMERIC(4),
IdInstanciaInimigo NUMERIC(4),
Ouro NUMERIC(4),
Fama NUMERIC(4),

CONSTRAINT BatalhaPk PRIMARY KEY(IdBat),
CONSTRAINT BatalhaNavFk FOREIGN KEY(IdNav) REFERENCES navio(idnav),
CONSTRAINT BatalhaIniFk FOREIGN KEY(IdInstanciaInimigo) REFERENCES instanciainimigo(IdInstanciaInimigo)
);