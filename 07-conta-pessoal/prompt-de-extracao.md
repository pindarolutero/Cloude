# Trazer o que a sua conta pessoal já sabe

Sua conta pessoal do Claude acumulou contexto (memória, preferências, conversas, projetos) sobre o tom, o design e a Conciliadora. Esse conhecimento **não é transferido automaticamente** para a conta Team. O caminho é exportar em texto e incorporar a este kit.

## Passo a passo
1. Na **conta pessoal**, abra uma conversa nova (de preferência dentro do projeto onde você trabalhou a marca) e envie o prompt abaixo.
2. Revise a resposta: corrija o que estiver desatualizado e **remova informações pessoais ou confidenciais** que não devam ir para toda a equipe.
3. Use o resultado para:
   - preencher `02-projeto-organizacional/conhecimento/06-identidade-visual.md`;
   - complementar `04-identidade-verbal.md` (exemplos aprovados, palavras proibidas, bordões);
   - atualizar o Projeto e a Skill na conta Team (veja `01-implantacao/guia-do-admin.md`).
4. Opcional: se a memória estiver habilitada na organização, você pode pedir ao Claude da conta Team para importar esse resumo para a **sua** memória pessoal. Isso vale só para você, não para a organização; o que é de todos vai para o Projeto e a Skill.

## Prompt (copie e cole na conta pessoal)
```
Quero levar para a conta Claude Team da Conciliadora tudo o que você já sabe sobre a nossa marca. Com base na sua memória, nas minhas preferências e nas nossas conversas e projetos, escreva um documento em Markdown com as seções abaixo. Seja específico, use exemplos reais que aprovamos e indique [NÃO SEI] quando não tiver a informação. Não inclua dados pessoais meus nem dados de clientes.

1. Contexto da empresa: o que você sabe sobre a Conciliadora além do documento institucional (produtos, planos, segmentos prioritários, diferenciais, concorrência, números atuais).
2. Tom de voz na prática: como eu gosto que os textos soem, o que costumo corrigir, palavras/expressões que uso e que evito, nível de formalidade por canal.
3. Exemplos aprovados: 3 a 5 trechos (e-mail, post, texto de site, slide) que representam bem a voz da marca.
4. Identidade visual: logotipo, cores (nome + HEX), fontes, estilo de ícones e imagens, padrões de apresentação e de layout que usamos.
5. Formatos e modelos: estruturas que funcionaram (apresentação institucional, proposta comercial, e-mail de prospecção, post de LinkedIn).
6. Regras e cuidados: o que nunca deve ser dito/prometido, temas sensíveis, aprovações necessárias.
7. Instruções para o assistente: um bloco de instruções de sistema que eu possa colar em um Projeto para que outro Claude escreva exatamente como você escreve para mim.
```
