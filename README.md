UniThesis
=========

This project modified the ClemsonThesis project made by Andrew R. Dalton in order to customize and create
the **UniThesis.cls** class in LaTeX as a template for undergraduate tesis at *Universidad Nacional de Ingeniería*.

Description
------------

This project include:

1. **UniThesis.cls:** This file has the main code of UniThesis template, it automatically creates the fontmatter and defines the features of a thesis document at *Universidad Nacional de Ingeniería*. You do not need to manipulate this file. You can all this class in a .tex file with: `\documentclass[10pt,a4paper,onecolumn]{UniThesis}`

2. **ec_dedication.tex, ec_acknowledgments.tex, ec_abstract.tex, ec0_introduction.tex, ec1_planteamiento.tex, ..., ec6_conclusion.tex:** These files contain the body of your thesis, you must modify these files based on your thesis.
3. **BibThesis.bib:** This file contain your bibliography, you can obtain it through a bibliography manager software such as mendeley, zotero, etc.
4. **MyThesis.tex:** This file join all the .tex files in order to create **MyThesis.pdf**, which is your final thesis document. In this file, you must update your personal information and run it with some LaTeX software such as TexStudio and so on.

Suggested Books
---------------

Although I do not try to make a manual to write a thesis, I made some tips, mainly, in the Introduction and Statement of the Problem. Some of these tips were taken from: 

[1] Hans F. et all.(2006). How to Write a Succesful Science Thesis, The Concise Guide for Students

[2] James, E.(2003). Guide to the Successful Thesis and Dissertation, A Handbook for Students and Faculty, Fifth Edition, University of Pittsburgh, Pennsylvania, U.S.A.



