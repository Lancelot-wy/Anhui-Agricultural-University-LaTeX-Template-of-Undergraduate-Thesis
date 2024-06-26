%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% %% <UTF-8>
%% %% 北航研究生毕业论文模板 - LaTeX 03-07-2020
%% %% 论文样式参考自《研究生手册--二〇一五年八月》
%% %% 基于ctexbook
%% %%
%% %% 初始版本作者:
%% %%   Wei Quanmao (weiqm@buaa.edu.cn)
%% %% 参与修改:
%% %%   Qiao Junfeng (qiaojunfeng@outlook.com)
%% %%
%% %% Versions:
%% %%   v3.0  WeiQM (03-07-2020)
%% %%   v2.2  WeiQM (11-30-2019)
%% %%   v2.1  QiaoJF, WeiQM (12-19-2018)
%% %%   v2.0  WeiQM, QiaoJF (11-22-2018)
%% %%   v1.3  Wei Quanmao (10-15-2018)
%% %%   v1.2  Wei Quanmao (07-31-2018)
%% %%   v1.1  Wei Quanmao (01-04-2018)
%% %%   v1.0a Wei Quanmao (12-17-2017)
%% %%
%% %% 建议采用等宽字体查看本文档
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

%% 模板标识
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{buaa}[2020/03/07 v3.0 BUAA thesis class]
\typeout{This is LaTeX template buaa. Version 3.0 (based on CTeX) 03-07-2020}

%% 选项
%% 论文类型
\DeclareOption{master}{\gdef\@thesis{master}}             % 学术硕士论文
\DeclareOption{professional}{\gdef\@thesis{professional}} % 专业硕士论文
\DeclareOption{doctor}{\gdef\@thesis{doctor}}             % 博士论文
\DeclareOption{thesis}{\ClassWarning{buaa}{%
  You have not specified the THESIS option. The word thesis should be replaced by one of the following thesis type: master(default), professional, doctor.
}}

%% 密级
\DeclareOption{public}{\gdef\@permission{public}}             % 公开
\DeclareOption{privacy}{\gdef\@permission{privacy}}           % 内部
\DeclareOption{secret}{\gdef\@permission{secret3}}            % 秘密 = 秘密3年
\DeclareOption{secret3}{\gdef\@permission{secret3}}           % 秘密3年
\DeclareOption{secret5}{\gdef\@permission{secret5}}           % 秘密5年
\DeclareOption{secret10}{\gdef\@permission{secret10}}         % 秘密10年
\DeclareOption{secret*}{\gdef\@permission{secret*}}           % 秘密永久
\DeclareOption{classified}{\gdef\@permission{classified5}}    % 机密 = 机密5年
\DeclareOption{classified3}{\gdef\@permission{classified3}}   % 机密3年
\DeclareOption{classified5}{\gdef\@permission{classified5}}   % 机密5年
\DeclareOption{classified10}{\gdef\@permission{classified10}} % 机密10年
\DeclareOption{classified*}{\gdef\@permission{classified*}}   % 机密永久
\DeclareOption{topsecret}{\gdef\@permission{topsecret10}}     % 绝密 = 绝密10年
\DeclareOption{topsecret3}{\gdef\@permission{topsecret3}}     % 绝密3年
\DeclareOption{topsecret5}{\gdef\@permission{topsecret5}}     % 绝密5年
\DeclareOption{topsecret10}{\gdef\@permission{topsecret10}}   % 绝密10年
\DeclareOption{topsecret*}{\gdef\@permission{topsecret*}}     % 绝密永久
\DeclareOption{permission}{\ClassWarning{buaa}{%
  You have not specified the PERMISSION option. The word permission should be replaced by one of the following thesis type: public, privacy, secret, classified, topsecret.
}}

%% 打印设置
\DeclareOption{oneside}{\gdef\@printtype{oneside}} % 单面打印
\DeclareOption{twoside}{\gdef\@printtype{twoside}} % 双面打印
\DeclareOption{printtype}{\ClassWarning{buaa}{%
  You have not specified the PRINTTYPE option. The word printtype should be replaced by one of the following thesis type: oneside, twoside.
}}

%% 系统设置
\DeclareOption{win}{\gdef\@ostype{win}}     % windows
\DeclareOption{linux}{\gdef\@ostype{linux}} % linux
\DeclareOption{max}{\gdef\@ostype{mac}}     % mac
\DeclareOption{ostype}{\ClassWarning{buaa}{%
  You have not specified the OSTYPE option. The word ostype should be replaced by one of the following thesis type: win, linux, mac.
}}

