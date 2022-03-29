INSERT INTO navio(Nome, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama) VALUES ('Coffin Boat', 100, 10, 10, 2, 0);
INSERT INTO navio(Nome, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama) VALUES ('Santa Maria', 250, 20, 20, 3, 50);
INSERT INTO navio(Nome, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama) VALUES ('The Pride', 500, 40, 30, 5, 150);
INSERT INTO navio(Nome, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama) VALUES ('Revenge of Queen Anne', 1000, 75, 40, 9, 400);

INSERT INTO TipoTripulante(Tipo) VALUES ('Capitao');  
INSERT INTO TipoTripulante(Tipo) VALUES ('Atirador');  
INSERT INTO TipoTripulante(Tipo) VALUES ('Carpinteiro');

INSERT INTO Capitao(TipoTrip, PorcentagemDeEsquiva) VALUES (1, 0.25);

-- INSERT INTO Atirador(TipoTrip, PorcentagemDeEsquiva) VALUES (2, 0.25);
