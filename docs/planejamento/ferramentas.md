# Ferramentas

Stack adotada para o compilador **Python → C** e para a documentação do projeto.

## Desenvolvimento do compilador

| Ferramenta | Uso no projeto |
| --- | --- |
| **Flex** | Análise léxica da subset Python (tokens, palavras-chave, literais) |
| **Bison** | Análise sintática (gramática livre de contexto) e ações para AST |
| **GCC / Clang** | Compilação do código C gerado por Flex/Bison |
| **Make** (recomendado) | Automatizar `bison` → `flex` → `gcc` |
| **GCC** | Compilar o código C gerado e validar a saída |

### Pipeline alvo

```text
arquivo.py  →  [Flex] tokens  →  [Bison] AST  →  semântica  →  gerador  →  arquivo.c  →  gcc
```

## Documentação e colaboração

| Ferramenta | Uso |
| --- | --- |
| **Git / GitHub** | Versionamento, PRs e issues |
| **MkDocs Material** | Site de documentação (abas do projeto) |
| **GitHub Pages** | Publicação da documentação |
| **Forms (Office)** | Entrega dos formulários de P1 e P2 pelo líder |
| **Markdown** | Atas, sprints, decisões e problemas/soluções |

## Ambiente recomendado

- **Linux** ou **WSL2** (Ubuntu) — caminho mais simples para Flex/Bison.
- Alternativa no Windows: **MSYS2** (MinGW64) com `flex`, `bison` e `gcc`.

Instalação típica (Debian/Ubuntu/WSL):

```bash
sudo apt-get update
sudo apt-get install flex bison build-essential
```

Documentação local:

```bash
python -m pip install -r docs/requirements.txt
python -m mkdocs serve
```



## Bibliografia 
**Básica**

- Tremblay & Sorenson — *Theory and Practice of Compiler Writing*
- Wirth — *Compiler Construction* ([PDF](http://www.ethoberon.ethz.ch/WirthPubl/CBEAll.pdf))
- Singh — *Design and Implementation of Compiler*

**Complementar**

- Subramanian — *Formal Models, Languages and Applications*
- Herrera / Casa Novas — *Compilación II*
- Martin-Vide — *Scientific Applications of Language Methods*
- Kowaltowski — *Implementação de Linguagens de Programação*
