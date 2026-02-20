% % !Mode:: "TeX:UTF-8"
\NeedsTeXFormat{LaTeX2e}

\ProvidesClass{warming}

\LoadClass[twoside]{report}

\RequirePackage{ctex}

\setlength{\parskip}{0.1cm}
\renewcommand{\baselinestretch}{1.25}%行距 

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 文章标题,章节标题设置和作者信息
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{titlesec}
\RequirePackage{titletoc}

%重新定义section计数器的显示，不根据chapter显示
\renewcommand\thesection{\arabic{section}}

\titleformat{\chapter}%chapter用于展示标题，title命令修改格式比较麻烦，就用chapter来展示文章标题了，所以不要maketitle
{\vspace{-75pt}\centering\bfseries\huge} %这里vspace调整标题与页顶距离，标准设定太宽了
{}
{0em}
{}
[\vspace{-35pt}]   %这里vspace调整标题与下面内容的距离

\newcommand\myfootnote[1]{% 定义无编号脚注用于展示作者信息和收稿信息
\begingroup 
\renewcommand\thefootnote{}\footnote{#1}
\addtocounter{footnote}{-1}
\endgroup
}
\newcommand{\name}[4]%name命令用于展示作者，脚注作者信息和收稿信息
{
	\begin{center}
		\kaishu\large
		{#1}\myfootnote{作者信息: #2}\myfootnote{稿件信息: #3} %依次为作者 作者信息 收稿修改日期
	\end{center}
}

\titleformat{\section}[block] %用于section的显示
{\vspace{-10pt}\Large\bf\color{black!85}}
{
	\hspace{-0.3em}\colorbox{black!85}
	{
    	\parbox[c][20pt][c]{15pt}{\centering\textcolor{white}{\Large\bf\rmfamily\thesection}}
	}
}
{0em}%标号与文字距离
{}
[]

%\titlespacing{\section}{0pt}{2pt}{6pt}

\titlespacing{\subsection}{0pt}{-4pt}{0pt}
\titlespacing{\subsubsection}{0pt}{-4pt}{0pt}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% 常用宏包
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{amsfonts}
\RequirePackage[namelimits]{amsmath}
\RequirePackage{amssymb}
\RequirePackage{amsthm}
\RequirePackage{thmtools}
\RequirePackage{changepage}
\RequirePackage{graphicx}
\RequirePackage[title]{appendix}
\RequirePackage[ruled]{algorithm2e}
\RequirePackage{bm}
\RequirePackage{newtxmath}
\RequirePackage{float}
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%允许公式换页
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\allowdisplaybreaks

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%页面设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{geometry}
\geometry{
	paperwidth=213.02mm,
	paperheight=291mm,
	centering,
	top=30mm, 
	bottom=30mm,
	left=20mm,
	right=20mm
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%色彩
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{xcolor}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%链接设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{hyperref}
\RequirePackage{url}
\hypersetup{urlcolor=black,citecolor=black,colorlinks=true,linkcolor=black}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%页眉页脚设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{fancyhdr}
\pagestyle{fancy}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%用于插入文字环绕的图片
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{wrapfig}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%tikz设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tikz}
\RequirePackage{tikz-cd}
\RequirePackage{pgfplots}
\usetikzlibrary{arrows,positioning,calc,fadings,shapes,decorations.markings}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%减小itemize enumerate description环境item项的间距，节约空间
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[shortlabels]{enumitem}
\setlist{parsep=-0.3em, topsep=0em,leftmargin=2em}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%调整参考文献格式 其中\bib与参考文献内容要用{}括起来，避免\small\linespread{1.05}\selectfont命令影响后续文章内容
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage[sectionbib]{chapterbib}
\RequirePackage[sectionbib,numbers]{natbib}%使参考文献变成一个section
\setlength{\bibsep}{0.1em}%减小每条参考文献之间的间距
\renewcommand{\bibfont}{\small\selectfont\setlength{\parskip}{-0.3cm}\setlength{\baselineskip}{0.1em}}%设置参考文献字体大小,参考文献行间距


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%证明环境
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\renewcommand{\proofname}{\textbf{证明}}
\newenvironment{pf}{\begin{proof}}{\end{proof}}


%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%tcolorbox
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
\RequirePackage{tcolorbox}
%中文摘要
\newtcolorbox{CHabstractbox}
{
	colback=gray!15!white,colframe=black!85,fonttitle=\bfseries,
	title=\large 摘~要
}
\renewenvironment{abstract}{\begin{CHabstractbox}}{\end{CHabstractbox}}

%无标题box
\newtcolorbox{notitlebox}
{
	colback=gray!15!white,colframe=gray!75!black,fonttitle=\bfseries,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%各种环境设置
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%本来想让定理中的itshape字体中的括号保持正体 但是下述代码只可以让一般的itshape字体中的括号保持正体 对定理中的内容无效
\def\addto#1#2{\expandafter\def\expandafter#1\expandafter{#1#2}}
\addto\itshape{\adef({\ifmmode(\else{\rm(}\fi}\adef){\ifmmode)\else{\/\rm)}\fi}}


\newtheoremstyle{warming}
{3pt}
{3pt}
{\itshape}
{}
{\bfseries}
{.}
{.5em}
{}

\theoremstyle{warming}


\endinput

