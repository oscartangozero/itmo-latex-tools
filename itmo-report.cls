\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{itmo-report}

\LoadClass[12pt]{article}

% russian language support
\RequirePackage[utf8]{inputenc}
\RequirePackage[russian]{babel}

% proper page geometry
\RequirePackage[
    a4paper,
    total={170mm,257mm},
    left=30mm,
    right=10mm,
    top=20mm,
    bottom=20mm]{geometry}

% custom title page
\renewcommand*{\title}[1]{\gdef\@title{#1}}
\newcommand{\subtitle}[1]{\gdef\@subtitle{#1}}
\newcommand{\details}[1]{\gdef\@details{#1}}

\newcommand{\discipline}[1]{\gdef\@discipline{#1}}
\newcommand{\professor}[1]{\gdef\@professor{#1}}

\renewcommand*{\author}[1]{\gdef\@author{#1}}
\newcommand{\studygroup}[1]{\gdef\@studygroup{#1}}

\renewcommand*{\maketitle}{%
    \begin{titlepage}
        \centering
        {\footnotesize МИНИСТЕРСТВО~НАУКИ~И~ВЫСШЕГО~ОБРАЗОВАНИЯ РОССИЙСКОЙ~ФЕДЕРАЦИИ \par}
        \vspace{0.25cm}
        {\footnotesize\bfseries ФЕДЕРАЛЬНОЕ~ГОСУДАРСТВЕННОЕ~АВТОНОМНОЕ ОБРАЗОВАТЕЛЬНОЕ~УЧРЕЖДЕНИЕ~ВЫСШЕГО~ОБРАЗОВАНИЯ
            ``НАЦИОНАЛЬНЫЙ~ИССЛЕДОВАТЕЛЬСКИЙ~УНИВЕРСИТЕТ~ИТМО'' \par}
        \vspace{0.5cm}
        \hrule
        \vspace{0.6cm}
        {Факультет программной инженерии и компьютерной техники \par}
        \vspace{8cm}
        {\large\bfseries \@title\unskip\strut \par}
        \ifdefined\@discipline{\large по дисциплине ``\@discipline'' \par}\fi
        \vspace{0.15cm}
        \ifdefined\@subtitle{\large ``\@subtitle'' \par}\fi
        \vspace{1cm}
        {\raggedleft
            \ifdefined\@details{\@details \par}\fi
            \vspace{1cm}
            {Выполнил: \par}
            \ifdefined\@studygroup{студент группы \@studygroup \par}\fi
            \ifdefined\@author{\@author \par}\fi
            \vspace{1cm}
            \ifdefined\@professor{Преподаватель: \par \@professor \par}\fi
        }
        \vfill
        {Санкт-Петербург \par}
        {\the\year{} \par}
    \end{titlepage}}

% nice table of contents
\RequirePackage{hyperref}
\hypersetup{pdfborder=0 0 0}

% denser lists
\RequirePackage{enumitem}
\setlist{topsep=0.5\topsep, partopsep=0.5\partopsep, itemsep=0.25\itemsep, parsep=0.25\parsep}

% nice tables
\RequirePackage{array}
\RequirePackage{booktabs}
\RequirePackage[skip=0.2em]{caption}
\newcolumntype{L}[1]{>{\raggedright\arraybackslash\hspace{0pt}}p{#1}}
\newcolumntype{C}[1]{>{\centering\arraybackslash\hspace{0pt}}p{#1}}

% math support
\RequirePackage{amsmath}
\RequirePackage{amssymb}