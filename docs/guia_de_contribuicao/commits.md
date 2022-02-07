Padronização dos commits no projeto. 

## Histórico de Versões


| Data       | Versão | Descrição                      | Autor             |
| :--------: | :----: | :----------:                   | :---------------: |
| 07/02/2022 |  0.1   | Envio Inicial | [Matheus Sousa](https://github.com/gatotabaco)|

## Semântica do Commit

Os commits devem seguir o seguinte padrão:

### Princípios:

#### Commits atômicos
Sempre dividir em pequenos e significativos commits, fazendo com que cada commit tenha apenas uma funcionalidade.

#### Commits em português
Os commits serão todos feitos em português para melhor compreensão de outros colegas de turma e usuários do GitHub.

### Formato:
```
<tipo>(#número da issue): assunto
```

#### Tipos:
- :bulb: quando adicionar nova funcionalidade
- :repeat: quando alguma alteração for feita
- :cool: quando melhorias de formato/estrutura do código
- :racehorse: quando melhorar o desempenho
- 🚱  quando resolver memory leaks
- :pencil: quando escrever documentação
- :bug: quando consertar um problema
- :fire: quando remover código ou arquivos
- :green_heart: quando consertar problemas de Integração Contínua
- :white_check_mark: quando adicionar testes
- :lock: quando lidar com segurança
- :arrow_up: quando realizar o upgrade de dependências
- :arrow_down: quando realizar downgrade de dependências

#### Assunto:
- Deve possuir no máximo 50 caracteres
- Devem estar em letras minúsculas

*Exemplo de commit:*
```
git commit -m ":bulb:(#02): botão na página inicial"
```

## Referências

DARTORA, João. Tudo o que você precisa saber sobre commits semânticos. *Ilegra*. Disponível em: <https://ilegra.com/blog/tudo-o-que-voce-precisa-saber-sobre-commits-semanticos/>. Acesso em: 07/02/2022.

Políticas de Commit. Disponível em: <https://github.com/fga-eps-mds/2021.1-AlligaBot/blob/main/docs/_posts/2021-08-18-commits.md>. Acesso em: 07/02/2022.
