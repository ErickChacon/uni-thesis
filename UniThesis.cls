% ============================================================================
% CLASS UNITHESIS INFORMATION
% ============================================================================
%
% UniThesis.cls (Modification of ClemsonThesis - Andrew R. Dalton)
% Universidad Nacional de Ingeniería Thesis/Dissertation Template
% Developed by Erick Chacon Montalvan, School of Statistics
%
% ============================================================================
% DEFINING BASIC INFORMATION ABOUT THE CLASS
% ============================================================================
\newcommand{\UniThesisUpdate}{2014/09/14}
\newcommand{\UniThesisVersion}{1.0}
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{UniThesis}[\UniThesisUpdate\space Version
\UniThesisVersion\space by Erick Chacon Montalvan, School of Statistics]
% This document class is based on the 'book' document class
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{book}}
\ProcessOptions
\LoadClass[oneside]{book}
% ============================================================================
% REQUIRED PACKAGES
% ============================================================================
\usepackage[plainpages=false,pdfpagelabels,hidelinks,breaklinks=true]{hyperref} % Get nice PDF document links 
\usepackage[letterpaper, top=4cm,bottom=4cm,right=2.5cm,left=2.5cm]{geometry}      % Easily set margins
\usepackage[toc,title,page]{appendix}                 % Configure appendix formatting
\usepackage{tocloft}                                  % Configure ToC Lo{F,T} formatting
\usepackage{indentfirst}                              % Always indent first paragraph
\usepackage{fancyhdr}                                 % Control header, footer position
\usepackage{graphicx}                                 % Include figures
\usepackage{setspace}                                 % Control spacing
\usepackage[latin1]{inputenc}                         % Coding latin1
\usepackage[spanish]{babel}                           % Spanish languaje
\usepackage{helvet}                                   % Use Arial Font
\usepackage{color}                                    % Manage colors
\usepackage{breakcites}                               % Break citation reference
\usepackage[font=small,labelfont=bf,justification=centering]{caption} % Customize caption of tables or figures
\usepackage{multirow}                                 % Allow multirow tables
\usepackage{float}                                    % Exact location of figures Here
\usepackage{enumerate}                                % Set item kind (I),(a),(A),...
\usepackage{subcaption}                               % Subcaption of subtables or subfigures
\usepackage{etoolbox} 
%\usepackage{appendix} 
% ============================================================================
% NEW COMMANDS AND ENVIRONMENTS
% ============================================================================
% redefine plain to delete page number
\newcommand{\hackplain}{\fancypagestyle{plain}{%
    \fancyhf{} % clear all header and footer fields
}}

\renewcommand{\appendixpagename}{Apéndice}  % appendix name
\appto\frontmatter{\pagestyle{plain}}       % pagestyle frontmatter
\appto\mainmatter{\pagestyle{fancy}}        % pagestyle mainmatter
\appto\backmatter{\pagestyle{fancy}}        % pagestyle backmatter

%\renewcommand{\bibsetup}{\thispagestyle{empty}} % not number first page bibliography

\renewcommand{\familydefault}{\sfdefault}				% Use sans serif font

% Environment to make a fancy dedication in the thesis
\newenvironment{dedication}{\phantom{}\begin{flushright}\begin{em}\begin{minipage}{0.5\textwidth}\raggedleft}{\end{minipage}\end{em}\end{flushright}}

% Environment to make a list without indentation
\newcounter{mycounter}
\newenvironment{noindlist}
 {\begin{list}{\arabic{mycounter}.~~}{\usecounter{mycounter} \labelsep=0em \labelwidth=0em \leftmargin=0em \itemindent=0em}}
 {\end{list}}

% Initially define all of our variables as empty
\gdef\@UniLocation{}
\gdef\@UniLogo{}
\gdef\@UniUniversity{}
\gdef\@UniThesisYear{}
\gdef\@UniMajor{}
\gdef\@UniDepartment{}
\gdef\@UniDocumentType{}
\gdef\@UniAuthor{}
\gdef\@title{}

