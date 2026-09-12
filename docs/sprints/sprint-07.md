# Sprint 7 — Integração completa

**Período:** 14/10/2026 – 20/10/2026

## Objetivo

Integrar todas as etapas do compilador em um pipeline funcional.

## Pipeline

```text
programa.py
  ↓
Lexer
  ↓
Parser
  ↓
AST
  ↓
Semântica
  ↓
Codegen
  ↓
programa.c
```

## Atividades planejadas

- Criar programa principal;
- Receber arquivo `.py`;
- Executar lexer;
- Executar parser;
- Construir AST;
- Executar análise semântica;
- Gerar C;
- Criar arquivo `.c`;
- Criar CLI;
- Integrar Makefile;
- Compilar C com GCC;
- Corrigir problemas de integração;
- Testar o pipeline completo.

## Resultado esperado

Executar o compilador com um arquivo Python e gerar código C correspondente.
