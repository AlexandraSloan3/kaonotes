# KaoNotes

`KaoNotes` is a lightweight, research-oriented LaTeX framework developed alongside KAN research. It adapts the wide-margin design of [kaobook](https://github.com/fmarotta/kaobook) for compact academic notes, multilingual writing, mathematics, and computer-science material.

> **Development status:** early working version. The current reference document converts the author's handwritten linear-algebra notes into structured LaTeX. The first public release will follow after the initial chapters and build workflow have been reviewed.

## Research context

The project grew out of a practical need to replace the handwritten files in [KAN-research-prep](https://github.com/AlexandraSloan3/KAN-research-prep) with searchable, reproducible notes. That repository records the broader preparation pathway in linear algebra, calculus, probability, and machine learning. `KaoNotes` is the typesetting system and maintained long-form version of those notes.

The linear-algebra material is based on the author's own study notes made while working through Gilbert Strang's *Introduction to Linear Algebra* and MIT 18.06. The repository records the author's explanations, calculations, and research connections; it does not reproduce the textbook text.

Current goals:

- a small, reproducible XeLaTeX project;
- readable wide-margin layouts for definitions, remarks, figures, and citations;
- support for English, Traditional Chinese, and Simplified Chinese text;
- a clean structure suitable for mathematical and computer-science notes;
- transparent attribution to the upstream kaobook project.

## Writing scope

KaoNotes can be used for mathematics and computer-science writing, including lecture notes, derivations, proofs, formulas, algorithms, code examples, and research notes. It supports English, Traditional Chinese, Simplified Chinese, and mixed-language documents, so its scope is not limited to the linear-algebra example included in this repository.

## Requirements

Install a TeX distribution that provides XeLaTeX, `latexmk`, Biber, MakeIndex, and CJK fonts. The supplied configuration uses Noto Serif/Sans TC for Traditional Chinese and Noto Serif CJK SC for Simplified Chinese, with Microsoft YaHei as the Windows fallback. XeLaTeX is required for these multilingual settings.

## Quick start

1. Clone or download this repository.
2. Edit the title, subtitle, author, and language settings in `main.tex`.
3. Create a chapter such as `chapters/my-notes.tex`.
4. Add `\input{chapters/my-notes.tex}` in the main-body section of `main.tex`.
5. Build the document:

```powershell
.\build.ps1
```

On any platform with `latexmk`, run:

```sh
latexmk main.tex
```

The generated `main.pdf` is intentionally not tracked during development.

## Examples

The complete file [`examples/multilingual-code.tex`](examples/multilingual-code.tex) demonstrates:

- English mathematical writing and a definition box;
- a Traditional Chinese note with mixed English terminology;
- a Simplified Chinese note and a blue information box;
- a Python listing with a caption.

Compile the example from the repository root:

```sh
xelatex -output-directory=examples examples/multilingual-code.tex
```

Use the same patterns in a chapter:

```tex
\section{繁體中文範例}
矩陣乘法可以寫成 \(A\mathbf{x}=\mathbf{b}\)。

\section{\zhHans 简体中文示例}
{\zhHans 矩阵乘法可以写成 \(A\mathbf{x}=\mathbf{b}\)。}

\begin{lstlisting}[language=Python]
def square(x):
    return x * x
\end{lstlisting}
```

## Project structure

- `main.tex` - document configuration and entry point
- `chapters/` - research-note chapters
- `examples/` - complete multilingual and source-code examples
- `kaobook.cls` and `kao*.sty` - upstream class and supporting packages
- `build.ps1` and `latexmkrc` - reproducible local build configuration

## Permissions and licensing

This repository is derived from Federico Marotta's [kaobook](https://github.com/fmarotta/kaobook), itself based on work by Ken Arroyo Ohori and Tufte-LaTeX. Upstream authorship is preserved in the source headers and `MANIFEST.md`.

The kaobook-derived class and package files remain under the LaTeX Project Public License 1.3 or later, as described in `MANIFEST.md`. That licence permits use, study, modification, and redistribution under its terms. Documents that you produce with KaoNotes remain your own work.

Upstream templates and examples retain their stated CC0 dedication. The maintainer's newly written study-note prose and project documentation remain copyright J Song (Alex); no additional content licence is granted until a separate licence is selected for the first public release. See `NOTICE.md` for the file-level attribution boundary.

## Contact

KaoNotes is maintained by J Song (Alex), [@AlexandraSloan3](https://github.com/AlexandraSloan3). Academic and direct enquiries may be sent to [jsong.alex@proton.me](mailto:jsong.alex@proton.me). For usage questions, reproducible build problems, or feature requests, open a [GitHub issue](https://github.com/AlexandraSloan3/kaonotes/issues). Please include the TeX engine, operating system, and a minimal example when reporting a compilation problem.
