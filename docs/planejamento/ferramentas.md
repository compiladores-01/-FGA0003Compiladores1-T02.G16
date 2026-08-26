# Ferramentas

Stack adotada para o compilador **Python → JavaScript** e para a documentação do projeto.

## Desenvolvimento do compilador

| Ferramenta | Uso no projeto |
| --- | --- |
| **Flex** | Análise léxica da subset Python (tokens, palavras-chave, literais) |
| **Bison** | Análise sintática (gramática livre de contexto) e ações para AST |
| **GCC / Clang** | Compilação do código C gerado por Flex/Bison |
| **Make** (recomendado) | Automatizar `bison` → `flex` → `gcc` |
| **Node.js** | Executar o JavaScript gerado e validar a saída |

### Pipeline alvo

```text
arquivo.py  →  [Flex] tokens  →  [Bison] AST  →  semântica  →  gerador  →  arquivo.js  →  node
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

## Materiais de referência da disciplina

| Recurso | Link |
| --- | --- |
| Repositório do professor | [github.com/sergioaafreitas/COMP1](https://github.com/sergioaafreitas/COMP1) |
| Slides | [slides.cedis.tec.br/c/sergio-compiladores](https://slides.cedis.tec.br/c/sergio-compiladores) |
| Formulário P1 | [forms.office.com/r/MyKh4HiAAu](https://forms.office.com/r/MyKh4HiAAu) |
| Formulário P2 | [forms.office.com/r/gNG6Eb7e71](https://forms.office.com/r/gNG6Eb7e71) |

## Bibliografia (plano de ensino)

**Básica**

- Tremblay & Sorenson — *Theory and Practice of Compiler Writing*
- Wirth — *Compiler Construction* ([PDF](http://www.ethoberon.ethz.ch/WirthPubl/CBEAll.pdf))
- Singh — *Design and Implementation of Compiler*

**Complementar**

- Subramanian — *Formal Models, Languages and Applications*
- Herrera / Casa Novas — *Compilación II*
- Martin-Vide — *Scientific Applications of Language Methods*
- Kowaltowski — *Implementação de Linguagens de Programação*
