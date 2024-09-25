#Create the preamble
echo "\documentclass{report}" > glossario.tex
echo "\usepackage{lipsum}" >> glossario.tex
echo "\usepackage[]{hyperref}" >> glossario.tex
echo "\usepackage[italian]{babel}" >> glossario.tex
echo "\usepackage[acronym,nogroupskip,nonumberlist,nopostdot,toc]{glossaries}" >> glossario.tex
echo "\usepackage{fancyhdr}" >> glossario.tex
echo "\usepackage[style=iso]{datetime2}" >> glossario.tex
echo "" >> glossario.tex
echo "\makenoidxglossaries" >> glossario.tex

echo "renewcommand\headrulewidth{0pt}" | sed 's/renewcommand/\\renewcommand/g' | >> glossario.tex

#Adds the entries (manually loaded on a separated document)
cat entries.tex >> glossario.tex

#Starts the document
echo "begin{document}" | sed 's/begin/\\begin/g' >> glossario.tex
echo "" >> glossario.tex

#Sets footer
echo "fancyhf{}" | sed 's/fancy/\\fancy/g' >> glossario.tex
echo "fancyhead[RE,LO]{Autore: Alessia Visconti -- Versione: today}" | sed 's/fancy/\\fancy/g' | sed 's/today/\\today/g' >> glossario.tex
echo "fancyfoot[C]{}" | sed 's/fancy/\\fancy/g' >> glossario.tex

echo "\pagestyle{fancy}" >> glossario.tex


# Includes the glossary at the start
echo "" >> glossario.tex
echo "\printnoidxglossary[sort=letter, title={Glossario}]" >> glossario.tex
echo "" >> glossario.tex

#New pages that mentions only the entries, one per line
echo "newpage" | sed 's/new/\\new/g' >> glossario.tex
echo "" >> glossario.tex

#Scapes first mention from the document containing the entries
grep newglossaryentry entries.tex | grep -v "%"| sed 's/newglossaryentry/gls/g' >>  glossario.tex

#Ends document
echo "\end{document}" >> glossario.tex

#Compiles and clean up
pdflatex glossario.tex && pdflatex glossario.tex
rm glossario.aux  glossario.log  glossario.out