%% 适应首字母大写
\DeclareOption{Master}{\gdef\@thesis{master}}
\DeclareOption{Professional }{\gdef\@thesis{professional }}
\DeclareOption{Doctor}{\gdef\@thesis{doctor}}
\DeclareOption{Public}{\gdef\@permission{public}}
\DeclareOption{Privacy}{\gdef\@permission{privacy}}
\DeclareOption{Secret}{\gdef\@permission{secret3}}
\DeclareOption{Secret3}{\gdef\@permission{secret3}}
\DeclareOption{Secret5}{\gdef\@permission{secret5}}
\DeclareOption{Secret10}{\gdef\@permission{secret10}}
\DeclareOption{Secret*}{\gdef\@permission{secret*}}
\DeclareOption{Classified}{\gdef\@permission{classified5}}
\DeclareOption{Classified3}{\gdef\@permission{classified3}}
\DeclareOption{Classified5}{\gdef\@permission{classified5}}
\DeclareOption{Classified10}{\gdef\@permission{classified10}}
\DeclareOption{Classified*}{\gdef\@permission{classified*}}
\DeclareOption{TopSecret}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret3}{\gdef\@permission{topsecret3}}
\DeclareOption{TopSecret5}{\gdef\@permission{topsecret5}}
\DeclareOption{TopSecret10}{\gdef\@permission{topsecret10}}
\DeclareOption{TopSecret*}{\gdef\@permission{topsecret*}}
\DeclareOption{Oneside}{\gdef\@printtype{oneside}}
\DeclareOption{Twoside}{\gdef\@printtype{twoside}}
\DeclareOption{Win}{\gdef\@ostype{win}}
\DeclareOption{Linux}{\gdef\@ostype{linux}}
\DeclareOption{Max}{\gdef\@ostype{mac}}

%% 选项传递给ctexbook
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{ctexbook}}

%% 默认选项配置
\ExecuteOptions{master,public,oneside,win,a4paper,sub4section}
\ProcessOptions\relax

%% 引用ctexbook: 小4,1.5倍行距
\LoadClass[UTF8,zihao=-4,linespread=1.7]{ctexbook}%1.5+0.2行间距
\setcounter{secnumdepth}{5}
%% 段间距设0
\setlength{\parskip}{0cm}

%% BUAAThesis字样及版本信息
\usepackage{graphicx}
\def\BUAAThesisVer{v3.0 03-07-2020}
\def\BUAAThesis{%
 B%
 {\fontsize{0.8em}{\baselineskip}\selectfont
 \kern-.12em\lower.5ex\hbox{U}%
 \kern-.46em\raise.47ex\hbox{A}%
 \kern-.12em A%
}
 \kern-.35emT%
 \kern-.22em\lower.5ex\hbox{H}%
 \kern-.08em E%
 \kern-.05em\lower.5ex\hbox{S}%
 \kern-.26em I%
 \kern-.26em\raise.5ex\hbox{\rotatebox[origin=c]{180}{S}}%
}

