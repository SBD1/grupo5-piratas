# Legendas do Modelo Relacional

> > Guia:  
> >  <ins>Palavra</ins> - Chave primária  
> >  _Palavra_ - Chave estrangeira

**Navio** = { <ins>nome_nav</ins>, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama }

* Nome: Conjunto de nomes possíveis para os navios que o jogador pode jogar durante o jogo - string de 35 caracteres

* Vida: Conjunto de pontos de vida possíveis para o jogador - número inteiro de 0 a 1000

* Dano: Conjunto de pontos de dano possíveis que o Navio pode infligir em seus inimigos - inteiro de 0 a 100

* VelocidadeDeAtaque: Conjunto de pontos de velocidade de ataque possíveis que o jogador pode ter para poder ter a chance de atacar primeiro em um combate - inteiro de 1 a 100

* Capacidade: Conjunto de pontos de capacidade possíveis que o Navio pode ter para carregar tripulantes - inteiro de 2 a 9

* Fama: Conjunto de pontos possíveis que o jogador possui e podem ser utilizados para obter vantagens no jogo - inteiro de 0 a 5000
<br><br>

**Tripulante** = { <ins>Id_trip</ins>, PorcentagemDeEsquiva, PorcentagemDeAcerto, Nome, Tipo, Cura }

* Id_trip: Conjunto de números de identificação dos tripulantes do navio - 1 a 20

* PorcentagemDeEsquiva: Conjunto de números em porcentagem que mostra a chance que o navio tem de receber danos - inteiro entre 0 e 100

* PorcentagemDeAcerto: Conjunto de números em porcentagem que mostra a chance que o navio tem de causar danos - inteiro entre 0 e 100

* Nome: Conjunto de nome possíveis para serem dados a um tripulante - string de 35 caracteres

* Tipo: Conjunto de tipos de um tripulante - string de 20 caracteres

* Cura: Conjunto de pontos que equivalem a cura para a vida do navio - inteiro entre 0 e 1000
<br><br>

**Inimigo** = { <ins>Id_ini</ins>, Nome, Dano, Vida, VelocidadeDeAtaque, AtaqueEspecial }

* Id_ini: Conjunto de números de identificação dos inimigos do jogo - número inteiro de 1 a 20

* Nome: Conjunto de nomes possíveis para os inimigos que o jogador pode encontrar durante o jogo - string de 35 caracteres

* Vida: Conjunto de pontos de vida possíveis para os inimigos - número inteiro de 0 a 1000

* VelocidadeDeAtaque: Conjunto de pontos de velocidade de ataque possíveis que o inimigo pode ter para poder ter a chance de atacar primeiro em um combate - inteiro de 1 a 100

* AtaqueEspecial: tipos de ataque diferentes que vão interagir de maneiras diferentes com o navio.
<br><br>

**Item** = { <ins>Id_item</ins>, Nome, Quantidade, Tipo }

* Id_item: Conjunto de números de identificação possíveis que identificam cada item do jogo - inteiro entre 1 e 500

* Nome: Conjunto de nomes possíveis para os itens que um navio pode obter no jogo - string de 50 caracteres

* Quantidade - Quantidade de itens possíveis no mapa deste tipo - inteiro de 0 a 100

* Tipo - Conjunto de tipo de itens - string de 50 caracteres

    **Canhões** = { <ins>Id_item</ins>, Nome, Quantidade, Adição de velocidade de ataque, Adição de ataque}

    * Adição de velocidade de ataque: Conjunto de números possíveis que quantificam a velocidade de ataque do navio em uma batalha, que define quem começa atacando - inteiro de 0 a 100

    * Adição de ataque: Conjunto de números possíveis que representam a quantidade de dano a mais que o jogador vai infligir ao inimigo quando dispara com o canhão - inteiro de 0 a 100

    **Casco** = { <ins>Id_item</ins>, Nome, Quantidade, Adição de vida}

    * Adição de vida: Conjunto de números possíveis que quantificam o aumento de vida dado por um casco - inteiro de 0 a 100

    **Vela** = { <ins>Id_item</ins>, Nome, Quantidade, Melhora Chance de esquiva}

    * Melhora Chance de esquiva: Conjunto de números possíveis que contribuirão para a melhora de chance de esquiva do navio durante uma batalha - float de 0 a 100

    **Luneta** = { <ins>Id_item</ins>, Nome, Quantidade, Melhora Chance de acerto}

    * Melhora Chance de esquiva: Conjunto de números possíveis que contribuirão para a melhora de chance de esquiva do navio durante uma batalha - float de 0 a 100

    **Itens especiais** = { <ins>Id_item</ins>, Nome, Quantidade, Redução de velocidade de ataque inimiga, Redução de ataque inimiga, Redução de esquiva inimiga, Redução de vida inimiga, Redução de chance de acerto inimiga, Cooldown}

    * Redução de velocidade de ataque inimiga: Conjunto de números possíveis que representam a redução de velocidade de ataque que o uso do item pode causar ao inimigo - inteiro entre 0 e 100

    * Redução de ataque inimiga: Conjunto de números possíveis que representam a redução de ataque inimigo que o uso do item pode causar ao inimigo - inteiro entre 0 e 100

    * Redução de esquiva inimiga: Conjunto de números possíveis que representam a redução de esquiva que o uso do item pode causar no inimigo - inteiro entre 0 e 100

    * Redução de vida inimiga: Conjunto de números possíveis que representam a redução de vida que o uso do item pode causar ao inimigo - inteiro entre 0 e 100

    * Redução de chance de acerto inimiga: Conjunto de números possíveis que representam a redução chance de acerto de ataques inimigos - inteiro entre 0 e 100

    * Cooldown: tempo que falta para o jogador poder utilizar o item novamente - inteiro de 0 a 100
<br><br>

**Batalha** = { <ins>Id*bat</ins>, nome_nav, \_Id_ini*}

* Id_bat: Conjunto de números de id possíveis que identificam cada batalha do jogo. - inteiro entre 1 e 500

* Nome_nav: Conjunto de nomes possíveis para os navios que o jogador pode jogar durante o jogo - string de 35 caracteres

* Id_ini: Conjunto de números de identificação dos inimigos do jogo - número inteiro de 1 a 20
<br><br>

**Area** = { _CoordenadaX, CoordenadaY_, Tipo }

* CoodenadaX: Conjunto de números para identificar uma área na vertical - inteiro entre 1 e 10

* CoordenadaY: Conjunto de números para identificar uma área na vertical - inteiro entre 1 e 10

* Tipo: Conjunto de tipos de áreas - string de 40 caracteres

    **Agua** = { _CoordenadaX, CoordenadaY_, Dano }

    * Dano: Conjunto de pontos de dano possíveis que a água pode infligir ao navio - inteiro de 0 a 100.

    **Porto** = { _CoordenadaX, CoordenadaY_, Dica }

    * Dica: Frases com dicas para direcionamentos do jogador - string de 200 caracteres

    **Base** = { _CoordenadaX, CoordenadaY_, Cura }

    * Cura: Pontos de vida restaurados do navio ao chegar na base - inteiro entre 1 a 1000
