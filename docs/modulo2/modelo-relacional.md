# Modelo Relacional


### Navio = { Id_nav, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama }

### Tripulante = {id_trip, PorcentagemDeEsquiva, PorcentagemDeAcerto, Nome, Tipo, Cura}

### Inimigo = { Id_ini, Nome, Dano, Vida, VelocidadeDeAtaque, AtaqueEspecial }

### Base = {  }

### Inventário = { Id_inv, Tamanho }

### Item = { Id_item, Nome, Quantidade, Tipo }

### Equipamento = { Id_equip, id_item }

### Batalha = {Id_bat, Id_nav, Id_ini}

### Área = {Id_area, Tipo, CoordenadaX, CoordenadaY}

### Água = { Id_area, CoordenadaX, CoordenadaY, Dano }

### Terra = { Id_terra, Id_area, CoordenadaX, CoordenadaY, Nome} (herança de herança…?)

### Porto = {Id_area, Id_terra, ?}

### CIvil = {?}

### Base = {Id_area, Id_terra, Cura, …?}