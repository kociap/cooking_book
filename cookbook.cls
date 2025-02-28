% LaTeX class cookbook
%
% Properties:
% \tocbeforeskip
% \tocafterskip
% \contentsname
%
% Author:
% Piotr Kocia
%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{cookbook}

\LoadClass[12pt]{book}

% PROPERTIES

\def\baseparskip{10pt plus 1pt}

\def\listvpad{0pt}
\def\listparsep{6pt plus 1pt}
\def\listitemsep{0pt}

\def\tocbeforeskip{10pt plus 2pt}
\def\tocafterskip{10pt plus 2pt}
\def\contentsname{Contents}

% GENERAL STYLES
\setlength{\parindent}{0cm}
\setlength{\parskip}{\baseparskip}

% SECTIONS

\def\section{%
  \clearpage %
  \@startsection {section}{1}{\z@}%
    {-3.5ex \@plus -1ex \@minus -.2ex}%
    {2.3ex \@plus.2ex}%
    {\normalfont\Large\bfseries}}

% TABLE OF CONTENTS

\def\tableofcontents{%
  \cleardoublepage
  \pagenumbering{gobble}
  \begingroup
  \setlength{\parskip}{0pt}
  \@makeschapterhead{\contentsname}%
  \@afterheading
  \@starttoc{toc}
  \endgroup
  \cleardoublepage
  \pagenumbering{arabic}
  \setcounter{page}{1}
}

% ENUMERATE AND ITEMIZE

\let\@cookbook@enumerate@original\enumerate
\let\@cookbook@endenumerate@original\endenumerate

\renewenvironment{enumerate}
{%
  \begingroup
  \def\@listi{
    \partopsep 0pt
    \topsep \listvpad
    \parsep \listparsep
    \itemsep \listitemsep
  }
  \def\@listii{
    \partopsep 0pt
    \topsep 0pt
    \parsep \listparsep
    \itemsep \listitemsep
  }
  \def\@listiii{
    \partopsep 0pt
    \topsep 0pt
    \parsep \listparsep
    \itemsep \listitemsep
  }
  \@cookbook@enumerate@original
}
{%
  \@cookbook@endenumerate@original
  \endgroup
}

\let\@cookbook@itemize@original\itemize
\let\@cookbook@enditemize@original\enditemize

\renewenvironment{itemize}
{%
  \begingroup
  \def\@listi{
    \partopsep 0pt
    \topsep \listvpad
    \parsep \listparsep
    \itemsep \listitemsep
  }
  \def\@listii{
    \partopsep 0pt
    \topsep 0pt
    \parsep \listparsep
    \itemsep \listitemsep
  }
  \def\@listiii{
    \partopsep 0pt
    \topsep 0pt
    \parsep \listparsep
    \itemsep \listitemsep
  }
  \@cookbook@itemize@original
}
{%
  \@cookbook@enditemize@original
  \endgroup
}
