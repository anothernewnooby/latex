%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  rad.cls — Clase personalizada para Técnicas Radiológicas
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{rad}[2025/01/01 Clase Tecnicas Radiologicas]

\LoadClass[a4paper,twoside]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[T1]{fontenc}
\RequirePackage[spanish,es-nodecimaldot,es-noindentfirst]{babel}
\RequirePackage{lmodern}
\RequirePackage{microtype}
\RequirePackage{graphicx}
\RequirePackage[most]{tcolorbox}
\usepackage{float}
\usepackage{graphicx}

\RequirePackage[
top=18mm,
bottom=18mm,
left=14mm,
right=14mm,
columnsep=5mm,
headheight=14pt
]{geometry}

\RequirePackage{xcolor}
\definecolor{radblue}{RGB}{0,70,127}
\definecolor{radgray}{RGB}{100,100,100}
\definecolor{radlight}{RGB}{220,232,245}

%----------------------------------------------------------
% Metadata
%----------------------------------------------------------
\newcommand{\@footinfo}{}
\newcommand{\@organization}{}
\newcommand{\@theday}{}
\newcommand{\@doctype}{Técnicas Radiológicas}

\newcommand{\footinfo}[1]{\renewcommand{\@footinfo}{#1}}
\newcommand{\organization}[1]{\renewcommand{\@organization}{#1}}
\newcommand{\theday}[1]{\renewcommand{\@theday}{#1}}
\newcommand{\doctype}[1]{\renewcommand{\@doctype}{#1}}
\newcommand{\leadauthor}[1]{}

%----------------------------------------------------------
% Encabezado y pie — encabezado muestra sección actual
%----------------------------------------------------------
\RequirePackage{fancyhdr}

% Estilo para páginas de contenido (dos columnas)
\fancypagestyle{contenido}{%
	\fancyhf{}
	\fancyhead[LE,RO]{\small\color{radgray}\textit{\@organization}}
	\fancyhead[RE,LO]{\small\color{radgray}\textit{\leftmark}}
	\fancyfoot[C]{\small\color{radgray}\thepage}
	\renewcommand{\headrulewidth}{0.4pt}
	\renewcommand{\footrulewidth}{0pt}
}

% Estilo para carátula e índice (sin encabezado)
\fancypagestyle{portada}{%
	\fancyhf{}
	\fancyfoot[C]{\small\color{radgray}\thepage}
	\renewcommand{\headrulewidth}{0pt}
	\renewcommand{\footrulewidth}{0pt}
}

% Que \section actualice \leftmark
\renewcommand{\sectionmark}[1]{\markboth{#1}{}}

%----------------------------------------------------------
% Carátula
%----------------------------------------------------------
\renewcommand{\maketitle}{%
	\thispagestyle{portada}%
	\begin{center}
		\vspace*{40mm}
		{\color{radblue}\rule{\linewidth}{2pt}}\par
		\vspace{6mm}
		{\Huge\bfseries\color{radblue}\@title}\par
		\vspace{4mm}
		{\large\color{radgray}\@doctype}\par
		\vspace{2mm}
		{\normalsize\color{radgray}\@organization}\par
		\vspace{2mm}
		{\normalsize\color{radgray}\@theday}\par
		\vspace{6mm}
		{\color{radblue}\rule{\linewidth}{2pt}}\par
		\vspace*{\fill}
	\end{center}
	\newpage
}

%----------------------------------------------------------
% Secciones
%----------------------------------------------------------
\RequirePackage{titlesec}

\newcommand{\sectionbox}[1]{%
	\colorbox{radlight}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\strut\bfseries\color{radblue}#1}}%
}

\newcommand{\subsubsectionbox}[1]{%
	\colorbox{black}{\parbox{\dimexpr\linewidth-2\fboxsep\relax}{\strut\bfseries\color{white}#1}}%
}

\titleformat{\section}
[block]
{\normalfont\normalsize}
{}
{0em}
{\sectionbox}

\titleformat{\subsection}
[block]
{\normalfont\small\bfseries\color{radblue}}
{}
{0em}
{}
[\vspace{0.5mm}{\color{radblue}\hrule height 0.4pt}\vspace{1mm}]

\titleformat{\subsubsection}
[block]
{\normalfont\small}
{}
{0em}
{\subsubsectionbox}

\titleformat{\paragraph}
[runin]
{\normalfont\small\bfseries}
{}
{0em}
{}[:\space]

\titlespacing{\section}{0pt}{6pt}{3pt}
\titlespacing{\subsection}{0pt}{5pt}{2pt}
\titlespacing{\subsubsection}{0pt}{4pt}{2pt}
\titlespacing{\paragraph}{0pt}{2pt}{4pt}

%----------------------------------------------------------
% Listas compactas
%----------------------------------------------------------
\RequirePackage{enumitem}
\setlist[itemize]{
	leftmargin=*,
	topsep=1pt,
	itemsep=0pt,
	parsep=0pt
}

\setlength{\parskip}{2pt}
\setlength{\parindent}{0pt}

\endinput