# Modelo Relacional

>> Legenda:  
>>        <ins>Palavra</ins> - Chave primária  
>>        *Palavra* - Chave estrangeira
    
    
**Navio** = { <ins>nome_nav</ins>, Vida, Dano, VelocidadeDeAtaque, Capacidade, Fama }

&emsp;&emsp;Nome: Conjunto de nomes possíveis para os navios que o jogador pode jogar durante o jogo - string de 35 caracteres

&emsp;&emsp;Vida: Conjunto de pontos de vida possíveis para o jogador - número inteiro de 0 a 1000

&emsp;&emsp;Dano: Conjunto de pontos de dano possíveis que o Navio pode infligir em seus inimigos - inteiro de 0 a 100

&emsp;&emsp;VelocidadeDeAtaque: Conjunto de pontos de velocidade de ataque possíveis que o jogador pode ter para poder ter a chance de atacar primeiro em um combate - inteiro de 1 a 100

&emsp;&emsp;Capacidade: Conjunto de pontos de capacidade possíveis que o Navio pode ter para carregar tripulantes - inteiro de 2 a 9

&emsp;&emsp;Fama: Conjunto de pontos possíveis que o jogador possui e podem ser utilizados para obter vantagens no jogo - inteiro de 0 a 5000

**Tripulante** = { <ins>Id_trip</ins>, PorcentagemDeEsquiva, PorcentagemDeAcerto, Nome, Tipo, Cura }

&emsp;&emsp;Id_trip: Conjunto de números de identificação dos tripulantes do navio - 1 a 20

&emsp;&emsp;PorcentagemDeEsquiva: Conjunto de números em porcentagem que mostra a chance que o navio tem de receber danos - inteiro entre 0 e 100

&emsp;&emsp;PorcentagemDeAcerto: Conjunto de números em porcentagem que mostra a chance que o navio tem de causar danos - inteiro entre 0 e 100

&emsp;&emsp;Nome: Conjunto de nome possíveis para serem dados a um tripulante - string de 35 caracteres

&emsp;&emsp;Tipo: Conjunto de tipos de um tripulante - string de 20 caracteres

&emsp;&emsp;Cura: Conjunto de pontos que equivalem a cura para a vida do navio - inteiro entre 0 e 1000

**Inimigo** = { <ins>Id_ini</ins>, Nome, Dano, Vida, VelocidadeDeAtaque, AtaqueEspecial }

&emsp;&emsp;Id_ini: Conjunto de números de identificação dos inimigos do jogo - número inteiro de 1 a 20

&emsp;&emsp;Nome: Conjunto de nomes possíveis para os inimigos que o jogador pode encontrar durante o jogo - string de 35 caracteres

&emsp;&emsp;Vida: Conjunto de pontos de vida possíveis para os inimigos - número inteiro de 0 a 1000

&emsp;&emsp;VelocidadeDeAtaque: Conjunto de pontos de velocidade de ataque possíveis que o inimigo pode ter para poder ter a chance de atacar primeiro em um combate - inteiro de 1 a 100

&emsp;&emsp;AtaqueEspecial: tipos de ataque diferentes que vão interagir de maneiras diferentes com o navio.

**Item** = { <ins>Id_item</ins>, Nome, Quantidade, Tipo }

&emsp;&emsp;Id_item: Conjunto de números de identificação possíveis que identificam cada item do jogo - inteiro entre 1 e 500

&emsp;&emsp;Nome: Conjunto de nomes possíveis para os itens que um navio pode obter no jogo - string de 50 caracteres

&emsp;&emsp;Quantidade - Quantidade de itens possíveis no mapa deste tipo - inteiro de 0 a 100

&emsp;&emsp;Tipo - Conjunto de tipo de itens - string de 50 caracteres

&emsp;&emsp;**Canhões** = { <ins>Id_item</ins>, Nome, Quantidade, Adição de velocidade de ataque, Adição de ataque}

&emsp;&emsp;&emsp;&emsp;Adição de velocidade de ataque: Conjunto de números possíveis que quantificam a velocidade de ataque do navio em uma batalha, que define quem começa atacando - inteiro de 0 a 100

&emsp;&emsp;&emsp;&emsp;Adição de ataque: Conjunto de números possíveis que representam a quantidade de dano a mais que o jogador vai infligir ao inimigo quando dispara com o canhão - inteiro de 0 a 100

