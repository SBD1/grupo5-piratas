# Modelo Entidade-Relacionamento 


**Jolly Roger** é um jogo (no estilo RPG) que é ambientado num mundo de piratas. A história se inicia com um navio tripulado o qual o jogador deve comandar. A partir daí, ele recebe um mapa inicial com as coordenadas de alguns lugares importantes, como o Porto e a localização do primeiro inimigo. 

Dessa forma, jogador irá navegar por áreas do jogo que podem ser do tipo Terra (Porto ou Base) ou do tipo Água (Normal ou Perigosa).  

- Porto → pode contratar tripulantes, obter dicas e itens e curar o navio;
- Água Perigosa → causa dano;  
- Água Normal → não causa dano.   

O navio terá oito inimigos de níveis distintos (Kraken, Megalodon, Sereia Lorelei, Holandês Voador, John Rackham, Black Bart, Edward Teach e Hidra) e, conforme são derrotados, o jogador progride de nível na história.  

| Nível do Navio do Jogador | Tripulação | Capacidade (Capitão, Atirador, Carpinteiro) |
| - | - | - |
| Coffin Boat | Inicia com um capitão e atirador | (1, 1, 0) |
| Santa Maria | Pode contratar um carpinteiro no Porto | (1, 1, 1) |
| The Pride | Pode contratar mais um atirador e um carpinteiro no Porto | (1, 2, 2) |
| Revenge of Queen Anne | Pode contratar mais dois atiradores e dois carpinteiros no Porto | (1, 4, 4) |

Durante essa jornada, ele encontrará alguns itens que o ajudarão a ganhar as batalhas e além disso a composição da tripulação poderá agregar valor ao navio utilizando fama.

>> Exemplos de item:   
>>    - Canhão azul marinho → melhora o ataque em 2 pontos e é do tipo permanente;   
>>    - Laranja cítrica → cura 1 de vida e é do tipo uso único.

Ao derrotar o inimigo final, o jogador enfim encontra o tesouro e ganha a partida, mas caso seja derrotado por algum dos adversários, ele perde o jogo. 


<iframe style="border: 1px solid rgba(0, 0, 0, 0.1);" width="800" height="450" src="https://www.figma.com/embed?embed_host=share&url=https%3A%2F%2Fwww.figma.com%2Ffile%2FqYWUW8ZPa40C7mXQWl7w2J%2FDER---Jolly-Roger%3Fnode-id%3D0%253A1" allowfullscreen></iframe>