%% 预声明
\RequirePackage{ifthen}       % ifthenelse/equal/isundefined等判断比较命令
\RequirePackage{etoolbox}     % \AtBeginDocument等宏命令
\RequirePackage{titletoc}     % 目录
\RequirePackage{remreset}     % 计数器设置
\RequirePackage{geometry}     % 设置页边距
\RequirePackage{fancyhdr}     % 设置页眉页脚
\RequirePackage{setspace}     % 设置行间距
\RequirePackage{float}        % 图片
\RequirePackage{graphicx}     % 图片
\RequirePackage{subfigure}    % 图片
\RequirePackage{epstopdf}     % 图片
\RequirePackage{array}        % 列举
\RequirePackage{enumitem}     % 列举
\RequirePackage{booktabs}     % 表格上下粗线
\RequirePackage{longtable}    % 长表格
\RequirePackage{multirow}     % 多行表格
\RequirePackage{caption}      % 标题设置
\RequirePackage{listings}     % 代码环境
\RequirePackage{algorithm2e}  % 算法环境
\RequirePackage{amsmath}      % 数学
\RequirePackage{amssymb}      % 数学符号
\RequirePackage{amsthm}       % 定理
\RequirePackage{hyperref}     % 超链接
\RequirePackage{pifont}       % 画五角星
\RequirePackage{color}        % To provide color for soul
\RequirePackage{soul}         % To highlight text
\RequirePackage[sort&compress]{natbib}              % BibTex
\DeclareGraphicsExtensions{.eps,.ps,.png,.jpg,.bmp} % 声明使用图像格式
\newcommand{\highlight}[1]{\colorbox{yellow}{#1}}   % 高亮注释
\allowdisplaybreaks
\usepackage[OT1]{fontenc} %加粗
\usepackage[g]{esvect} %输出替代 \vec 的矢量符号, 基本命令 \vv, 有指标的矢量用 \vv*
\usepackage{cleveref}

%用 \cref{} 进行文章内部引用时出现的名称
\crefname{equation}{}{}
\crefname{chapter}{Chapter}{Chapters}
\crefname{section}{Section}{Sections}
\crefname{subsection}{Subsection}{Subsections}
\crefname{subsubsection}{Subsubsection}{Subsubsections}
\crefname{figure}{Figure}{Figures}
\crefname{table}{}{}
\crefname{appendix}{Appendix}{Appendices}

% 根据不同系统调整
\ifthenelse{\equal{\@ostype}{win}}{ % win 配置
  \RequirePackage{times}        % Times New Roman字体
}{}
\ifthenelse{\equal{\@ostype}{linux}}{ % linux 配置
  \RequirePackage{newtxtext}    % Times New Roman字体
  \RequirePackage{newtxmath}    % 公式的Times New Roman字体 (!After package amsthm!)
}{}
\ifthenelse{\equal{\@ostype}{mac}}{ % mac 配置
  \RequirePackage{times}        % Times New Roman字体
  \RequirePackage{fontspec}     % 字体设置 (!Only for XeLaTeX!)
}{}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 数学环境
% 数学符号：
\newcommand\eu{\mathrm{e}}
\newcommand\iu{\mathrm{i}}
\newcommand*{\diff}{\mathop{}\!\mathrm{d}}
\DeclareMathOperator*{\argmax}{arg\,max}
\DeclareMathOperator*{\argmin}{arg\,min}

% 数学定理：
% 以下定义数学定理环境默认风格为 buaa
\newtheoremstyle{buaa}%
{0pt}% measure of space to leave above the theorem.
{0pt}% measure of space to leave below the theorem.
{}% name of font to use in the body of the theorem.
{2\ccwd}% measure of space to indent.
{\bfseries}% name of head font.
{.}% punctuation between head and body.
{\ccwd}% space after theorem head; " " = normal interword space
{}% manually specify head (can be left empty, meaning `normal').
\theoremstyle{buaa}

% 定义新的定理
\newcommand{\theoremname}{定理}
\newcommand{\assertionname}{断言}
\newcommand{\axiomname}{公理}
\newcommand{\corollaryname}{推论}
\newcommand{\lemmaname}{引理}
\newcommand{\propositionname}{命题}
\newcommand{\definitionname}{定义}
\newcommand{\examplename}{例}
\newcommand{\remarkname}{注}
\renewcommand{\proofname}{证明}
\renewcommand{\lstlistingname}{代码}
\renewcommand{\algorithmcfname}{算法}

\newtheorem{theorem}                {\theoremname}     [chapter]
\newtheorem{assertion}  [theorem]   {\assertionname}
\newtheorem{axiom}      [theorem]   {\axiomname}
\newtheorem{corollary}  [theorem]   {\corollaryname}
\newtheorem{lemma}      [theorem]   {\lemmaname}
\newtheorem{proposition}[theorem]   {\propositionname}
\newtheorem{definition}             {\definitionname}  [chapter]
\newtheorem{example}                {\examplename}     [chapter]
\newtheorem*{remark}                {\remarkname}

% From MDPI.cls
%\renewcommand{\qed}{\unskip\nobreak\quad\qedsymbol} %% This places the symbol right after the text instead of placing it at the end on the line.
\renewenvironment{proof}[1][\proofname]{\par %% \proofname allows to have "Proof of my theorem"
  \pushQED{\qed}%
  \normalfont \topsep6\p@\@plus6\p@\relax
  \trivlist
  \item[\hskip\labelsep
        \bfseries %% "Proof" is bold
    #1\@addpunct{.}]\ignorespaces %% Period instead of colon
}{%
  \popQED\endtrivlist\@endpefalse
}

% 代码环境
\lstset{
    basicstyle=\small\ttfamily,
    xleftmargin=2pc,
    xrightmargin=2pc,
    frame=single,
    columns=flexible,
    numbers=left,
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 输入
\def\@emptypagewords{} % 空白页留字
\newcommand{\emptypagewords}[1]{\gdef\@emptypagewords{#1}}
\def\@beginright{} % 摘要、目录、第一章右侧页起 on/off
\newcommand{\beginright}[1]{\gdef\@beginright{#1}}
\def\@blindmode{} % 盲评模式 on/off
\newcommand{\blindmode}[1]{\gdef\@blindmode{#1}}

\newcommand{\Title}[2]{\gdef\@titlecn{#1} \gdef\@titleen{#2}}
\newcommand{\Subtitle}[2]{\gdef\@subtitlecn{#1} \gdef\@subtitleen{#2}}
\newcommand{\Department}[1]{\gdef\@department{#1}}
\def\@branch{工学} % 学科大类
\newcommand{\Branch}[1]{\gdef\@branch{#1}}
\newcommand{\Major}[1]{\gdef\@major{#1}}
\newcommand{\Majorsec}[1]{\gdef\@majorsec{#1}}
\newcommand{\Field}[1]{\gdef\@field{#1}}
\newcommand{\Tutor}[3]{\gdef\@tutorcn{#1} \gdef\@tutoren{#2} \gdef\@tutordegree{#3}}
\newcommand{\Cotutor}[3]{%
  \gdef\@cotutorcn{#1}
  \gdef\@cotutoren{#2}
  \gdef\@cotutordegree{#3}}
\newcommand{\Author}[2]{\gdef\@authorcn{#1} \gdef\@authoren{#2}}
\newcommand{\StudentID}[1]{\gdef\@studentid{#1}}

\newcommand{\CLC}[1]{\gdef\@clc{#1}}
\newcommand{\DateEnroll}[3]{%
  \gdef\@dateenrollm{#1}
  \gdef\@dateenrolld{#2}
  \gdef\@dateenrolly{#3}}
\newcommand{\DateGraduate}[3]{%
  \gdef\@dategraduatem{#1}
  \gdef\@dategraduated{#2}
  \gdef\@dategraduatey{#3}}
\newcommand{\DateSubmit}[3]{%
  \gdef\@datesubmitm{#1}
  \gdef\@datesubmitd{#2}
  \gdef\@datesubmity{#3}}
\newcommand{\DateDefence}[3]{%
  \gdef\@datedefencem{#1}
  \gdef\@datedefenced{#2}
  \gdef\@datedefencey{#3}}

\newcommand{\Abstract}[2]{\gdef\@abstrctcn{#1} \gdef\@abstrcten{#2}}
\newcommand{\Keyword}[2]{\gdef\@keywordcn{#1} \gdef\@keyworden{#2}}
\newcommand{\Listfigtab}[1]{\gdef\@listfigtab{#1}} % on/off
\newcommand{\Abbreviations}[1]{\gdef\@abbreviations{#1}}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% CTeX调整
% 半角/缩进/行伸缩设置
\ctexset{%
  punct=quanjiao, % 全角
  autoindent=2,  % 缩进
  linestretch=2, % 行伸缩
}
% 部分标题修改
\ctexset{%
  contentsname={\zihao{-2} \bfseries \heiti 目~~~~录},
  listfigurename={\zihao{-2} \bfseries \heiti 图~清~单},
  listtablename={\zihao{-2} \bfseries \heiti  表~清~单},
}
% 标题样式修改
\ctexset{%
  chapter={%章标题 : 三号加粗宋体居中 单倍行距 段前/段后0.5行 另起新页
    format=\zihao{3} \bfseries \songti \centering \thispagestyle{fancy},
    fixskip=true,
    beforeskip=19.27pt,
    afterskip=22.48pt,
    break=\clearpage,
  },
  section={%节标题 : 四号加粗宋体居左 单倍行距 段前/段后0.5行
    format=\zihao{4} \bfseries \songti \raggedright,
    beforeskip=8.43pt,
    afterskip=11.24pt,
  },
  subsection={%条标题 : 小四号加粗宋体居左 单倍行距 段前/段后0.5行
    format=\zihao{-4} \bfseries \songti \raggedright,
    beforeskip=3.61pt,
    afterskip=3.61pt,
  },
  subsubsection={% 附加4级标题 : 小四号宋体加粗居左
    format=\zihao{-4} \songti \raggedright,
  },
  paragraph={% 附加5级标题 : 小四号宋体居左
    format=\zihao{-4} \songti \raggedright,
  },
  subparagraph={% 附加6级标题 : 小四号宋体居左
    format=\zihao{-4} \songti \raggedright,
  }
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 页面设置
% 设置页面大小
% A4纸页边距均25mm
\geometry{papersize={210mm,297mm}}
\ifthenelse{\equal{\@printtype}{twoside}}{% 双面面
  \geometry{top=25mm,bottom=25mm,inner=25mm,outer=25mm}
}{%
  \ifthenelse{\equal{\@printtype}{oneside}}{% 单面
    \geometry{top=25mm,bottom=25mm,left=25mm,right=25mm}
    \geometry{layouthoffset=5mm}}{}
}

% 设置空白页眉页脚
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0pt}

% 设置目录格式

\titlecontents{chapter}[0pt]{\settowidth{\hangindent}{\thecontentslabel}\heiti\zihao{-4}}
{\thecontentslabel}{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{section}[2em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{-4}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{subsection}[3em]{\settowidth{\hangindent}{\thecontentslabel\ \ }\songti\zihao{5}}
{\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{figure}[0pt]{\settowidth{\hangindent}{图~\thecontentslabel\ \ }\songti\zihao{-4}}
{图~~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

\titlecontents{table}[0pt]{\settowidth{\hangindent}{表~\thecontentslabel\ \ }\songti\zihao{-4}}
{表~~\thecontentslabel\ \ }{}
{\hspace{.25em}\titlerule*[4pt]{$\cdot$}\contentspage}

% 图表环境设置
\let\org@table\table
\let\org@endtable\endtable
\renewenvironment{table}[1][h!]
{\begin{spacing}{1.2} \org@table[#1] \songti\zihao{5}}
{\org@endtable \end{spacing}}

\let\org@longtable\longtable
\let\org@endlongtable\endlongtable
\renewenvironment{longtable}[1][h!]
{\begin{spacing}{1.2} \songti\zihao{5}\org@longtable[#1]}
{\org@endlongtable \end{spacing}}

\@removefromreset{table}{chapter}
\@removefromreset{figure}{chapter}
\renewcommand{\thefigure}{\thechapter{}.\arabic{figure}}
\renewcommand{\thetable}{\thechapter{}.\arabic{table}}
\renewcommand{\p@subfigure}{\thefigure}

\DeclareCaptionFormat{tabfigformat}{\bfseries\songti\zihao{5}{#1~~#3}}
\captionsetup[figure]{
  position=bottom, margin=0mm, format=tabfigformat,
  aboveskip=6pt, belowskip=-15pt, justification=centerlast}
\captionsetup[table]{
  position=top, margin=0mm, format=tabfigformat,
  aboveskip=0pt, belowskip=0pt, justification=centerlast}

%出现在页面中间的浮动对象与上下方文本之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt。
%\setlength{\intextsep}{12pt \@plus2pt \@minus 2pt}

%出现在页面的顶部或底部的浮动对象之间的垂直距离
%缺省为 12pt plus 2pt minus 2pt
%\setlength{\floatsep}{12pt \@plus2pt \@minus2pt}

%出现在页面的顶部或底部的浮动对象与文本之间的垂直距离
% 缺省为 20pt plus 2pt minus 4pt。
%\setlength{\textfloatsep}{20bp \@plus2pt \@minus4pt}

% 列表间接设置
\setlist{
  topsep=0pt, % 列表环境与上文距离
  itemsep=0pt, % 条目间距离
  parsep=\parskip, % 条目内段落距离
  partopsep=0pt % 列表环境与下文距离
}

% 设置参考文献格式
\newcommand\bibstyle@super{\bibpunct{[}{]}{,}{s}{,}{\textsuperscript{,}}}
\newcommand\bibstyle@numbers{\bibpunct{[}{]}{,}{n}{,}{,}}
\newcommand\bibstyle@authoryear{\bibpunct{(}{)}{;}{a}{,}{,}}
\bibpunct{[}{]}{,}{n}{}{}
\setlength{\bibsep}{0pt}
\newcommand{\upcite}[1]{\textsuperscript{\cite{#1}}}

% 设置PDF
\hypersetup{%
  colorlinks=true,
  bookmarksnumbered=true,
  bookmarksopen=true,
  pdffitwindow=true,
  pdfsubject={BUAA thesis},
  pdfcreator={LaTeXed~By~WeiQM}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%% 工具函数
\newcommand{\checkinput}{%检测输入元素
  \ifthenelse{\isundefined{\@titlecn}}{\errmessage{%
    Please set title by 'Title'.}}{}
  \ifthenelse{\isundefined{\@department}}{\errmessage{%
    Please set department by 'Department'.}}{}
  \ifthenelse{\isundefined{\@major}}{\errmessage{%
    Please set major by 'Major'.}}{}
    \ifthenelse{\isundefined{\@majorsec}}{\errmessage{%
    Please set major by 'Majosec'.}}{}
  \ifthenelse{\isundefined{\@field}}{\errmessage{%
    Please set field by 'Field'.}}{}
  \ifthenelse{\isundefined{\@tutorcn}}{\errmessage{%
    Please set tutor name by 'Tutor'.}}{}
  \ifthenelse{\isundefined{\@authorcn}}{\errmessage{%
    Please set author name by 'Author'.}}{}
  \ifthenelse{\isundefined{\@studentid}}{\errmessage{%
    Please set student ID date by 'StudentID'.}}{}
  \ifthenelse{\isundefined{\@dateenrolly}}{\errmessage{%
    Please set enroll date by 'DateEnroll'.}}{}
  \ifthenelse{\isundefined{\@dategraduatey}}{\errmessage{%
    Please set graduate date by 'DateGraduate'.}}{}
  \ifthenelse{\isundefined{\@datesubmity}}{\errmessage{%
    Please set submite date by 'DateSubmit'.}}{}
  \ifthenelse{\isundefined{\@datedefencey}}{\errmessage{%
    Please set defence date by 'DateDefence'.}}{}
  \ifthenelse{\equal{\@beginright}{\empty}}{}{%
    \ifthenelse{\equal{\@beginright}{on} \OR \equal{\@beginright}{off}}{}{
    \errmessage{Please use 'on' of 'off' for beginright.}}
  }
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on} \OR \equal{\@listfigtab}{off}}{}{
    \errmessage{Please use 'on' of 'off' for listfigtab.}}
  }
}
\newcommand{\clearautopage}{%右侧起新页
  \clearpage
  \ifthenelse{\equal{\@printtype}{twoside}}{% 双面
    \ifodd\c@page
    \else
      \hbox{}
      \vspace*{\fill}
      \begin{center}
        {\textcolor[rgb]{0.75,0.75,0.75}{\@emptypagewords}}
      \end{center}
      \vspace{\fill}
      \thispagestyle{empty}
      \newpage
      \if@twocolumn \hbox{} \newpage \fi
    \fi
  }{}
}
\newcommand{\sethyper}{%设置链接引用颜色
  \hypersetup{%
    pdftitle={\@titlecn},
    pdfkeywords={\@keywordcn},
    pdfauthor={\@authorcn}
  }
}
\newcommand{\TranSecretLevel}[1]{%密级翻译
  \ifthenelse{\equal{\@permission}{public}}{\relax}{
  \ifthenelse{\equal{\@permission}{privacy}}{内~~部}{
  \ifthenelse{\equal{\@permission}{secret3}}{秘密~\ding{73}~{\bfseries 3}年}{
  \ifthenelse{\equal{\@permission}{secret5}}{秘密~\ding{73}~{\bfseries 5}年}{
  \ifthenelse{\equal{\@permission}{secret10}}{秘密~\ding{73}~{\bfseries 10}年}{
  \ifthenelse{\equal{\@permission}{secret*}}{秘密~\ding{73}~永久}{
  \ifthenelse{\equal{\@permission}{classified3}}{机密~\ding{73}~{\bfseries 3}年}{
  \ifthenelse{\equal{\@permission}{classified5}}{机密~\ding{73}~{\bfseries 5}年}{
  \ifthenelse{\equal{\@permission}{classified10}}{机密~\ding{73}~{\bfseries 10}年}{
  \ifthenelse{\equal{\@permission}{classified*}}{机密~\ding{73}~永久}{
  \ifthenelse{\equal{\@permission}{topsecret3}}{绝密~\ding{73}~{\bfseries 3}年}{
  \ifthenelse{\equal{\@permission}{topsecret5}}{绝密~\ding{73}~{\bfseries 5}年}{
  \ifthenelse{\equal{\@permission}{topsecret10}}{绝密~\ding{73}~{\bfseries 10}年}{
  \ifthenelse{\equal{\@permission}{topsecret*}}{绝密~\ding{73}~永久}{
  \ifthenelse{\equal{\@permission}{permission*}}{密级~\ding{73}~保密期限}{
  }}}}}}}}}}}}}}}
}
\newcommand{\TranDegree}[1]{%职称翻译
  \frenchspacing
  \ifthenelse{\equal{#1}{教授}}{Prof.}{%
  \ifthenelse{\equal{#1}{副教授}}{Prof.}{%
  \ifthenelse{\equal{#1}{讲师}}{Teacher}{%
  \ifthenelse{\equal{#1}{高工}}{Engineer}{%
  \ifthenelse{\equal{#1}{研究员}}{Researcher}{%
  \ifthenelse{\equal{#1}{副研究员}}{Researcher}{%
  }}}}}}
}
\newcommand{\TranDepartment}[1]{%院系翻译
  \ifthenelse{\equal{#1}{材料科学与工程学院}}{School of Materials Science and Engineering}{%
  \ifthenelse{\equal{#1}{电子信息工程学院}}{School of Electronic and Information Engineering}{%
  \ifthenelse{\equal{#1}{自动化科学与电气工程学院}}{School of Automation Science and Electronic Engineering}{%
  \ifthenelse{\equal{#1}{能源与动力工程学院}}{School of Energy and Power Engineering}{%
  \ifthenelse{\equal{#1}{航空科学与工程学院}}{School of Aeronautic Science and Engineering}{%
  \ifthenelse{\equal{#1}{计算机学院}}{School of Computer Science and Engineering}{%
  \ifthenelse{\equal{#1}{机械工程及自动化学院}}{School of Mechanical Engineering and Automation}{%
  \ifthenelse{\equal{#1}{经济管理学院}}{School of Economics and Management}{%
  \ifthenelse{\equal{#1}{数学与系统科学学院}}{School of Mathematics and Systems Science}{%
  \ifthenelse{\equal{#1}{生物与医学工程学院}}{School of Biological Science and Medical Engineering}{%
  \ifthenelse{\equal{#1}{人文社会科学学院}}{School of Humanities and Social Sciences}{%
  \ifthenelse{\equal{#1}{公共管理学院}}{School of Humanities and Social Sciences}{%
  \ifthenelse{\equal{#1}{人文社会科学学院（公共管理学院）}}{School of Humanities and Social Sciences}{%
  \ifthenelse{\equal{#1}{人文社会科学学院(公共管理学院)}}{School of Humanities and Social Sciences}{%
  \ifthenelse{\equal{#1}{外国语学院}}{School of Foreign Languages}{%
  \ifthenelse{\equal{#1}{交通科学与工程学院}}{School of Transportation Science and Engineering}{%
  \ifthenelse{\equal{#1}{可靠性与系统工程学院}}{School of Reliability and Systems Engineering}{%
  \ifthenelse{\equal{#1}{宇航学院}}{School of Astronautics}{%
  \ifthenelse{\equal{#1}{飞行学院}}{Flight College}{%
  \ifthenelse{\equal{#1}{仪器科学与光电工程学院}}{School of Instrumentation Science and Opto-electronics Engineering}{%
  \ifthenelse{\equal{#1}{北京学院}}{School of Beijing}{%
  \ifthenelse{\equal{#1}{物理科学与核能工程学院}}{School of Physics and Nuclear Energy Engineering}{%
  \ifthenelse{\equal{#1}{法学院}}{School of Law}{%
  \ifthenelse{\equal{#1}{软件学院}}{School of Software}{%
  \ifthenelse{\equal{#1}{继续教育学院}}{College of Continuing Education}{%
  \ifthenelse{\equal{#1}{高等理工学院}}{School of Advance Engineering}{%
  \ifthenelse{\equal{#1}{中法工程师学院}}{Central Pekin}{%
  \ifthenelse{\equal{#1}{国际学院}}{Beihang School}{%
  \ifthenelse{\equal{#1}{新媒体艺术与设计学院}}{School of New Media Art and Design}{%
  \ifthenelse{\equal{#1}{化学学院}}{School of Chemistry}{%
  \ifthenelse{\equal{#1}{马克思主义学院}}{School of Marxism}{%
  \ifthenelse{\equal{#1}{无人系统研究院}}{Unmanned System Institute}{%
  \ifthenelse{\equal{#1}{人文与社会科学高等研究院}}{Institue for Advanced Studies in Humanities and Social Science}{%
  \ifthenelse{\equal{#1}{空间与环境学院}}{School of Space and Environment}{%
  \ifthenelse{\equal{#1}{国际通用工程学院}}{School of General Engineering}{%
  \ifthenelse{\equal{#1}{国际交叉科学研究院}}{International Research Institue for Multidisciplinary Science}{%
  \ifthenelse{\equal{#1}{医工交叉创新研究院}}{Interdisciplinary Innovation Institute for Medicine and Engineering}{%
  \ifthenelse{\equal{#1}{北斗丝路学院}}{School of BeiDou and the Silk Road}{%
  \ifthenelse{\equal{#1}{网络空间安全学院}}{School of Cyberspace Security}{%
  }}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}}
}

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% AfterPreamble = AtBeginDocument
% AtEndPreamble -> AtBeginDocument -> AfterEndPreamble -> AtEndDocument -> AfterEndDocument
\AtBeginDocument{%
  \checkinput
  \sethyper
%图标计数器换章清零
  \counterwithin{figure}{chapter}
  \counterwithin{table}{chapter}
}
\AfterEndPreamble{%
  \makecovercn
  \makecoveren
  \makecoverinner
  \makestatementbuaa

  \fancyfoot[C]{\zihao{5} \uppercase\expandafter{\romannumeral \thepage}}
  \setcounter{page}{1}
  \abstructkeyword
  \makecontextlist
  \denotation

  \renewcommand{\headrulewidth}{0.4pt}
  \renewcommand{\chaptermark}[1]{\markboth{第\chinese{chapter}章~~#1}{}}
  \fancyfoot[C]{\zihao{5} \thepage}
  \fancyhead[CE]{\zihao{-5} \leftmark}
  \ifthenelse{\equal{\@thesis}{master} \OR \equal{\@thesis}{professional}}{%
  \ifthenelse{\equal{\@blindmode}{off}}{
    \fancyhead[CO]{\zihao{-5}  安徽农业大学学士学位论文}
  }{
    \fancyhead[CO]{\zihao{-5}  安徽农业大学硕士学位论文}
  }
      }{}
  \ifthenelse{\equal{\@thesis}{doctor}}{%
      \fancyhead[CO]{\zihao{-5} 安徽农业大学博士学位论文}}{}
  \setcounter{page}{1}
}


%% 制作封面及声明
\newcommand{\makecovercn}{% 中文封面
{\pdfbookmark[0]{中文封面}{makecovercn}

  \vspace{80pt}

  \ifthenelse{\equal{\@blindmode}{off}}{
  \begin{figure}[h]
    \centering
    \includegraphics[width=1\textwidth, height=2in]{pic/ahau_VI_B基础部分_B4-03校徽校名横向组合规范.png}
  \end{figure}
  \vspace{-10pt}
  }{\vspace{20pt}}
  \centering
  
  \vspace{0pt}
  \begin{spacing}{1.2}
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{}
    \zihao{-0} \songti \bfseries \@titlecn
    \ifthenelse{\isundefined{\@subtitlecn}}{\vspace{20pt}}{%
      \\ \vspace{10pt}
      \zihao{1} \@subtitlecn
   }
  \end{spacing}

\begin{table}[!h]
    \centering
    \renewcommand\arraystretch{1.5} % 调整表格行高
    \setlength\tabcolsep{10pt} % 调整表格列间距
    \zihao{4} % 设置字体为四号
    \begin{tabular}{@{}l@{}l@{}}
        \textbf{\heiti 题　　目:} & \underline{\makebox[13cm][c]{基于PID的直升机防坠毁的自动驾驶程序}}  \\ 
        \textbf{\heiti 姓　　名:} & \underline{\makebox[13cm][c]{柯南}}  \\ 
        \textbf{\heiti 学　　号:} & \underline{\makebox[13cm][c]{114514}}  \\ 
        \textbf{\heiti 学　　院:} & \underline{\makebox[13cm][c]{信息与人工智能学院}}  \\ 
        \textbf{\heiti 专　　业:} & \underline{\makebox[13cm][c]{计算机科学与技术}}  \\
        \textbf{\heiti 指导教师:} & \underline{\makebox[13cm][c]{科比}} \\
        \textbf{\heiti 职　　称:} & \underline{\makebox[13cm][c]{教授}} \\
        
    \end{tabular}
\end{table}

\vspace{-0.75cm}



\vspace{4cm}

\begin{table}[!h]
    \renewcommand\arraystretch{1.8} % 调整表格行高
    \setlength\tabcolsep{16pt} % 调整表格列间距
    \centering
    \zihao{4} % 设置字体为四号
    \begin{tabular}{c}
        \textbf{\fontsize{16pt}{\baselineskip}\heiti 2024　年　5　月} \\
    \end{tabular}
\end{table}

  \end{spacing}
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}

\newcommand{\makecoverinner}{% 封面内页


  \end{spacing}
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}
\newcommand{\makestatementbuaa}{% 北航声明
{
  \ifthenelse{\equal{\@blindmode}{off}}{
  \pdfbookmark[0]{独创性声明}{makestatementbuaa}
  \begin{spacing}{1.7}%1.5+0.2
    \vspace{1cm} \par \textbf{\fontsize{18pt}{\baselineskip}\heiti 安徽农业大学本科生毕业论文（设计）原创性声明}
    \vspace{1cm} \par 本人郑重声明：所呈交的毕业论文（设计），是本人在导师的指导下，独立进行研究工作所取得的成果。除文中已经注明引用的内容外，本论文不包含任何其他个人或集体已经发表或撰写过的作品成果。对本文的研究做出重要贡献的个人和集体，均已在文中以明确方式标明。本人完全意识到本声明的法律结果由本人承担。
	\vspace{1cm} \par 论文作者签名：　　　　　　　　　　　日期：　　　　年　　月　　日
	\vspace{6cm} \par \textbf{\fontsize{18pt}{\baselineskip}\heiti  安徽农业大学本科生毕业论文（设计）使用授权声明}
	\vspace{1cm} \par 本学位论文作者完全了解学校有关保留、使用毕业论文（设计）的规定，同意学校保留并向国家有关部门或机构送交论文的复印件和电子版，允许论文被查阅和借阅。本人授权安徽农业大学教务处可以将本毕业论文（设计）的全部或部分内容编入有关数据库进行检索，可以采用影印、缩印或扫描等复制手段保存和汇编毕业论文（设计）。
	\vspace{1cm} \par 论文作者签名：　　　　　　　　　　　导师签名：
    
    \vspace{100pt}

 
  \clearautopage
  }{}
}}







\newcommand{\abstructkeyword}{% 摘要
{\pdfbookmark[0]{中英摘要}{abstructkeyword}

  \begin{spacing}{1.7}%1.5+0.2
    {\zihao{3} \heiti \bfseries \centerline{摘~~~~要}}
    {\zihao{-4} \songti ~\par
      \@abstrctcn \par ~\par
      {\heiti \bfseries 关键词：} \@keywordcn
    }

    \clearpage
    \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}

    {\zihao{3}  \bfseries \centerline{Abstract}}
    {\zihao{-4} ~\par
      \@abstrcten \par ~\par
      {\bfseries Key words:} \@keyworden
    }

  \end{spacing}

  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\makecontextlist}{% 目录
{\pdfbookmark[0]{目录}{makecontextlist}
  \tableofcontents
  \renewcommand\addvspace[1]{}
  \ifthenelse{\isundefined{\@listfigtab}}{}{%
    \ifthenelse{\equal{\@listfigtab}{on}}{%
      \renewcommand{\addvspace}[1]{}
      \clearpage
      \pdfbookmark[0]{图目录}{listoffigures}
      \listoffigures
      \clearpage
      \pdfbookmark[0]{表目录}{listoftables}
      \listoftables
    }{}
  }
  \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
}}
\newcommand{\denotation}{% 缩写定义
{\ifthenelse{\isundefined{\@abbreviations}}{}{%
    \pdfbookmark[0]{主要符号表}{denotation}
    \chapter*{主要符号表}
    %\centering
    %\begin{tabular}{cl}
      \@abbreviations
    %\end{tabular}%
    \ifthenelse{\equal{\@beginright}{off}}{\clearpage}{\clearautopage}
  }
}}


\newcommand{\chaptera}[1]{%无章号但编入目录
  \ctexset{chapter/numbering=false}
  \chapter{#1}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\summary}{%结论
  \ctexset{chapter/numbering=false}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\Bib}[2]{%参考文献
  \bibliographystyle{#1}
  \clearpage
  \phantomsection
  \addcontentsline{toc}{chapter}{参考文献}
  \bibliography{#2}
}
\renewcommand{\appendix}{% 附录
  \ctexset{chapter/numbering=false}
  \chapter{附~~~~录}
  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\achievement}{%学术成果
  \ctexset{chapter/numbering=false}
  \ifthenelse{\equal{\@thesis}{master}}{\chapter{攻读硕士学位期间取得的学术成果}}{
  \ifthenelse{\equal{\@thesis}{professional}}{\chapter{攻读硕士学位期间取得的学术成果}}{
  \ifthenelse{\equal{\@thesis}{doctor}}{\chapter{攻读博士学位期间取得的研究成果}}{
  }}}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\acknowledgments}{%致谢
  \ctexset{chapter/numbering=false}
  \chapter{致~~~~谢}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}
\newcommand{\biography}{%作者简介
  \ctexset{chapter/numbering=false}
  \chapter{作者简介}

  \setcounter{section}{0}%
  \setcounter{subsection}{0}%
  \setcounter{subsubsection}{0}%
  %
  \gdef\thesection{\@Alph\c@section}%
  \gdef\thesubsection{\@Alph\c@section.\@arabic\c@subsection}%
  %

  \renewcommand{\thefigure}{A\arabic{figure}}
  \setcounter{figure}{0}
  \renewcommand{\thetable}{A\arabic{table}}
  \setcounter{table}{0}
  \renewcommand{\theequation}{A\arabic{equation}}
  \setcounter{equation}{0}
}

%% --END--
\endinput
