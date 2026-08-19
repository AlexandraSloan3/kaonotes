# KaoNotes

`KaoNotes` is a lightweight, research-oriented LaTeX framework developed alongside KAN research. It adapts the wide-margin design of [kaobook](https://github.com/fmarotta/kaobook) for compact academic notes, multilingual writing, mathematics, and computer-science material.

`KaoNotes` 是一套在 KAN 研究過程中開發的輕量 LaTeX 學術筆記框架。它改編自 [kaobook](https://github.com/fmarotta/kaobook) 的寬邊註排版，用於簡潔的學術筆記、多語書寫、數學與計算機科學內容。

> **Current release / 目前版本：** v0.1.0 is the first public release of KaoNotes. The repository includes the framework, reproducible build files, and a compact reference chapter for mathematics, multilingual text, and code.
>
> v0.1.0 是 KaoNotes 的首個正式公開版本。倉庫包含框架、可重現的編譯文件，以及展示數學、多語文字與代碼排版的簡短參考章節。

## Research context / 研究背景

KaoNotes began as a personal typesetting tool for organising mathematics and computer-science notes during KAN research preparation. This repository publishes the framework as a standalone academic tool for general use. 
KaoNotes 最初是在準備 KAN 研究期間，用來整理數學與計算機科學筆記的個人排版工具。本倉庫將框架作為獨立的學術工具公開，供一般使用。

The linear-algebra material is based on the author's own study notes made while working through Gilbert Strang's *Introduction to Linear Algebra* and MIT 18.06. The repository records the author's explanations, calculations, and research connections; it does not reproduce the textbook text.

線性代數內容以研讀 Gilbert Strang 的 *Introduction to Linear Algebra* 與 MIT 18.06 時所作的學習筆記為基礎。本倉庫記錄作者自己的解釋、計算與研究聯繫，不重製教科書原文。

Current goals / 目前目標：

- a small, reproducible XeLaTeX project / 建立小型且可重現編譯的 XeLaTeX 專案；
- readable wide-margin layouts for definitions, remarks, figures, and citations / 為定義、註釋、圖表與引用提供易讀的寬邊註排版；
- support for English, Traditional Chinese, and Simplified Chinese text / 支援英文、繁體中文及簡體中文；
- a clean structure suitable for mathematical and computer-science notes / 提供適合數學與計算機科學筆記的清晰結構；
- transparent attribution to the upstream kaobook project / 清楚標示上游 kaobook 專案的作者與來源。

## Writing scope / 書寫範圍

KaoNotes can be used for mathematics and computer-science writing, including lecture notes, derivations, proofs, formulas, algorithms, code examples, and research notes. It supports English, Traditional Chinese, Simplified Chinese, and mixed-language documents, so its scope is not limited to the linear-algebra example included in this repository.

KaoNotes 可用於數學與計算機科學寫作，包括課堂筆記、推導、證明、公式、算法、代碼示例及研究筆記。它支援英文、繁體中文、簡體中文及多語混排，因此用途不限於本倉庫所附的線性代數示例。

## Reference document / 參考文檔

The included chapter is both a set of study notes and a compact demonstration of KaoNotes. It contains:

所附章節既是一份學習筆記，也是 KaoNotes 的簡短示例，其中包括：

- matrix equations, vectors, and worked mathematical derivations / 矩陣方程、向量及完整的數學推導；
- a Traditional Chinese chapter title and introductory note / 繁體中文章節標題與引言；
- a limited Simplified Chinese section heading, included to demonstrate font switching without disrupting the page design / 少量簡體中文小節標題，用於展示字體切換而不影響整體版面；
- a short PyTorch tensor example set in monospaced type like a displayed formula / 以等寬字體、仿照陳列公式排版的簡短 PyTorch 張量示例；
- definitions, remarks, and margin notes using the wide-margin layout and dark-grey boxes / 採用寬邊註排版與深灰色框的定義、註釋及頁邊筆記。

These examples are intentionally brief. They show that one document can combine mathematics, English, Traditional Chinese, Simplified Chinese, and source code while keeping the main chapter visually consistent.

這些示例刻意保持簡短，用於說明同一份文檔可以在維持主要章節視覺一致的情況下，混合數學、英文、繁體中文、簡體中文與源代碼。

## Requirements / 環境要求

Install a TeX distribution that provides XeLaTeX, `latexmk`, Biber, MakeIndex, and the configured fonts. KaoNotes preserves Noto Serif/Sans TC for Traditional Chinese, uses LXGW Neo ZhiSong for the limited Simplified Chinese example, and uses JetBrains Mono for code. You may replace these names in `main.tex` with installed alternatives. XeLaTeX is required for the multilingual settings.

請安裝包含 XeLaTeX、`latexmk`、Biber、MakeIndex 及所需字體的 TeX 發行版。KaoNotes 保留 Noto Serif/Sans TC 作為繁體中文字體，少量簡體中文示例使用 LXGW Neo ZhiSong，代碼使用 JetBrains Mono。你可以在 `main.tex` 中將這些字體名稱替換為本機已安裝的其他字體。多語設定必須使用 XeLaTeX。

## Quick start / 快速開始

1. Clone or download this repository. / 複製或下載此倉庫。
2. Edit the title, subtitle, author, and language settings in `main.tex`. / 在 `main.tex` 中修改標題、副標題、作者與語言設定。
3. Create a chapter such as `chapters/my-notes.tex`. / 建立章節文件，例如 `chapters/my-notes.tex`。
4. Add `\input{chapters/my-notes.tex}` in the main-body section of `main.tex`. / 在 `main.tex` 的正文部分加入 `\input{chapters/my-notes.tex}`。
5. Build the document. / 編譯文檔：

```powershell
.\build.ps1
```

On any platform with `latexmk`, run: / 在任何已安裝 `latexmk` 的平台上，可執行：

```sh
latexmk main.tex
```

The generated `main.pdf` is intentionally not tracked during development.

開發期間產生的 `main.pdf` 不會納入版本追蹤。

## Examples / 示例

The complete file [`examples/multilingual-code.tex`](examples/multilingual-code.tex) demonstrates:

完整示例文件 [`examples/multilingual-code.tex`](examples/multilingual-code.tex) 包含：

- English mathematical writing and a definition box / 英文數學寫作與定義框；
- a Traditional Chinese note with mixed English terminology / 混合英文術語的繁體中文筆記；
- a Simplified Chinese note and a dark-grey information box / 簡體中文筆記與深灰色資訊框；
- a monochrome Python listing with a caption / 附有標題的單色 Python 代碼區塊。

Compile the example from the repository root: / 在倉庫根目錄編譯示例：

```sh
xelatex -output-directory=examples examples/multilingual-code.tex
```

Use the same patterns in a chapter: / 可在章節中使用相同寫法：

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

## Project structure / 專案結構

- `main.tex` - document configuration and entry point / 文檔設定與入口文件
- `chapters/` - research-note chapters / 研究筆記章節
- `examples/` - complete multilingual and source-code examples / 完整的多語與源代碼示例
- `kaobook.cls` and `kao*.sty` - upstream class and supporting packages / 上游文檔類別與配套套件
- `build.ps1` and `latexmkrc` - reproducible local build configuration / 可重現的本機編譯設定

## Permissions and licensing / 使用權限與授權

KaoNotes uses file-level dual licensing. The kaobook-derived class, package files, and project-level framework are distributed under the LaTeX Project Public License 1.3c or later. The maintainer's original reference-note prose, calculations, examples, and compiled reference document are distributed under the Creative Commons Attribution-NonCommercial 4.0 International licence.

KaoNotes 採用按文件區分的雙重授權。由 kaobook 衍生的文檔類別、套件文件及專案級框架依 LaTeX Project Public License 1.3c 或更新版本發佈；維護者原創的參考筆記正文、計算、示例及其編譯文檔則依 Creative Commons Attribution-NonCommercial 4.0 International 授權發佈。

This repository is derived from Federico Marotta's [kaobook](https://github.com/fmarotta/kaobook), itself based on work by Ken Arroyo Ohori and Tufte-LaTeX. Upstream authorship is preserved in the source headers and MANIFEST.md. Documents produced with KaoNotes remain the work of their respective authors.

本倉庫改編自 Federico Marotta 的 [kaobook](https://github.com/fmarotta/kaobook)，而 kaobook 本身以 Ken Arroyo Ohori 與 Tufte-LaTeX 的工作為基礎。上游作者資訊保留於源文件標頭與 MANIFEST.md 中。使用 KaoNotes 製作的文檔仍屬於其各自作者。

See [LICENSE.md](LICENSE.md), [LICENSE-LPPL-1.3c.txt](LICENSE-LPPL-1.3c.txt), [LICENSE-CONTENT.md](LICENSE-CONTENT.md), and [NOTICE.md](NOTICE.md) for the exact file boundary and attribution details.

各文件的授權範圍及署名方式請參閱 [LICENSE.md](LICENSE.md)、[LICENSE-LPPL-1.3c.txt](LICENSE-LPPL-1.3c.txt)、[LICENSE-CONTENT.md](LICENSE-CONTENT.md) 及 [NOTICE.md](NOTICE.md)。

## Contact / 聯絡方式

KaoNotes is maintained by J Song (Alex), [@AlexandraSloan3](https://github.com/AlexandraSloan3). Academic and direct enquiries may be sent to [jsong.alex@proton.me](mailto:jsong.alex@proton.me). For usage questions, reproducible build problems, or feature requests, open a [GitHub issue](https://github.com/AlexandraSloan3/kaonotes/issues). Please include the TeX engine, operating system, and a minimal example when reporting a compilation problem.

KaoNotes 由 J Song (Alex)，[@AlexandraSloan3](https://github.com/AlexandraSloan3) 維護。學術或直接查詢可寄至 [jsong.alex@proton.me](mailto:jsong.alex@proton.me)。如有使用問題、可重現的編譯問題或功能建議，請提交 [GitHub issue](https://github.com/AlexandraSloan3/kaonotes/issues)。回報編譯問題時，請附上 TeX 引擎、作業系統及最小示例。
