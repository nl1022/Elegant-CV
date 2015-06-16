\NeedsTeXFormat{LaTeX2e}
\ProvidesPackage{Elegant-CV}[2015/01/17 Elegant CV]
\LoadClass[10pt,a4paper]{article}

\RequirePackage[utf8]{inputenc}
\RequirePackage[left=2.5cm,right=2.5cm,top=2cm,bottom=2cm]{geometry}
\RequirePackage{graphicx}
\RequirePackage{xcolor}
\RequirePackage{ifthen}
\RequirePackage{titlesec}   
\RequirePackage{marvosym} 	% for phone and mail symbol
\RequirePackage{ifsym} 		% for house symbol


\pagestyle{empty}
\setlength{\parindent}{0pt}
\definecolor{color2}{rgb}{0.4,0.4,0.4}% dark grey
% \renewcommand{\arraystretch}{1} % táblázat sorai közötti távolság


\titleformat{\section}   
	{\Large\scshape\raggedright}                 
	{}
	{0em}                  
	{}                          
	[\titlerule]
  
\titleformat{\subsection}
	{\large\scshape\raggedright}
	{}
	{0em}
	{}

	

\newcommand*{\setFirstName}[1]{\newcommand*\FirstName{#1}}
\newcommand*{\setLastName}[1]{\newcommand*\LastName{#1}}

\newcommand{\makeHead}
{
	\begin{minipage}[b]{0.99\textwidth}
		\small
		\Mobilefone\hspace{0.5em}\textcolor{color2}{+972-2-6585781}
		\hfill
		\Letter\hspace{0.5em}\textcolor{color2}{first.last@mail.com}
		\hfill
		\textifsymbol{18}\hspace{0.5em}\textcolor{color2}{Address}
	\end{minipage}
	\vspace{1.5em}

	\begin{minipage}[b]{0.7\textwidth}
		\vfill
		{\Huge\bf \FirstName\ \LastName}
		\vspace{2mm}\\
		{\Large\it\textcolor{color2}{Curriculum Vitae}} \vspace{2em}\\
		\vfill
	\end{minipage}
	\hspace{0.5cm}
	\begin{minipage}[b]{0.2\textwidth}
		\framebox{\includegraphics[width=\textwidth]{photo.jpg}}
	\end{minipage}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENVIRONMENT Language Competences, Skills and Personal Data
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newenvironment{PersonalData}
{
	\section{Personal Data}
	\begin{tabular}{r l}
}
{
	\end{tabular}
}

\newenvironment{LanguageCompetences}
{
	\section{Language Competences}
	\begin{tabular}{r l}
}
{
	\end{tabular}
}

\newenvironment{Skills}
{
	\section{Skills}
	\begin{tabular}{r l}
}
{
	\end{tabular}
}

\newcommand{\addNewData}[2]
{
	{\bf #1} & #2 \\
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENVIRONMENT Professional Experiences
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{ProfessionalExperiences}
	{\section{Professional Experiences}}
	{}

\newcommand{\addExperience}[5]
{
\vspace{0.8em}
\begin{tabular}{p{0.65\textwidth} p{0.3\textwidth}}
	{\bf\large #2}  & \hfill {\bf #1} \vspace{0.1em}\\
    {\it #3}        & \hfill {\it #4}  \vspace{0.3em} \\
    \multicolumn{2}{p{0.95\textwidth}}{{#5}} \\
\end{tabular} 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENVIRONMENT Education
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{Education}
	{\section{Education}}
	{}


%% ORDERING BY DEGREE

\newcommand{\addDegree}[6]
{
\vspace{0.8em}
\begin{tabular}{p{0.65\textwidth} p{0.3\textwidth}}
	{\bf\large #2}  & \hfill {\bf #1} \vspace{0.1em}\\
    {\it #3}        & \hfill {\it #4}  \vspace{0.3em} \\
    \multicolumn{2}{p{0.95\textwidth}}{{Supervisor: #5}} \\
    \multicolumn{2}{p{0.95\textwidth}}{{Thesis: #6}} \\
\end{tabular}
}


%% ORDERING BY UNIVERSITIES

% Environment School
%
%	param #1: time duration {from--to} 
%   param #2: name of the university {name}
%	param #3: location {city, country}
%

%\newenvironment{School}[3]
%	{ \vspace{0.5em}
%	  {\bf\large #2} \hfill {\bf #1} \vspace{0.1em} \\
%	  {\it #3} \\
%	}
%	{}

% Command addDegree
%
%	param #1: year received
%	param #3: degree name
%	param #4: supervisor name
%	param #5: thesis title
%

%\newcommand{\addDegree}[4]
%{
%	\hspace{1em} {\bf #2}  \hfill {#1} \\
%	\hfill \hspace{1em} Supervisor: {#3} \hfill \\
%	\hfill \hspace{1em} Thesis: {#4} \hfill \\
%}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENVIRONMENT Publications
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%


\newenvironment{Publications}
	{\section{Publications} }
	{}

\newenvironment{Articles}
	{
		\subsection{Articles}
		\vspace{-0.5em}
	}
	{}

\newenvironment{Reports}
	{
		\subsection{Reports}
		\vspace{-0.5em}
	}
	{}

\newenvironment{Posters}
	{
		\subsection{Posters}
		\vspace{-0.5em}
	}
	{}

\newenvironment{Presentations}
	{
		\subsection{Presentations}
		\vspace{-0.5em}
	}
	{}


% Command addPublication
%
%	param #1: authors
%	param #2: title
%	param #3: journal
%	param #4: location, date
%	param #5: comment
%

\newcommand{\addPublication}[5]
{
	\vspace{0.5em}
	{#1}. 
	{\it #2}.
	{#3}.
	{#4}.
	\ifthenelse{\equal{#5}{}}
 		{}
    	{(#5)} 
}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENVIRONMENT Honours and Awards
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{HonoursAndAwards}
	{\section{Honours and Awards}}
	{}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%  ENVIRONMENT References
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\newenvironment{References}
	{\section{References}}
	{}

\newcommand{\addReference}[8]
{
\begin{minipage}[t]{0.5\textwidth}
	\vspace{0.5em}
	{\bf #1}{ (#2)} \\
	{\it #3} \vspace{0.3em} \\
	#4 \\
	#5 \vspace{0.3em} \\
	#6 \\
	#7 \\
	#8 \\
\end{minipage}
}