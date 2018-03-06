\NeedsTeXFormat{LaTeX2e}[1994/06/01]

\ProvidesClass{constitution}[Document class for typesetting a constitution]

\LoadClass{report}

\RequirePackage[letterpaper,margin=1in]{geometry}%\usepackage{hyperref}
\RequirePackage{titlesec}
\RequirePackage{titletoc}
\RequirePackage{paralist}
\usepackage[utf8]{inputenc} 
\usepackage[russian]{babel}

%\newcommand{\bylaw}[1]{\part{#1} \setcounter{section}{0}}
%\renewcommand{\partname}{Bylaw}

\titleclass\article{straight}[\part]
\titleformat{\article}[display]{\filcenter\normalfont\bfseries}{Глава \thearticle}{0pt}{\filcenter\normalfont\bfseries}
\titlespacing*{\article}{0mm}{*4}{*2.3}[0mm]
\newcounter{article}
\renewcommand\thearticle{\Roman{article}}

\titlecontents{article}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}


%\makeatletter
%\renewcommand\section{\@startsection
%{section}{1}{0mm}%
%{-\baselineskip}%
%{-0.5\baselineskip}%
%{\normalfont\normalsize\bfseries}}%
%\makeatother
\makeatletter
%\@addtoreset{section}{article}
\makeatother
\titleformat{\section}[runin]{\normalfont\scshape}
{Статья \thesection:}{.5em}{}[\quad]
\titlecontents{section}
[1.5em]
{\bfseries}
{\contentslabel{2.3em}}
{\hspace*{-2.3em}}
{\titlerule*[1pc]{.}\contentspage}

\renewcommand{\thesection}{\arabic{section}} 
\renewcommand{\theenumi}{\arabic{enumi}}
\renewcommand{\theenumii}{\arabic{enumii}}