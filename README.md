# Conciliadora × Claude Team: configuração inicial de identidade

Kit para configurar o **Claude Team** da Conciliadora, para que toda a equipe escreva com a mesma voz, conheça a mesma metodologia e represente a marca do mesmo jeito.

Origem: documento institucional "GPT – Institucional" (branding, público, tom de voz, posicionamento, metodologia e cultura), revisado e organizado para uso com o Claude.

## O que tem aqui

| Pasta | Conteúdo | Quem usa |
|---|---|---|
| `01-implantacao/` | **Instruções da organização**, **guia do admin** passo a passo e comunicado para a equipe | Admin (CEO) |
| `02-projeto-organizacional/` | Instruções do Projeto compartilhado + **base de conhecimento** (fonte da verdade) | Admin / Marketing |
| `03-skill-organizacional/` | Skill `conciliadora-marca`, aplicada a toda a organização | Admin |
| `04-estilo/` | Estilo personalizado "Conciliadora" | Cada colaborador |
| `05-preferencias-por-area/` | Preferências pessoais prontas por área | Cada colaborador |
| `06-biblioteca-de-prompts/` | Prompts prontos (atendimento, comercial, marketing, interno) | Toda a equipe |
| `07-conta-pessoal/` | Prompt para extrair o que a sua conta pessoal já sabe (tom, design, contexto) | CEO |

## Base de conhecimento (`02-projeto-organizacional/conhecimento/`)
1. `01-quem-somos.md`: empresa, oferta, público, posicionamento
2. `02-metodologia.md`: as 3 etapas da conciliação e os dados de conciliação
3. `03-marca-e-cultura.md`: propósito, missão, personalidade, valores, perfil de equipe, frases
4. `04-identidade-verbal.md`: tom de voz, prefira/evite, ajustes por canal
5. `05-glossario.md`: termos técnicos em linguagem simples
6. `06-identidade-visual.md`: **a completar** (cores, fontes, logo)

## Ordem recomendada
1. `07-conta-pessoal/prompt-de-extracao.md`: trazer tom e design da conta pessoal
2. Completar `06-identidade-visual.md` e revisar números
3. `./gerar-skill.sh`: gerar o ZIP da Skill
4. Colar `01-implantacao/instrucoes-da-organizacao.md` em Organization instructions
5. Seguir `01-implantacao/guia-do-admin.md`
6. Enviar `01-implantacao/comunicado-equipe.md`

## Manutenção
A pasta `conhecimento/` é a única fonte da verdade. Ao mudar algo: edite, rode `./gerar-skill.sh`, reenvie a Skill e atualize os arquivos do Projeto.