&emsp;&emsp;**Casco** = { <ins>Id_item</ins>, Nome, Quantidade, Adição de vida}

&emsp;&emsp;&emsp;&emsp;Adição de vida: Conjunto de números possíveis que quantificam o aumento de vida dado por um casco - inteiro de 0 a 100


&emsp;&emsp;**Vela** = { <ins>Id_item</ins>, Nome, Quantidade, Melhora Chance de esquiva}

&emsp;&emsp;&emsp;&emsp;Melhora Chance de esquiva: Conjunto de números possíveis que contribuirão para a melhora de chance de esquiva do navio durante uma batalha - float de 0 a 100

&emsp;&emsp;**Luneta** = { <ins>Id_item</ins>, Nome, Quantidade, Melhora Chance de acerto}

&emsp;&emsp;&emsp;&emsp;Melhora Chance de esquiva: Conjunto de números possíveis que contribuirão para a melhora de chance de esquiva do navio durante uma batalha - float de 0 a 100

&emsp;&emsp;**Itens especiais** = { <ins>Id_item</ins>, Nome, Quantidade, Redução de velocidade de ataque inimiga, Redução de ataque inimiga, Redução de esquiva inimiga, Redução de vida inimiga, Redução de chance de acerto inimiga, Cooldown}

&emsp;&emsp;&emsp;&emsp;Redução de velocidade de ataque inimiga: Conjunto de números possíveis que representam a redução de velocidade de ataque que o uso do item pode causar ao inimigo - inteiro entre 0 e 100

&emsp;&emsp;&emsp;&emsp;Redução de ataque inimiga: Conjunto de números possíveis que representam a redução de ataque inimigo que o uso do item pode causar ao inimigo - inteiro entre 0 e 100

&emsp;&emsp;&emsp;&emsp;Redução de esquiva inimiga: Conjunto de números possíveis que representam a redução de esquiva que o uso do item pode causar no inimigo - inteiro entre 0 e 100

&emsp;&emsp;&emsp;&emsp;Redução de vida inimiga: Conjunto de números possíveis que representam a redução de vida que o uso do item pode causar ao inimigo - inteiro entre 0 e 100

&emsp;&emsp;&emsp;&emsp;Redução de chance de acerto inimiga: Conjunto de números possíveis que representam a redução chance de acerto de ataques inimigos - inteiro entre 0 e 100

&emsp;&emsp;&emsp;&emsp;Cooldown: tempo que falta para o jogador poder utilizar o item novamente -  inteiro de 0 a 100

**Batalha** = { <ins>Id_bat</ins>, nome_nav, *Id_ini*}

&emsp;&emsp;Id_bat: Conjunto de números de id possíveis que identificam cada batalha do jogo. - inteiro entre 1 e 500

&emsp;&emsp;Nome_nav: Conjunto de nomes possíveis para os navios que o jogador pode jogar durante o jogo - string de 35 caracteres

&emsp;&emsp;Id_ini: Conjunto de números de identificação dos inimigos do jogo - número inteiro de 1 a 20

**Area** = { *CoordenadaX, CoordenadaY*, Tipo }

&emsp;&emsp;CoodenadaX: Conjunto de números para identificar uma área na vertical - inteiro entre 1 e 10

&emsp;&emsp;CoordenadaY: Conjunto de números para identificar uma área na vertical - inteiro entre 1 e 10

&emsp;&emsp;Tipo: Conjunto de tipos de áreas - string de 40 caracteres

&emsp;&emsp;**Agua** = { *CoordenadaX, CoordenadaY*, Dano }

&emsp;&emsp;&emsp;&emsp;Dano: Conjunto de pontos de dano possíveis que a água pode infligir ao navio - inteiro de 0 a 100.

&emsp;&emsp;**Porto** = { *CoordenadaX, CoordenadaY*, Dica }

&emsp;&emsp;&emsp;&emsp;Dica: Frases com dicas para direcionamentos do jogador - string de 200 caracteres

&emsp;&emsp;**Base** = { *CoordenadaX, CoordenadaY*, Cura }

&emsp;&emsp;&emsp;&emsp;Cura: Pontos de vida restaurados do navio ao chegar na base - inteiro entre 1 a 1000