% Some commands to set our variables
\newcommand{\location}[1]             {\ifx\empty#1\else \gdef\@UniLocation{#1}      \fi}
\newcommand{\logo}[1]                 {\ifx\empty#1\else \gdef\@UniLogo{#1}      \fi}
\newcommand{\university}[1]           {\ifx\empty#1\else \gdef\@UniUniversity{#1}      \fi}
\newcommand{\thesisYear}[1]           {\ifx\empty#1\else \gdef\@UniThesisYear{#1}       \fi}
\newcommand{\major}[1]                {\ifx\empty#1\else \gdef\@UniMajor{#1}                \fi}
\newcommand{\department}[1]           {\ifx\empty#1\else \gdef\@UniDepartment{#1}           \fi}
\newcommand{\documentType}[1]         {\ifx\empty#1\else \gdef\@UniDocumentType{#1}         \fi}
\renewcommand{\author}[1]             {\ifx\empty#1\else \gdef\@UniAuthor{#1}               \fi}
\renewcommand{\title}[1]              {\ifx\empty#1\else \gdef\@title{#1}                       \fi}

% Some commands to get the values of our variables
\newcommand{\theLocation}{%
    \ifx\@UniLocation\@empty
        \PackageError{UniThesis}{'location' has not been defined}\@ehc
    \else
        \@UniLocation
    \fi
}

\newcommand{\theLogo}{%
    \ifx\@UniLogo\@empty
        \PackageError{UniThesis}{'logo' has not been defined}\@ehc
    \else
        \@UniLogo
    \fi
}

\newcommand{\theUniversity}{%
    \ifx\@UniUniversity\@empty
        \PackageError{UniThesis}{'university' has not been defined}\@ehc
    \else
        \@UniUniversity
    \fi
}

\newcommand{\theThesisYear}{%
    \ifx\UniThesisYear\@empty
        \PackageError{UniThesis}{'thesisYear' has not been defined}\@ehc
    \else
        \@UniThesisYear
    \fi
}

\newcommand{\theMajor}{%
    \ifx\@UniMajor\@empty
        \PackageError{UniThesis}{'major' has not been defined}\@ehc
    \else
        \@UniMajor
    \fi
}

\newcommand{\theDepartment}{%
    \ifx\@UniDepartment\@empty
        \PackageError{UniThesis}{'department' has not been defined}\@ehc
    \else
        \@UniDepartment
    \fi
}

\newcommand{\theDocumentType}{%
    \ifx\@UniDocumentType\@empty
        \PackageError{UniThesis}{'documentType' has not been defined}\@ehc
    \else
        \@UniDocumentType
    \fi
}

\newcommand{\theAuthor}{%
    \ifx\@UniAuthor\@empty
        \PackageError{UniThesis}{'author' has not been defined}\@ehc
    \else
        \@UniAuthor
    \fi
}

\newcommand{\theTitle}{%
    \ifx\@title\@empty
        \PackageError{UniThesis}{'title' has not been defined}\@ehc
    \else
        \@title
    \fi
}

% A command to control the line spacing
\newcommand{\newlinestretch}[1]{\renewcommand{\baselinestretch}{#1}\normalsize}

% Input the specified file, and add a \clearpage afterwards
\newcommand{\inputfile}[1]{
    \input{#1} \clearpage
}

% Generate a phantom section to help the 'hyperref' package understand where
% a section begins, add a line to the ToC with the specified title, then
% execute the specified command (e.g., \maketitle).
\newcommand{\addtotoc}[2]{
    \phantomsection
    \addcontentsline{toc}{chapter}{#1}
    #2 \clearpage
}

% We want our Table of Contents (ToC) to be named 'Table of Contents' rather than
% just 'Contents'
\renewcommand\contentsname{Table of Contents}

% ============================================================================
% DEFINING THE TITLE PAGE
% ============================================================================
\renewcommand{\maketitle}{
   \begin{titlepage}
%   \newgeometry{top=3cm,bottom=3cm,right=2cm,left=2cm}
      \pagestyle{fancy} % do not put neither header nor footer
       \begin{center}
       {\huge \textbf \theUniversity}\\
                 \newlinestretch{1.5}
       {\large \theDepartment}\\[2ex]
       \theLogo
          {\ }\\[.5ex]
          {\sc \LARGE \textbf \theTitle}\\[3ex]
          {\large \theDocumentType}\\[2ex]
          {\large PARA OPTAR EL TÍTULO PROFESIONAL DE \theMajor\\
          POR LA MODALIDAD DE \theDocumentType}\\[3ex]
          {\large ELABORADO POR}\\[2ex]
          {\Large \textbf \theAuthor}\\[3ex]
          {\large \theLocation}\\
          {\large \theThesisYear}\\
       \end{center}
   \end{titlepage}
}

% ============================================================================
% ADDITIONAL PARAMETERS
% ============================================================================

% Set paragraph indention to 0.5 inches
\setlength{\parindent}{0.5in}

% Make the ToC only show Chapters and Sections
\setcounter{tocdepth}{2}

% Make subsections get numbered
\setcounter{secnumdepth}{3}

% Setup the page format.  All headers are empty.  The center footer
% contains the page number.  Also, remove the headrule from all pages.
% Finally, use the 'fancy' page style (which uses all the things we
% just setup).
\lhead{\empty}
\chead{\empty}
\rhead{\thepage}
\lfoot{\empty}
\cfoot{\empty}
\rfoot{\empty}
\pagestyle{fancy}
\renewcommand{\headrulewidth}{0pt}

% Set the appendix to just have a letter not prepended by the main division
% number in the ToC (see the documentation for the 'appendix' package)
\renewcommand{\setthesection}{\Alph{section}}

% Setup the ToC and List of {Tables|Figures|Whatever} to
% include the ellipses between the name and the page number.  Also make
% the page number big enough so that three digit numbers can be used.
\DeclareRobustCommand{\changetochap}{%
    \renewcommand{\cftchapleader}{\cftchapfont\cftdotfill{\cftdotsep}}%
    \cftsetpnumwidth{1.5em}
%    \newgeometry{top=4cm,bottom=4cm,right=2.5cm,left=2.5cm}
}
\changetochap

% Do not enumerate page appendix title
\makeatletter
\patchcmd{\@chap@pppage}{\thispagestyle{plain}}{\thispagestyle{empty}}{}{}
\makeatother