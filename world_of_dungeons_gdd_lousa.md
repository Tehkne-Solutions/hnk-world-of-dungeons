## GDD Completo — World of Dungeons / HNK (Versão Lousa)

### Visão Geral do Projeto

**Título:** HNK: World of Dungeons
**Tipo:** MMO Action RPG Top-Down Dungeon-First
**Plataforma inicial:** BYOND
**Objetivo:** Criar um universo autoral com progressão livre, guardiões espirituais, constelações, ordens anímicas, missões ranqueadas, dungeons/labirintos, cidade hub e Memória Anímica como núcleo narrativo.

### 1. Pitch do Jogo

- Jogador explora dungeons vivas ao lado de Guardiões Astrais.
- Progressão de skills por uso significativo, evolução de vínculo com guardiões.
- Combate elemental inspirado em artes marciais elementais (Fogo, Água, Terra, Ar, Luz, Sombra, Natureza, Metal).
- Sistema de guildas, ranks e missões D/C/B/A/S.
- Cidade hub ativa com NPCs, economia, crafting e eventos.
- Camadas de narrativa: Memória Anímica, Constelações e Ordens Anímicas.

### 2. Fantasia Principal do Jogador

- **Domínio:** evolução por treino, maestria e mutações.
- **Vínculo:** relação profunda com Guardiões.
- **Descoberta:** exploração de labirintos, puzzles e segredos.
- **Preparação:** planejamento de loadout, consumíveis, guardiões.
- **Transformação:** retorno com progresso, recursos e reputação.

### 3. Pilares Oficiais

- **Dungeon-first:** dungeons são o núcleo de combate, progressão e gathering.
- **Progressão livre, loadout limitado:** poucas skills equipadas, mas profundas.
- **Guardiões Astrais:** parceiros de combate, exploração, puzzle, gathering e narrativa.
- **Constelações Anímicas:** observam, testam e recompensam jogadores.
- **Ordens Anímicas:** representam a identidade e vontade do jogador.
- **Memória Anímica:** histórico vivo que alimenta IA, crônicas, recompensas e reputação.

### 4. Estrutura de Combate

- **Recursos:** HP, Energia Física, Fluxo Espiritual, Sincronia, Postura, Carga Ambiental, Ameaça, Resistência a Controle.
- **Legibilidade:** combate responsivo, estratégico, baseado em posicionamento e domínio de skill.
- **Elemento:** cada skill tem identidade, função, peso, custo, tempo, impacto e interações ambientais.
- **Sincronia com Guardião:** ações conjuntas afetam habilidades, mutações e evolução do vínculo.

### 5. Sistema de Skills

- **Estrutura universal:** Nome, ID interno, Elemento, Escola, Categoria, Forma, Função, Peso, Custo, Tempo, Hitbox, Impacto, Interações, Progressão, Maestria, Mutação, Leitura Visual, Counterplay.
- **Progressão:** XP, Nível, Maestria, Marcos de Domínio, Condições de Evolução e Mutação, Relação com Guardião e Dungeon.
- **Aprendizado:** Mestre/mentor, Pergaminhos, Ruínas, Treino Prático.

### 6. Guardiões Astrais

- **Linha Evolutiva:** Centelha → Manifesto → Ascendente (MVP) → Celestial → Ancestral → Astral Supremo.
- **Funções:** combate, puzzle, exploração, gathering, narrativa.
- **Resonância Passiva:** habilidades que interagem com o jogador e dungeon.
- **Relação com Constelações:** evolução por provas e vínculo.

### 7. Constelações Anímicas

- **Estágios:** Observado → Aspirante → Discípulo → Herdeiro → Encarnado.
- **Funções:** patrocínio, observação de ações, provas, técnicas, bênçãos.
- **Integração com guardiões e jogador:** recompensa progressão, desbloqueia skills e eventos narrativos.

### 8. Ordens Anímicas

- **Definição:** expressão da vontade pessoal do jogador, regra rara do mundo.
- **Ativação:** condições mecânicas ou narrativas.
- **Custos:** HP, Fluxo, Sincronia.
- **Interação:** afeta skills, guardiões e mundo, não substitui outros sistemas.

### 9. Memória Anímica

