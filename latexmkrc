# Project-local latexmk configuration for the kaobook template.
# Running `latexmk main.tex` now builds the bibliography, glossary,
# nomenclature, index, and all cross-references on Windows, macOS, and Linux.

@default_files = ('main.tex');

# XeLaTeX is required for xeCJK and the multilingual font configuration.
$pdf_mode = 5;
$xelatex = 'xelatex -no-shell-escape %O %S';

# Glossary and acronym files (glossaries package).
add_cus_dep('glo', 'gls', 0, 'run_makeglossaries');
add_cus_dep('acn', 'acr', 0, 'run_makeglossaries');
$clean_ext .= ' acr acn alg glg glo gls ist xdy';

sub run_makeglossaries {
    my ($base_name, $path) = fileparse($_[0]);
    pushd($path);
    my $return = system('makeglossaries', $base_name);
    popd();
    return $return;
}

# Nomenclature (nomencl package).
add_cus_dep('nlo', 'nls', 0, 'run_makenomenclature');
$clean_ext .= ' nlo nls nlg';

sub run_makenomenclature {
    return system('makeindex', '-s', 'nomencl.ist', '-o', "$_[0].nls", "$_[0].nlo");
}
