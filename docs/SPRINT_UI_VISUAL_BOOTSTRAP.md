# Sprint: UI e Visual Bootstrap

## Objetivo

Criar uma camada visual mínima para tornar o protótipo jogável e reduzir a tela branca.

## O que foi feito

- criadas pastas de assets placeholders para tiles, entidades, NPCs, mobs, itens, guardiões e UI;
- criados arquivos `.dmi` de placeholder para tiles e entidades básicas;
- atualizadas referências de icon/icon_state nos objetos do jogo;
- adicionado um cliente básico para atualizações de HUD e painéis;
- adicionados verbs de interface para testar status, missões, inventário, guardião, skills e sistema.

## Como compilar

1. Abrir `hnk_world_of_dungeons.dme` no Dream Maker.
2. Build / Compile.
3. Abrir `hnk_world_of_dungeons.dmb` no Dream Seeker.

## Como testar

1. Iniciar o jogo.
2. Confirmar que o chão e paredes aparecem em Auralis.
3. Confirmar que o player, NPC e portal aparecem.
4. Conversar com o Oficial de Contratos.
5. Entrar no portal da fenda e verificar mobs e fragmento na dungeon.
6. Usar o verb `AbrirStatus` para ver HUD.
7. Verificar mensagens de interface no chat inferior.

## Checklist de QA

- [ ] O mapa aparece visualmente
- [ ] O player aparece
- [ ] O chão da praça aparece
- [ ] As paredes aparecem
- [ ] O NPC aparece
- [ ] O portal aparece
- [ ] O mob aparece na dungeon
- [ ] O item aparece
- [ ] O guardião aparece
- [ ] O painel direito abre (mensagem de interface)
- [ ] Status mostra HP/Energia/Fluxo/Sincronia
- [ ] Missão mostra estado atual
- [ ] Inventário mostra item coletado
- [ ] Guardião mostra Salamandra Anímica
- [ ] O log inferior continua funcionando
- [ ] O projeto compila sem erros
