# kaobook-lite

`kaobook-lite` is a lightweight, research-oriented LaTeX workspace developed alongside KAN research. It adapts the wide-margin design of [kaobook](https://github.com/fmarotta/kaobook) for compact academic notes, multilingual writing, mathematics, and computer-science material.

> **Development status:** early working version. The current reference document converts the author's handwritten linear-algebra notes into structured LaTeX. The first public release will follow after the initial chapters and build workflow have been reviewed.

## Research context

The project grew out of a practical need to replace the handwritten files in [KAN-research-prep](https://github.com/AlexandraSloan3/KAN-research-prep) with searchable, reproducible notes. That repository records the broader preparation pathway in linear algebra, calculus, probability, and machine learning. `kaobook-lite` is the typesetting system and maintained long-form version of those notes.

The linear-algebra material is based on the author's own study notes made while working through Gilbert Strang's *Introduction to Linear Algebra* and MIT 18.06. The repository records the author's explanations, calculations, and research connections; it does not reproduce the textbook text.

Current goals:

- a small, reproducible XeLaTeX project;
- readable wide-margin layouts for definitions, remarks, figures, and citations;
- support for English and Traditional Chinese text;
- a clean structure suitable for mathematical and computer-science notes;
- transparent attribution to the upstream kaobook project.

## Build

The document requires a TeX distribution with XeLaTeX, `latexmk`, Biber, and MakeIndex.

```powershell
.\build.ps1
```

or, on any platform with `latexmk`:

```sh
latexmk main.tex
```

The generated `main.pdf` is intentionally not tracked during development.

## Project structure

- `main.tex` - document configuration and entry point
- `chapters/` - research-note chapters
- `images/` - figures used by the example document
- `kaobook.cls` and `kao*.sty` - upstream class and supporting packages
- `build.ps1` and `latexmkrc` - reproducible local build configuration

## Attribution and licensing

This repository is derived from Federico Marotta's [kaobook](https://github.com/fmarotta/kaobook), itself based on work by Ken Arroyo Ohori and Tufte-LaTeX. Upstream authorship is preserved in the source headers and `MANIFEST.md`.

The kaobook class files remain under the LaTeX Project Public License as described in `MANIFEST.md`. Upstream templates and examples retain their stated CC0 dedication. Licensing for newly written research-note content will be stated explicitly before the first public release.

## Maintainer

J Song (Alex) - [@AlexandraSloan3](https://github.com/AlexandraSloan3)