- **Camadas:** Log → Memória → História Registrada.
- **Peso narrativo:** Rotineiro → Local → Marcante → Histórico → Lendário.
- **Uso:** IA, Ordens, Constelações, Crônicas, Recompensas, Reputação.
- **Registro por entidade:** jogador, guardião, NPC, facção, cidade, dungeon, guilda, constelação.

### 10. Dungeons e Labirintos

- **Funções:** leveling, gathering, progressão de skills, evolução do guardião, missões ranqueadas, puzzles, bosses.
- **Estrutura:** Entrada → Andares → Salas → Corredores → Objetivos → Eventos → Recursos → Segredos → Elites → Boss → Saída → Recompensa.
- **Tipos:** fixa, modular, procedural, instanciada.

### 11. Cidade Hub e Facções

- **Cidade:** Auralis, centro social, econômico, político e espiritual.
- **Zonas:** Praça dos Contratos, Mercado, Oficinas, Santuário dos Guardiões, Mentores, Rumores, Eventos.
- **Função:** preparação, loadout, interações, reputação, crafting, acesso a guildas.

### 12. Sistema de Missões e Ranks

- **Ranks:** D/C/B/A/S.
- **Funções:** guiar jogador, organizar dificuldade, conectar sistemas, progressão social, sustentar guildas, liberar conteúdo, gerar narrativa, criar economia.
- **Missões de guilda:** cooperação, ranking, divisão de funções, eventos semanais.

### 13. MVP e Protótipo

- **Loop mínimo:** Auralis → Missão → Preparação → Dungeon → Combate/Gathering/Puzzle → Boss → Extração → Recompensa → Progressão → Nova Missão.
- **Protótipo v0.1:** Limpeza da Entrada Partida (Rank D, NPC Oficial de Contratos, primeira sala, combate básico, Faísca Ardente, Salamandra Anímica, fragmento coletável, Evento Narrativo simples, save).
- **Expansão v0.2:** Galeria dos Selos (Rank C, NPC importante, puzzle, corrupção leve, elite, primeira consequência narrativa, observação constelar).

### 14. Arquitetura de Dados BYOND

- **Pastas:** \_core, assets, config, data, maps, systems, content, ui, saves, tools, tests, docs.
- **Core:** world.dm, init.dm, constants.dm, types.dm, layers.dm, timing.dm, collision.dm, debug_flags.dm.
- **Assets:** ícones, sprites, animações, sons.
- **Systems:** combate, skills, IA, progressão, guardiões, ordens, memória, eventos.
- **Content:** NPCs, mobs, itens, dungeons, quests.
- **Saves:** jogador, mundo, guildas, entidades especiais.

### 15. Padrões de Nomenclatura

- **IDs:** categoria_contexto_nome (skill_fogo_faisca_ardente, guardiao_salamandra_animica, constelacao_salamandra_ignea).
- **Prefixos:** skill*, guardiao*, constelacao*, ordem*, npc*, mob*, boss*, item*, equip*, recurso*, missao*, evento*, tag*, cronica*, faccao*, dungeon*, sala*, mapa*, status*, buff*, debuff\_.
- **Português para nome fantasia, minúsculo e underscore para ID.**

### 16. Backlog Técnico

- **Prioridade protótipo:** Movimento, Combate, Skill, Dungeon.
- **Fase Técnica 00:** preparação de projeto e pastas.
- **Fase Técnica 01:** player e movimento.
- **Fase Técnica 02:** combate e skill básica.
- **Fase Técnica 03:** dungeons e mobs iniciais.
- **Fase Técnica 04:** guardiões ativos.
- **Fase Técnica 05:** NPC e missão inicial.
- **Fase Técnica 06:** Memória Anímica mínima.
- **Checklist QA:** valida fluxo completo do protótipo, severidade de bugs, integridade do save.

### 17. Próximos Passos

- Implementação completa das camadas acumuláveis: Guardiões, Constelações, Ordens, Memória.
- Conectar histórico de ações com IA do mundo.
- Expansão para Alpha/Beta com mais dungeons, missões, NPCs, guardiões e Ordens.
- Refinamento de combate, progressão de skills e balanceamento.
- Continuidade da história, narrativa e feedback de jogador.

**Regra central:**

> World of Dungeons é sobre entrar em labirintos vivos, evoluir por uso real, fortalecer vínculo com guardião, obedecer constelações e ordens, e retornar à cidade transformado pela expedição.
