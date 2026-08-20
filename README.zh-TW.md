# KaoNotes

[![DOI](https://zenodo.org/badge/DOI/10.5281/zenodo.22018510.svg)](https://doi.org/10.5281/zenodo.22018510)

[English](README.md) · **繁體中文**

一套輕量的學術筆記 LaTeX 框架，適用於多語書寫、數學與計算機科學內容。於 KAN 研究過程中開發，改編自 [kaobook](https://github.com/fmarotta/kaobook) 的寬邊註排版。

<p align="center">
  <img src="docs/preview.png" alt="KaoNotes 預覽" width="720">
</p>

<p align="center">
  <a href="kaonotes-preview.pdf">四頁預覽（PDF）</a>
</p>

> **v0.1.1** — 同步正式發佈的四頁預覽與來源包，恢復繁體中文的 Noto Serif TC 字體，並在封面標示作者 J Song (Alex)。
>
> Zenodo：概念 DOI [10.5281/zenodo.22018510](https://doi.org/10.5281/zenodo.22018510) · 目前版本 [10.5281/zenodo.22018865](https://doi.org/10.5281/zenodo.22018865)

## 特色

- **原生多語支援** — 英文、繁體中文、簡體中文及多語混排可共存於同一份文檔，字體切換不影響整體版面。
- **為數學與計算機科學而設** — 課堂筆記、推導、證明、公式、算法、代碼示例與研究筆記。
- **寬邊註排版** — 承襲 kaobook 的頁邊筆記、定義框與深灰色資訊框。
- **代碼即正文** — 附標題的單色代碼區塊，以及仿照陳列公式排版的等寬行內示例（如 PyTorch 張量）。
- **可重現的編譯流程** — 內附 `latexmkrc` 與 `build.ps1`。

## 環境要求

請安裝提供 **XeLaTeX**、`latexmk`、**Biber** 與 **MakeIndex** 的 TeX 發行版。多語設定必須使用 XeLaTeX。

| 用途 | 預設字體 |
| --- | --- |
| 繁體中文 | Noto Serif TC / Noto Sans TC |
| 簡體中文（少量示例） | LXGW Neo ZhiSong |
| 代碼 | JetBrains Mono |

以上字體皆可在 `main.tex` 中替換為本機已安裝的其他字體。

## 快速開始

1. 複製或下載此倉庫。
2. 在 `main.tex` 中修改標題、副標題、作者與語言設定。
3. 建立章節文件，例如 `chapters/my-notes.tex`。
4. 在 `main.tex` 的正文部分加入 `\input{chapters/my-notes.tex}`。
5. 編譯：

```powershell
.\build.ps1
```

或在任何已安裝 `latexmk` 的平台上執行：

```sh
latexmk main.tex
```

開發期間產生的 `main.pdf` 不會納入版本追蹤。

## 示例

[`examples/multilingual-code.tex`](examples/multilingual-code.tex) 是可直接編譯的完整示例，包含英文數學寫作與定義框、混合英文術語的繁體中文筆記、簡體中文筆記與深灰色資訊框，以及附標題的單色 Python 代碼區塊。

在倉庫根目錄編譯：

```sh
xelatex -output-directory=examples examples/multilingual-code.tex
```

相同寫法可直接用於章節中：

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

## 參考文檔

`chapters/` 所附章節既是一份學習筆記，也是框架的簡短示例：矩陣方程、向量與完整推導；繁體中文章節標題與引言；少量簡體中文小節標題；PyTorch 張量示例；以及定義、註釋與頁邊筆記。

這些示例刻意保持簡短，用於說明同一份文檔可以在維持章節視覺一致的情況下，混合數學、英文、繁體中文、簡體中文與源代碼。KaoNotes 的用途不限於本倉庫所附的線性代數示例。

## 專案結構

```
main.tex                  文檔設定與入口文件
chapters/                 研究筆記章節
examples/                 完整的多語與源代碼示例
kaobook.cls、kao*.sty      上游文檔類別與配套套件
build.ps1、latexmkrc       可重現的本機編譯設定
```

## 使用權限與授權

KaoNotes 採用**按文件區分的雙重授權**：

| 文件 | 授權 |
| --- | --- |
| 由 kaobook 衍生的文檔類別、套件文件及專案級框架 | LaTeX Project Public License 1.3c 或更新版本 |
| 維護者原創的參考筆記正文、計算、示例及其編譯文檔 | Creative Commons Attribution-NonCommercial 4.0 International |

本倉庫改編自 Federico Marotta 的 [kaobook](https://github.com/fmarotta/kaobook)，而 kaobook 本身以 Ken Arroyo Ohori 與 Tufte-LaTeX 的工作為基礎。上游作者資訊保留於源文件標頭與 `MANIFEST.md` 中。使用 KaoNotes 製作的文檔仍屬於其各自作者。

各文件的授權範圍及署名方式請參閱 [LICENSE.md](LICENSE.md)、[LICENSE-LPPL-1.3c.txt](LICENSE-LPPL-1.3c.txt)、[LICENSE-CONTENT.md](LICENSE-CONTENT.md) 及 [NOTICE.md](NOTICE.md)。

## 聯絡方式

由 J Song (Alex)，[@AlexandraSloan3](https://github.com/AlexandraSloan3) 維護。

- 學術或直接查詢：[jsong.alex@proton.me](mailto:jsong.alex@proton.me)
- 使用問題、編譯問題或功能建議：[提交 issue](https://github.com/AlexandraSloan3/kaonotes/issues)

回報編譯問題時，請附上 TeX 引擎、作業系統及最小示例。

---

如果 KaoNotes 對你有幫助，給一顆 ⭐ 能讓更多有需要的研究者發現它。
