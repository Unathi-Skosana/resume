\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{edelgas-resume}[2016/02/14 Edelgas Résumé Class]
\LoadClass[8pt]{article}

% Standards
\RequirePackage{xunicode}
\RequirePackage[top=1.5in, bottom=1.25in, left=1.5in, right=1.5in]{geometry}
\RequirePackage{xltxtra}
\RequirePackage{fontspec}
\RequirePackage{ifmtarg} 
\RequirePackage{csquotes}
\RequirePackage{listings}
\RequirePackage{enumitem}

% Footer
\RequirePackage{lastpage}
\RequirePackage{fancyhdr}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}
\fancyfoot[C]{
	\sffamily\addfontfeature{LetterSpace=20}\selectfont\MakeUppercase\foot
	}

% Name Section
\DeclareTextFontCommand{\namefont}{\sffamily\addfontfeature{LetterSpace=20}\fontsize{10}{20}\selectfont}
\newcommand*{\namehead}{
	\centering\namefont{
		\MakeUppercase\name
        }
    \par
	}

% Address Section
\DeclareTextFontCommand{\addressfont}{\centering\sffamily\addfontfeature{LetterSpace=20}\fontsize{6}{10}\selectfont}
\newenvironment*{address}[3]{
	\addressfont{#1} %see above
	\par
	\vspace{0.3em}
	\addressfont{#2 \hspace{0.25em}|\hspace{0.25em} #3}
	\par
	\vspace{1.25em}
}

% Section Headings
\DeclareTextFontCommand{\headingfont}{\sffamily\bfseries\addfontfeature{LetterSpace=5}\fontsize{6}{10}\selectfont} 
\newenvironment*{sectionheading}[1]{
	\vspace{-0.75em}
	\raggedright\hrulefill\par
	\vspace{-0.25em}
	\headingfont{\textbf{\MakeUppercase{#1}}}
	\vspace{0.75em}
	\newline\par
}

% Company Name, Location, Dates
\makeatletter
	\newenvironment*{organization}[3]{
        \fontsize{8}{10}\selectfont
		\vspace*{-0.75em}
		\raggedright
		{#1{\@ifmtarg{#2}{}{,}}} 
		#2
		\hfill {#3}
		\par
		\vspace{0.5em}
	}
\makeatother

% Position and responsibilites
\makeatletter
	\newenvironment*{position}[2]{
		\vspace{0em}
		{\@ifmtarg{#1}{\empty\vspace*{-0.5em}}{\itshape #1}}
		{\@ifmtarg{#2}{\empty}{#2}}
		\begin{itemize}[leftmargin=*,labelsep=1.5em,itemsep=0em,label=\raisebox{0.2em}{\tiny$\bullet$}]
		\vspace{-0.25em}
	}
	{
		\end{itemize}
		\vspace*{1.25em}
	}
\makeatother
