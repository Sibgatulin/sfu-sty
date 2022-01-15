%%
%% This is file `article.cls',
%% generated with the docstrip utility.
%%
%% The original source files were:
%%
%% classes.dtx  (with options: `article')
%% 
%% This is a generated file.
%% 
%% Copyright 1993 1994 1995 1996 1997 1998 1999 2000 2001 2002 2003 2004 2005 2006 2007 2008 2009
%% The LaTeX3 Project and any individual authors listed elsewhere
%% in this file.
%% 
%% This file was generated from file(s) of the LaTeX base system.
%% --------------------------------------------------------------
%% 
%% It may be distributed and/or modified under the
%% conditions of the LaTeX Project Public License, either version 1.3c
%% of this license or (at your option) any later version.
%% The latest version of this license is in
%%    http://www.latex-project.org/lppl.txt
%% and version 1.3c or later is part of all distributions of LaTeX
%% version 2005/12/01 or later.
%% 
%% This file has the LPPL maintenance status "maintained".
%% 
%% This file may only be distributed together with a copy of the LaTeX
%% base system. You may however distribute the LaTeX base system without
%% such generated files.
%% 
%% The list of all files belonging to the LaTeX base distribution is
%% given in the file `manifest.txt'. See also `legal.txt' for additional
%% information.
%% 
%% The list of derived (unpacked) files belonging to the distribution
%% and covered by LPPL is defined by the unpacking scripts (with
%% extension .ins) which are part of the distribution.
%% \CharacterTable
%%  {Upper-case    \A\B\C\D\E\F\G\H\I\J\K\L\M\N\O\P\Q\R\S\T\U\V\W\X\Y\Z
%%   Lower-case    \a\b\c\d\e\f\g\h\i\j\k\l\m\n\o\p\q\r\s\t\u\v\w\x\y\z
%%   Digits        \0\1\2\3\4\5\6\7\8\9
%%   Exclamation   \!     Double quote  \"     Hash (number) \#
%%   Dollar        \$     Percent       \%     Ampersand     \&
%%   Acute accent  \'     Left paren    \(     Right paren   \)
%%   Asterisk      \*     Plus          \+     Comma         \,
%%   Minus         \-     Point         \.     Solidus       \/
%%   Colon         \:     Semicolon     \;     Less than     \<
%%   Equals        \=     Greater than  \>     Question mark \?
%%   Commercial at \@     Left bracket  \[     Backslash     \\
%%   Right bracket \]     Circumflex    \^     Underscore    \_
%%   Grave accent  \`     Left brace    \{     Vertical bar  \|
%%   Right brace   \}     Tilde         \~}
\NeedsTeXFormat{LaTeX2e}[1995/12/01]
\ProvidesClass{sfu}
              [2007/10/19 v1.4h
  Siberian Federal University standart derived from Standard LaTeX document class]
%% Взято из article.cls -> [
	\newcommand\@ptsize{}
	\newif\if@restonecol
	\newif\if@titlepage
	\@titlepagefalse
	\if@compatibility\else
	\DeclareOption{a4paper}
	   {\setlength\paperheight {297mm}%
	    \setlength\paperwidth  {210mm}}
	\DeclareOption{a5paper}
	   {\setlength\paperheight {210mm}%
	    \setlength\paperwidth  {148mm}}
	\DeclareOption{b5paper}
	   {\setlength\paperheight {250mm}%
	    \setlength\paperwidth  {176mm}}
	\DeclareOption{letterpaper}
	   {\setlength\paperheight {11in}%
	    \setlength\paperwidth  {8.5in}}
	\DeclareOption{legalpaper}
	   {\setlength\paperheight {14in}%
	    \setlength\paperwidth  {8.5in}}
	\DeclareOption{executivepaper}
	   {\setlength\paperheight {10.5in}%
	    \setlength\paperwidth  {7.25in}}
	\DeclareOption{landscape}
	   {\setlength\@tempdima   {\paperheight}%
	    \setlength\paperheight {\paperwidth}%
	    \setlength\paperwidth  {\@tempdima}}
	\fi
	\if@compatibility
	  \renewcommand\@ptsize{0}
	\else
	\DeclareOption{10pt}{\renewcommand\@ptsize{0}}
	\fi
	\DeclareOption{11pt}{\renewcommand\@ptsize{1}}
	\DeclareOption{12pt}{\renewcommand\@ptsize{2}}
	\DeclareOption{14pt}{\renewcommand\@ptsize{4}}
	\if@compatibility\else
	\DeclareOption{oneside}{\@twosidefalse \@mparswitchfalse}
	\fi
	\DeclareOption{twoside}{\@twosidetrue  \@mparswitchtrue}
	\DeclareOption{draft}{\setlength\overfullrule{5pt}}
	\if@compatibility\else
	\DeclareOption{final}{\setlength\overfullrule{0pt}}
	\fi
	\DeclareOption{titlepage}{\@titlepagetrue}
	\if@compatibility\else
	\DeclareOption{notitlepage}{\@titlepagefalse}
	\fi
	\if@compatibility\else
	\DeclareOption{onecolumn}{\@twocolumnfalse}
	\fi
	\DeclareOption{twocolumn}{\@twocolumntrue}
	\DeclareOption{leqno}{\input{leqno.clo}}
	\DeclareOption{fleqn}{\input{fleqn.clo}}
	\DeclareOption{openbib}{%
	  \AtEndOfPackage{%
	   \renewcommand\@openbib@code{%
	      \advance\leftmargin\bibindent
	      \itemindent -\bibindent
	      \listparindent \itemindent
	      \parsep \z@
	      }%
	   \renewcommand\newblock{\par}}%
	}
	\ExecuteOptions{a4paper,14pt,oneside,onecolumn,final,fleqn}
	\ProcessOptions
	\input{size1\@ptsize.clo}
	\setlength\lineskip{1\p@}
	\setlength\normallineskip{1\p@}
	\renewcommand\baselinestretch{}
	\setlength\parskip{0\p@ \@plus \p@}
	\@lowpenalty   51
	\@medpenalty  151
	\@highpenalty 301
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% Пытаемся рационализировать поведение плавающих объектов
%% См. http://mintaka.sdsu.edu/GF/bibliog/latex/floats.html
% General parameters, for ALL pages:
\renewcommand\topfraction{.9}% max fraction of floats at top
\renewcommand\bottomfraction{.8}% max fraction of floats at bottom
% Parameters for TEXT pages (not float pages):
\setcounter{topnumber}{2}
\setcounter{bottomnumber}{2}
\setcounter{totalnumber}{5}
\setcounter{dbltopnumber}{2}
\renewcommand\textfraction{.07}
\renewcommand\dbltopfraction{.9}
% Parameters for FLOAT pages (not text pages):
% N.B.: floatpagefraction MUST be less than topfraction !!
\renewcommand\floatpagefraction{.7}
\renewcommand\dblfloatpagefraction{.7}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
	\if@twoside
	  \def\ps@headings{%
	      \let\@oddfoot\@empty\let\@evenfoot\@empty
	      \def\@evenhead{\thepage\hfil\slshape\leftmark}%
	      \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
	      \let\@mkboth\markboth
	    \def\sectionmark##1{%
	      \markboth {\MakeUppercase{%
		\ifnum \c@secnumdepth >\z@
		  \thesection\quad
		\fi
		##1}}{}}%
	    \def\subsectionmark##1{%
	      \markright {%
		\ifnum \c@secnumdepth >\@ne
		  \thesubsection\quad
		\fi
		##1}}}
	\else
	  \def\ps@headings{%
	    \let\@oddfoot\@empty
	    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
	    \let\@mkboth\markboth
	    \def\sectionmark##1{%
	      \markright {\MakeUppercase{%
		\ifnum \c@secnumdepth >\m@ne
		  \thesection\quad
		\fi
		##1}}}}
	\fi
	\def\ps@myheadings{%
	    \let\@oddfoot\@empty\let\@evenfoot\@empty
	    \def\@evenhead{\thepage\hfil\slshape\leftmark}%
	    \def\@oddhead{{\slshape\rightmark}\hfil\thepage}%
	    \let\@mkboth\@gobbletwo
	    \let\sectionmark\@gobble
	    \let\subsectionmark\@gobble
	    }
	  \if@titlepage
	  \newcommand\maketitle{\begin{titlepage}%
	  \let\footnotesize\small
	  \let\footnoterule\relax
	  \let \footnote \thanks
	  \null\vfil
	  \vskip 60\p@
	  \begin{center}%
	    {\LARGE \@title \par}%
	    \vskip 3em%
	    {\large
	     \lineskip .75em%
	      \begin{tabular}[t]{c}%
		\@author
	      \end{tabular}\par}%
	      \vskip 1.5em%
	    {\large \@date \par}%       % Set date in \large size.
	  \end{center}\par
	  \@thanks
	  \vfil\null
	  \end{titlepage}%
	  \setcounter{footnote}{0}%
	  \global\let\thanks\relax
	  \global\let\maketitle\relax
	  \global\let\@thanks\@empty
	  \global\let\@author\@empty
	  \global\let\@date\@empty
	  \global\let\@title\@empty
	  \global\let\title\relax
	  \global\let\author\relax
	  \global\let\date\relax
	  \global\let\and\relax
	}
	\else
	\newcommand\maketitle{\par
	  \begingroup
	    \renewcommand\thefootnote{\@fnsymbol\c@footnote}%
	    \def\@makefnmark{\rlap{\@textsuperscript{\normalfont\@thefnmark}}}%
	    \long\def\@makefntext##1{\parindent 1em\noindent
		    \hb@xt@1.8em{%
		        \hss\@textsuperscript{\normalfont\@thefnmark}}##1}%
	    \if@twocolumn
	      \ifnum \col@number=\@ne
		\@maketitle
	      \else
		\twocolumn[\@maketitle]%
	      \fi
	    \else
	      \newpage
	      \global\@topnum\z@   % Prevents figures from going at top of page.
	      \@maketitle
	    \fi
	    \thispagestyle{plain}\@thanks
	  \endgroup
	  \setcounter{footnote}{0}%
	  \global\let\thanks\relax
	  \global\let\maketitle\relax
	  \global\let\@maketitle\relax
	  \global\let\@thanks\@empty
	  \global\let\@author\@empty
	  \global\let\@date\@empty
	  \global\let\@title\@empty
	  \global\let\title\relax
	  \global\let\author\relax
	  \global\let\date\relax
	  \global\let\and\relax
	}
	\def\@maketitle{%
	  \newpage
	  \null
	  \vskip 2em%
	  \begin{center}%
	  \let \footnote \thanks
	    {\LARGE \@title \par}%
	    \vskip 1.5em%
	    {\large
	      \lineskip .5em%
	      \begin{tabular}[t]{c}%
		\@author
	      \end{tabular}\par}%
	    \vskip 1em%
	    {\large \@date}%
	  \end{center}%
	  \par
	  \vskip 1.5em}
	\fi
%% ] <- взято из article.cls

%% Ниже не раз пригодится отступ в одну строку. Предполагаю, это должен (может?) быть он
\def\ls@sto{1.5ex}% Возможно, хороший тон -- сделать этот параметр растяжимым: \@plus .2ex

%%%%%%% 7.4 Деление текста %%%%%%%
%%%%% Структурные элементы %%%%%
\newcommand\struct{%
   \stepcounter{struct}
%>> Каждый структурный элемент текстового документа начинают с новой страницы.
   \newpage%
   \@struct%
}

\def\@struct#1{%
%>> 6.4.1 Содержание текстового документа включает заголовки структурных элементов... Заголовки записывают строчными буквами, с первой прописной.
    \addcontentsline{toc}{struct}{#1}%
%>> Заголовки структурных элементов «РЕФЕРАТ», «СОДЕРЖАНИЕ», «ВВЕДЕНИЕ», «ЗАКЛЮЧЕНИЕ», «СПИСОК СОКРАЩЕНИЙ», «СПИСОК ИСПОЛЬЗОВАННЫХ ИСТОЧНИКОВ», «ПРИЛОЖЕНИЕ» располагают посередине строки и печатают прописными буквами полужирным шрифтом.
    {\centering% Окружерние center добавло бы лишние вертикальные отступы 
       \interlinepenalty \@M% запрет переносить на новую строку = 10000
       \normalfont\bfseries\MakeUppercase {#1}
     \par} 
    \nobreak% Запрет разрыва страницы или строки
%>> Заголовки отделяют от текста интервалом в одну строку, не подчеркивают и не нумеруют.
    \vskip \ls@sto
    \@afterheading % во избежание разрыва страницы сразу после заголовка
}

%>> 7.4.1 Текст основной части документа делят на разделы, подразделы. При необходимости разделы или подразделы разбивают на пункты и подпункты. При делении текста на пункты и подпункты необходимо, чтобы каждый пункт (подпункт) содержал законченную информацию.
\setcounter{secnumdepth}{4} % Нумеруются все элементы вплоть до подпунктов (level = 4)
\newcounter {struct}

%>> 7.4.2 Разделы, подразделы, пункты и подпункты нумеруют арабскими цифрами 
%>> и печатают с абзацного отступа.
%>> Разделы нумеруют в пределах основной части документа.
\newcounter {section}[struct] % Раздел
\renewcommand\thesection {\@arabic\c@section}

%>> Подразделы нумеруют в пределах каждого раздела. 
\newcounter {subsection}[section] % Подраздел
%>> Номер подраздела должен состоять из номера раздела и подраздела, отделенных точкой.
\renewcommand\thesubsection{\thesection.\@arabic\c@subsection}

%>> Пункты нумеруют в пределах каждого подраздела.
\newcounter {paragraph}[subsection] % Пункт
\renewcommand\theparagraph{
%>> Если раздел не имеет подраздела, то номер пункта в нем должен состоять из номера раздела и пункта, отделенных точкой.
	\ifnum \c@subsection=\z@
	  \thesection.\@arabic\c@paragraph
	\else
%>> Номер пункта должен состоять из номеров раздела, подраздела и пункта, отделенных точками.
	  \thesubsection.\@arabic\c@paragraph
	\fi
	}
%>> Пункты, при необходимости, делят на подпункты, которые должны иметь порядковую нумерацию в пределах каждого пункта.
\newcounter {subparagraph}[paragraph] % Подпункт
\renewcommand\thesubparagraph {\theparagraph.\@arabic\c@subparagraph}

%>> 7.5.1 Разделы и подразделы основной части документа должны иметь заголовки.
%>> 7.5.3 Заголовок печатают после номера раздела (подраздела или пункта) с прописной буквы полужирным шрифтом без точки в конце, не подчеркивая. Переносы слов в заголовке не допускаются {в sfu.sty запрещены во всём документе}. Если заголовок состоит из двух предложений, их отделяют точкой.
%>> Заголовки отделяют от текста интервалом в одну строку.
%% \@startsection {NAME}{LEVEL}{INDENT}{BEFORESKIP:
%% positive: vertical length before the heading.
%% negative: first paragraph after -- no indent, abs() of the length is inserted before the heading.
%% }{AFTERSKIP:
%% positive: vertical length after the heading.
%% negative: run-in heading, abs() -- horizontal space between the heading and the next word of the paragraph.
%% }{STYLE}
%% Если бы в СТО регламентировалось расстояние между номером элемента и заголовком, пришлось бы, похоже, лезть в latex.ltx
\newcommand\section{\@startsection {section}{1}{\parindent}% \parindent взят из соображений здравого смысла
                                   {\ls@sto}% Взято равным AFTERSKIP из соображений здравого смысла. Было 3.25ex\@plus -1ex \@minus -.2ex
                                   {\ls@sto}% Думаю, это и есть одна строка
                                   {\normalfont\normalsize\bfseries}}

\newcommand\subsection{\@startsection{subsection}{2}{\parindent}%
                                     {\ls@sto}%
                                     {\ls@sto}%
                                     {\normalfont\normalsize\bfseries}}
%>> Заголовки пунктов приводят, если в подразделе содержится два и более пункта, разделенных на подпункты {эту проверку LaTeX/sfu.sty делать не будет}.
\newcommand\paragraph{\@startsection{paragraph}{3}{\parindent}%
                                     {\ls@sto}%
                                     {\ls@sto}%
                                     {\normalfont\normalsize\bfseries}}

\newcommand\subparagraph{\@startsection{subparagraph}{4}{\parindent}%
                                     {\ls@sto}%
                                     {\ls@sto}%
                                     {\normalfont\normalsize\bfseries}}
%% Взято из article.cls -> [
	\if@twocolumn
	  \setlength\leftmargini  {2em}
	\else
	  \setlength\leftmargini  {2.5em}
	\fi
	\leftmargin  \leftmargini
	\setlength\leftmarginii  {2.2em}
	\setlength\leftmarginiii {1.87em}
	\setlength\leftmarginiv  {1.7em}
	\if@twocolumn
	  \setlength\leftmarginv  {.5em}
	  \setlength\leftmarginvi {.5em}
	\else
	  \setlength\leftmarginv  {1em}
	  \setlength\leftmarginvi {1em}
	\fi
	\setlength  \labelsep  {.5em}
	\setlength  \labelwidth{\leftmargini}
	\addtolength\labelwidth{-\labelsep}
	\@beginparpenalty -\@lowpenalty
	\@endparpenalty   -\@lowpenalty
	\@itempenalty     -\@lowpenalty
	\renewcommand\theenumi{\@arabic\c@enumi}
	\renewcommand\theenumii{\@alph\c@enumii}
	\renewcommand\theenumiii{\@roman\c@enumiii}
	\renewcommand\theenumiv{\@Alph\c@enumiv}
	\newcommand\labelenumi{\theenumi.}
	\newcommand\labelenumii{(\theenumii)}
	\newcommand\labelenumiii{\theenumiii.}
	\newcommand\labelenumiv{\theenumiv.}
	\renewcommand\p@enumii{\theenumi}
	\renewcommand\p@enumiii{\theenumi(\theenumii)}
	\renewcommand\p@enumiv{\p@enumiii\theenumiii}
	\newcommand\labelitemi{\textbullet}
	\newcommand\labelitemii{\normalfont\bfseries \textendash}
	\newcommand\labelitemiii{\textasteriskcentered}
	\newcommand\labelitemiv{\textperiodcentered}
	\newenvironment{description}
		       {\list{}{\labelwidth\z@ \itemindent-\leftmargin
		                \let\makelabel\descriptionlabel}}
		       {\endlist}
	\newcommand*\descriptionlabel[1]{\hspace\labelsep
		                        \normalfont\bfseries #1}
	\if@titlepage
	  \newenvironment{abstract}{%
	      \titlepage
	      \null\vfil
	      \@beginparpenalty\@lowpenalty
	      \begin{center}%
		\bfseries \abstractname
		\@endparpenalty\@M
	      \end{center}}%
	     {\par\vfil\null\endtitlepage}
	\else
	  \newenvironment{abstract}{%
	      \if@twocolumn
		\section*{\abstractname}%
	      \else
		\small
		\begin{center}%
		  {\bfseries \abstractname\vspace{-.5em}\vspace{\z@}}%
		\end{center}%
		\quotation
	      \fi}
	      {\if@twocolumn\else\endquotation\fi}
	\fi
	\newenvironment{verse}
		       {\let\\\@centercr
		        \list{}{\itemsep      \z@
		                \itemindent   -1.5em%
		                \listparindent\itemindent
		                \rightmargin  \leftmargin
		                \advance\leftmargin 1.5em}%
		        \item\relax}
		       {\endlist}
	\newenvironment{quotation}
		       {\list{}{\listparindent 1.5em%
		                \itemindent    \listparindent
		                \rightmargin   \leftmargin
		                \parsep        \z@ \@plus\p@}%
		        \item\relax}
		       {\endlist}
	\newenvironment{quote}
		       {\list{}{\rightmargin\leftmargin}%
		        \item\relax}
		       {\endlist}
	\if@compatibility
	\newenvironment{titlepage}
	    {%
	      \if@twocolumn
		\@restonecoltrue\onecolumn
	      \else
		\@restonecolfalse\newpage
	      \fi
	      \thispagestyle{empty}%
	      \setcounter{page}\z@
	    }%
	    {\if@restonecol\twocolumn \else \newpage \fi
	    }
	\else
	\newenvironment{titlepage}
	    {%
	      \if@twocolumn
		\@restonecoltrue\onecolumn
	      \else
		\@restonecolfalse\newpage
	      \fi
	      \thispagestyle{empty}%
	      \setcounter{page}\@ne
	    }%
	    {\if@restonecol\twocolumn \else \newpage \fi
	     \if@twoside\else
		\setcounter{page}\@ne
	     \fi
	    }
	\fi
%% ] <- Взято из article.cls

\newcommand\appendix{\par
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \gdef\thesection{\@Alph\c@section}}
\setlength\arraycolsep{5\p@}
\setlength\tabcolsep{6\p@}
\setlength\arrayrulewidth{.4\p@}
\setlength\doublerulesep{2\p@}
\setlength\tabbingsep{\labelsep}
\skip\@mpfootins = \skip\footins
\setlength\fboxsep{3\p@}
\setlength\fboxrule{.4\p@}
\renewcommand \theequation {\@arabic\c@equation}
\newcounter{figure}
\renewcommand \thefigure {\@arabic\c@figure}
\def\fps@figure{htbp}% Указывают, куда можно, а не куда следует
\def\ftype@figure{1}
\def\ext@figure{lof}
\def\fnum@figure{\figurename\nobreakspace\thefigure}
\newenvironment{figure}
               {\@float{figure}}
               {\end@float}
\newenvironment{figure*}
               {\@dblfloat{figure}}
               {\end@dblfloat}
\newcounter{table}
\renewcommand\thetable{\@arabic\c@table}
\def\fps@table{htbp}
\def\ftype@table{2}
\def\ext@table{lot}
\def\fnum@table{\tablename\nobreakspace\thetable}
\newenvironment{table}
               {\@float{table}}
               {\end@float}
\newenvironment{table*}
               {\@dblfloat{table}}
               {\end@dblfloat}
\newlength\abovecaptionskip
\newlength\belowcaptionskip
\setlength\abovecaptionskip{10\p@}
\setlength\belowcaptionskip{0\p@}
\long\def\@makecaption#1#2{%
  \vskip\abovecaptionskip
  \sbox\@tempboxa{#1: #2}%
  \ifdim \wd\@tempboxa >\hsize
    #1: #2\par
  \else
    \global \@minipagefalse
    \hb@xt@\hsize{\hfil\box\@tempboxa\hfil}%
  \fi
  \vskip\belowcaptionskip}

%% Взято из article.cls -> [
	\DeclareOldFontCommand{\rm}{\normalfont\rmfamily}{\mathrm}
	\DeclareOldFontCommand{\sf}{\normalfont\sffamily}{\mathsf}
	\DeclareOldFontCommand{\tt}{\normalfont\ttfamily}{\mathtt}
	\DeclareOldFontCommand{\bf}{\normalfont\bfseries}{\mathbf}
	\DeclareOldFontCommand{\it}{\normalfont\itshape}{\mathit}
	\DeclareOldFontCommand{\sl}{\normalfont\slshape}{\@nomath\sl}
	\DeclareOldFontCommand{\sc}{\normalfont\scshape}{\@nomath\sc}
	\DeclareRobustCommand*\cal{\@fontswitch\relax\mathcal}
	\DeclareRobustCommand*\mit{\@fontswitch\relax\mathnormal}
%% ] <- Взято из article.cls

%%%%% Оформление оглавления %%%%%
\newcommand\@pnumwidth{1.55em}
\newcommand\@tocrmarg{2.55em}
\newcommand\@dotsep{4.5}
\setcounter{tocdepth}{4}
\newcommand\tableofcontents{%
    \struct{\contentsname% Заменил section на struct
        \@mkboth{%
           \MakeUppercase\contentsname}{\MakeUppercase\contentsname}}%
    \@starttoc{toc}%
%    \addtocounter{page}{1}% Эта команда теперь завершает \maketitle
    }

%% Команды, отвечающая за генерацию записей в оглавлении
%>> 6.4.1 Содержание текстового документа включает заголовки структурных элементов, порядковые номера и заголовки всех разделов (подразделов, пунктов), обозначения и заголовки приложений. При необходимости продолжения записи заголовка раздела (подраздела, пункта) на второй (последующей) строке его начинают на уровне начала этого заголовка на первой строке {так и получается}
%% \@dottedtocline{<level>}{<indent>}{<numwidth>}
%%>> 6.4.3 ... заголовки структурных элементов, записывают с начала строки.
\newcommand*\l@struct{\@dottedtocline{1}{\z@}{2em}} % Последнее число подобрано на глаз
\newcommand*\l@section{\@dottedtocline{2}{\z@}{2em}}
%>> Номера и заголовки подразделов приводят после абзацного отступа, равного двум знакам {5mm*(level-2)} относительно номеров разделов.
\newcommand*\l@subsection{\@dottedtocline{3}{5mm}{2em}}
\newcommand*\l@paragraph{\@dottedtocline{4}{10mm}{2.7em}}
\newcommand*\l@subparagraph{\@dottedtocline{5}{15mm}{5em}}

%% Выброшены команды \listoffigures, \listoftables, \l@table и \l@figure. За ненадобностью

%% Взято из article.cls -> [
	\newdimen\bibindent
	\setlength\bibindent{1.5em}
	\newenvironment{thebibliography}[1]
	     {\struct{\refname}% Заменил section на struct
	      \@mkboth{\MakeUppercase\refname}{\MakeUppercase\refname}%
	      \list{\@biblabel{\@arabic\c@enumiv}}%
		   {\settowidth\labelwidth{\@biblabel{#1}}%
		    \leftmargin\labelwidth
		    \advance\leftmargin\labelsep
		    \@openbib@code
		    \usecounter{enumiv}%
		    \let\p@enumiv\@empty
		    \renewcommand\theenumiv{\@arabic\c@enumiv}}%
	      \sloppy
	      \clubpenalty4000
	      \@clubpenalty \clubpenalty
	      \widowpenalty4000%
	      \sfcode`\.\@m}
	     {\def\@noitemerr
	       {\@latex@warning{Empty `thebibliography' environment}}%
	      \endlist}
	\newcommand\newblock{\hskip .11em\@plus.33em\@minus.07em}
	\let\@openbib@code\@empty
	\newenvironment{theindex}
		       {\if@twocolumn
		          \@restonecolfalse
		        \else
		          \@restonecoltrue
		        \fi
		        \twocolumn[\section*{\indexname}]%
		        \@mkboth{\MakeUppercase\indexname}%
		                {\MakeUppercase\indexname}%
		        \thispagestyle{plain}\parindent\z@
		        \parskip\z@ \@plus .3\p@\relax
		        \columnseprule \z@
		        \columnsep 35\p@
		        \let\item\@idxitem}
		       {\if@restonecol\onecolumn\else\clearpage\fi}
	\newcommand\@idxitem{\par\hangindent 40\p@}
	\newcommand\subitem{\@idxitem \hspace*{20\p@}}
	\newcommand\subsubitem{\@idxitem \hspace*{30\p@}}
	\newcommand\indexspace{\par \vskip 10\p@ \@plus5\p@ \@minus3\p@\relax}
	\renewcommand\footnoterule{%
	  \kern-3\p@
	  \hrule\@width.4\columnwidth
	  \kern2.6\p@}
	\newcommand\@makefntext[1]{%
	    \parindent 1em%
	    \noindent
	    \hb@xt@1.8em{\hss\@makefnmark}#1}
%% ] <- Взято из article.cls

\newcommand\contentsname{Contents}
\newcommand\listfigurename{List of Figures}
\newcommand\listtablename{List of Tables}
\newcommand\refname{References}
\newcommand\indexname{Index}
\newcommand\figurename{Figure}
\newcommand\tablename{Table}
\newcommand\partname{Part}
\newcommand\appendixname{Appendix}
\newcommand\abstractname{Abstract}
\def\today{\ifcase\month\or
  January\or February\or March\or April\or May\or June\or
  July\or August\or September\or October\or November\or December\fi
  \space\number\day, \number\year}
\setlength\columnsep{10\p@}
\setlength\columnseprule{0\p@}
\pagestyle{plain}
\pagenumbering{arabic}
\if@twoside
\else
  \raggedbottom
\fi
\if@twocolumn
  \twocolumn
  \sloppy
  \flushbottom
\else
  \onecolumn
\fi
\endinput
%%
%% End of file `sfu.cls'.
