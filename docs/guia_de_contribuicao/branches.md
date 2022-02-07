Padronização das branches no projeto. 

## Histórico de Versões


| Data       | Versão | Descrição                                 | Autor             |
| :--------: | :----: | :----------:                              | :---------------: |
| 07/02/2022 |  0.1   | Envio inicial | [Matheus Sousa](https://github.com/gatotabaco)|

## Padronização das Branches

### Prefixos:
- ```feature```
- ```hotfix```
- ```documentation```
- ```improvement```

### Formato:
```
<prefixo>#número da issue/assunto
```

Não esquecer de dividir as palavras(sempre minúsculas) do assunto com "-".
Exemplo: 
```
feature#87/novo-menu
```

### Branches:

- **Branch main:** Branch que contém o código em nível de produção, será o código mais consolidado existente na aplicação. Nenhum integrante dos times é autorizado a fazer commits diretamente na *main.*
- **Branches feature:** Como o nome já diz, são branches na qual são desenvolvidos novos recursos ao projeto. São criadas começando com o prefixo **feature/**.
Exemplo: ```feature#22/novo-layout```
- **Branchs hotfix:** Branches no qual são realizadas correções de bugs São criadas começando com o prefixo **hotfix/**.
Exemplo: ```hotfix#02/correcao-botao```
- **Branches documentation:** Branches na qual são desenvolvidos os documentos do projeto. São ciradas começando com o prefixo **documentation/**
Exemplo: ```documentation#49/template-documento```
- **Branches improvement:** Branche para melhoria de algum componente e afins, seja de performance, de escrita de layout, etc. Exemplo: ```improvement#101/otimizacao-layout```

### Princípios:

- Todas as branches serão em PT-BR.

## Referências

DULCETTI, Bruno. Padrões e nomenclaturas no Git. *BrunoDulcetti*. Disponível em: <https://www.brunodulcetti.com/padroes-e-nomenclaturas-no-git/>. Acesso em: 07/02/2022.

Políticas de Branches. Disponível em: <https://fga-eps-mds.github.io/2018.2-ComexStat/docs/politicaBranches>. Acesso em: 07/02/2022.

HADLER, Mikael. Utilizando o fluxo Git Flow. *Medium*. Disponível em: <https://medium.com/trainingcenter/utilizando-o-fluxo-git-flow-e63d5e0d5e04>. Acesso em: 07/02/2022

Política de Branches do projeto AlligaBot. Disponível em: https://github.com/fga-eps-mds/2021.1-AlligaBot/blob/main/docs/_posts/2021-08-19-branches.md
