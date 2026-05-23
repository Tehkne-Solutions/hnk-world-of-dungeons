## Tilemap Referência — Cidade Inicial (Auralis) 60x60

Esta tabela detalha todos os elementos da praça central e arredores da cidade inicial, incluindo spawn do jogador, NPCs guias, lojas, oficinas, guildas e recursos para tutorial.

### Legenda de Tiles

- `S` = Spawn do jogador
- `N` = NPC guia/tutorial
- `L` = Loja / Comércio
- `O` = Oficina / Treino de skills
- `G` = Guilda base / NPC de guilda
- `R` = Recursos coletáveis para tutorial
- `.` = Chão livre / caminho
- `#` = Parede / obstáculo / prédio
- `P` = Portal ou porta interna
- `F` = Fonte ou elemento decorativo
- `B` = Banco ou área de descanso

### Layout do Mapa (simplificado em blocos)

```
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
# . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . #
# . S . . N . . . L . . . . . O . . . G . . . R . . F . . B . . . . . . . . . . . . . . . . . . #
# . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . . #
# # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # # #
```

### Notas do Level Design

- **Spawn `S`**: localizado centralmente na praça principal para orientação imediata do jogador.
- **NPCs `N`**: distribuídos em áreas estratégicas da praça para apresentar movimentação, combate, guardiões, guildas e coleta.
- **Lojas `L`**: interativas, venda de itens básicos e consumíveis iniciais.
- **Oficinas `O`**: tutorial de habilidades, treino de guardiões.
- **Guilda `G`**: primeira guilda base, introduzindo mini-missões e rank D inicial.
- **Recursos `R`**: fragmentos, cristais e ervas para ensinar coleta.
- **Decoração `F` e `B`**: fonte, bancos e elementos visuais para guiar o movimento e tornar a praça mais viva.
- **Portais/Portas `P`**: conectam prédios e sub-áreas dentro da cidade.
- **Paredes `#`**: definem limites, prédios, oficinas, lojas e guildas.

### Fluxo do Jogador na Cidade Inicial

1. Spawn na praça central (`S`).
2. Interação com NPCs guias (`N`) → tutorial de movimento e habilidades.
3. Visita a lojas (`L`) → compra de itens básicos e consumíveis.
4. Treino em oficinas (`O`) → prática de skills e guardiões.
5. Interação com guilda base (`G`) → primeira mini-missão e introdução a ranks.
6. Coleta de recursos tutorial (`R`) → aprendizado da mecânica de coleta.
7. Exploração da praça e arredores → feedback visual e orientação para próximas áreas.
8. Portais e portas (`P`) conectam a praça a prédios, guildas e oficinas para exploração adicional.

### Objetivos de Design

- Criar **um ambiente seguro e tutorial** para o jogador.
- Introduzir progressão livre, guardiões, guildas e coleta sem pressão de combate.
- Garantir modularidade para expansão futura da cidade hub.
- Servir como referência textual completa para storyboard, lev
