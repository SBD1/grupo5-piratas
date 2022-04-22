# Dependências Funcionais

## Navio
IdNav &rarr; Vida \
IdNav &rarr; Dano \
IdNav &rarr; VelocidadeDeAtaque \
IdNav &rarr; Capacidade \
IdNav &rarr; Fama \
IdNav &rarr; Ouro 

## Inimigo
IdIni &rarr; Nome

## InstanciaInimigo
IdInstanciaIni &rarr; PosX \
IdInstanciaIni &rarr; PosY 

## Ataque Especial
IdAtaqueEspecial &rarr; NomeAtaque

## Canhão
IdItem &rarr; Nome

## Casco
IdItem &rarr; Nome

## Vela
IdItem &rarr; Nome

## Luneta
IdItem &rarr; Nome

## Itens Especiais
IdItem &rarr; Nome

## Batalha
IdBat &rarr; IdNav \
IdBat &rarr; IdInstanciaIni \
IdBat &rarr; Ouro \
IdBat &rarr; Fama 

## TipoArea
PosX & PosY &rarr; Tipo

## Agua
PosX & PosY &rarr; Dano

## Porto
PosX & PosY &rarr; Dica \
PosX & PosY &rarr; Cura

## EventosAleatorios
IdEvent & PosX & PosY &rarr; Dano \
IdEvent & PosX & PosY &rarr; Ouro \
IdEvent & PosX & PosY &rarr; Cura \
IdEvent & PosX & PosY &rarr; Fama

## Contrato
IdContrato & IdNav & PosX & PosY &rarr; Fama \
IdContrato & IdNav & PosX & PosY &rarr; Ouro