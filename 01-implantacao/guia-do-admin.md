# Guia de implantação no Claude Team (para o administrador)

Tempo estimado: **1 a 2 horas** para a configuração inicial.

> Os nomes dos menus podem variar um pouco conforme as atualizações do Claude. Se algo não estiver onde indicado, procure em **Configurações da organização** (Admin settings).

## Arquitetura da identidade no Claude Team

| Camada | Onde fica | Quem configura | Para quê |
|---|---|---|---|
| **0. Instruções da organização** | Configurações da organização → Organization instructions | Admin (uma vez) | Regras que valem para **todas** as conversas e têm prioridade sobre as preferências pessoais: identidade resumida, tom, precisão, LGPD e formatação. |
| **1. Skill organizacional** `conciliadora-marca` | Configurações da organização → Skills | Admin (uma vez) | Leva a voz e o conhecimento da Conciliadora para **qualquer conversa** de qualquer colaborador, automaticamente quando o assunto é comunicação/marca. |
| **2. Projeto compartilhado** "Conciliadora \| Marca e Comunicação" | Projetos | Admin / Marketing | Espaço oficial com instruções + base de conhecimento completa. Ideal para criar materiais. |
| **3. Projetos por área** (opcional) | Projetos | Líderes de área | Atendimento, Comercial, Marketing etc., com o mesmo conhecimento + materiais específicos (FAQs, scripts, propostas). |
| **4. Estilo "Conciliadora"** | Cada usuário | Cada colaborador | Faz qualquer resposta soar como a marca. |
| **5. Preferências pessoais** | Cada usuário | Cada colaborador | Diz ao Claude quem é a pessoa e qual o seu papel. |

## Passo 0: Antes de começar
- [ ] Rode o prompt de `07-conta-pessoal/prompt-de-extracao.md` na sua conta pessoal e incorpore o resultado ao kit (principalmente a **identidade visual**).
- [ ] Revise os arquivos de `02-projeto-organizacional/conhecimento/` e confirme os números (colaboradores, meios de pagamento, anos de mercado).
- [ ] Gere o pacote da Skill: `./gerar-skill.sh` (cria `dist/conciliadora-marca.zip`).

## Passo 1: Configurações da organização
Em **Configurações da organização**:
- [ ] **Nome e ícone** da organização: Conciliadora.
- [ ] **Membros:** convide a equipe (por e-mail ou domínio `@conciliadora.com.br`). Defina quem é Admin e quem é Membro.
- [ ] **Recursos (Capabilities):** habilite os que a empresa vai usar: Skills, criação de arquivos (documentos, planilhas, apresentações), pesquisa na web, memória e Artifacts.
- [ ] **Conectores:** habilite apenas os aprovados (ex.: Google Drive, Gmail/Calendar, CRM). Revise o que cada conector pode acessar antes de liberar para todos.

## Passo 1.5: Instruções da organização
1. Configurações da organização → **Organization instructions**.
2. Cole o bloco de `01-implantacao/instrucoes-da-organizacao.md` (o trecho entre as linhas `---`).
3. Salve. Pode levar até 1 hora para valer.
4. Teste: *"Quantos clientes a Conciliadora tem em Curitiba?"* O Claude deve dizer que não tem esse dado, em vez de inventar.

## Passo 2: Skill organizacional
1. Configurações da organização → **Skills** → **Enviar skill** (Upload).
2. Envie `dist/conciliadora-marca.zip`.
3. Ative para **toda a organização**.
4. Teste em uma conversa nova (fora de projetos): *"Escreve uma mensagem de boas-vindas para um novo cliente da Conciliadora."* O texto deve vir no tom da marca, sem números inventados.

> Sempre que o conhecimento mudar, edite os arquivos em `conhecimento/`, rode `./gerar-skill.sh` de novo e reenvie o ZIP.

## Passo 3: Projeto compartilhado
1. **Projetos → Novo projeto**: nome **"Conciliadora | Marca e Comunicação"**. Descrição: *"Base oficial de marca, tom de voz e conhecimento institucional. Use para criar qualquer comunicação em nome da Conciliadora."*
2. **Instruções do projeto:** cole o bloco de `02-projeto-organizacional/instrucoes-do-projeto.md`.
3. **Conhecimento do projeto:** envie os 6 arquivos de `02-projeto-organizacional/conhecimento/` (e, se quiser, o documento institucional original e o manual de marca em PDF).
4. **Compartilhar:** compartilhe com **toda a organização** com permissão de **uso** (pode usar/conversar). Dê permissão de **edição** só para quem cuida da marca (você e Marketing).
5. Teste com 3 prompts da `06-biblioteca-de-prompts/`.

## Passo 4: Projetos por área (opcional, recomendado)
Crie um projeto por área com as mesmas instruções e conhecimento, mais:
- **Atendimento:** FAQ de suporte, respostas aprovadas, procedimentos, prazos de SLA reais.
- **Comercial:** apresentação comercial, proposta modelo, objeções e respostas aprovadas, cases autorizados.
- **Marketing:** calendário editorial, personas, posts e textos de site aprovados.
- **Sucesso do Cliente:** roteiro de onboarding e treinamento, checklist de integração.

Acrescente no topo das instruções do projeto uma linha de contexto, ex.: *"Este projeto é do time de Atendimento. Priorize respostas curtas para WhatsApp e e-mail."*

## Passo 5: Ativação da equipe
Envie à equipe o comunicado de `01-implantacao/comunicado-equipe.md` e peça que cada pessoa:
- [ ] cole a sua **preferência por área** (`05-preferencias-por-area/`);
- [ ] crie o **estilo "Conciliadora"** (`04-estilo/`);
- [ ] entre no Projeto **"Conciliadora | Marca e Comunicação"**.

## Passo 6: Governança
- **Dono da marca no Claude:** Píndaro (CEO) + Marketing. Só eles editam Skill e Projeto oficial.
- **Revisão mensal:** atualize números, novos produtos, exemplos aprovados.
- **Feedback:** canal interno (ex.: #claude-conciliadora) para a equipe compartilhar bons prompts e apontar respostas fora do tom.
- **Dados sensíveis:** dados de clientes (CNPJ, contas, valores) só em conversas internas, nunca em materiais externos. Siga a política de privacidade e LGPD da empresa.
- Versões deste kit ficam neste repositório (histórico no Git).
