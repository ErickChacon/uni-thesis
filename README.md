UniThesis
=========

This project modified the ClemsonThesis project made by Andrew R. Dalton in order to customize and create
the **UniThesis.cls** class in LaTeX as a template for undergraduate tesis at *Universidad Nacional de Ingeniería*.

Description
------------

This project include:

1. **UniThesis.cls:** This file has the main code of UniThesis template, it automatically creates the fontmatter and defines the features of a thesis document at *Universidad Nacional de Ingeniería*. You do not need to manipulate this file. You can all this class in a .tex file with: `\documentclass[a4paper, 12pt]{article}`

2. **ec_dedication.tex, ec_acknowledgments.tex, ec_abstract.tex, ec0_introduction.tex, ec1_planteamiento.tex, ..., ec6_conclusion.tex:** These files contain the body of your thesis, you must modify these files based on your thesis.
3. **BibThesis.bib:** This file contain your bibliography, you can obtain it trough a bibliography manager software such as mendeley, zotero, etc.
4. **MyThesis.tex:** This file join all the .tex files in order to create **MyThesis.pdf**, which is your final thesis document. In this file, you must update your personal information and run it with some LaTeX software such as TexStudio and so on.
