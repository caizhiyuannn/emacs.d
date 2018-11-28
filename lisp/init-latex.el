;;     	 _     	       _   _
;;     	/ \  _ 	 _ ___|	|_(_)_ __
;;     / _ \| |	| / __|	__| | '_ \
;;    /	___ \ |_| \__ \	|_| | |	| |
;;   /_/   \_\__,_|___/\__|_|_|	|_|
;;
;;  configure org-mode->latex->pdf export mode  to support chinese
;;


(setq org-latex-create-formula-image-program 'imagemagick)
(setq org-latex-default-class "cn-article")
(setq org-latex-classes
             (quote
              (("ctexart"
	        "\\documentclass[10pt,UTF8,a4paper,zihao=-5]{ctexart}"
	        ("\\section{%s}" . "\\section*{%s}")
	        ("\\subsection{%s}" . "\\subsection*{%s}")
	        ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	        ("\\paragraph{%s}" . "\\paragraph*{%s}")
	        ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))
	       ("ctexrep" "\\documentclass[fontset=none,UTF8,a4paper,zihao=-5]{ctexrep}"
	        ("\\part{%s}" . "\\part*{%s}")
	        ("\\chapter{%s}" . "\\chapter*{%s}")
	        ("\\section{%s}" . "\\section*{%s}")
	        ("\\subsection{%s}" . "\\subsection*{%s}")
	        ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
	       ("ctexbook" "\\documentclass[fontset=none,UTF8,a4paper,zihao=-5]{ctexbook}"
	        ("\\part{%s}" . "\\part*{%s}")
	        ("\\chapter{%s}" . "\\chapter*{%s}")
	        ("\\section{%s}" . "\\section*{%s}")
	        ("\\subsection{%s}" . "\\subsection*{%s}")
	        ("\\subsubsection{%s}" . "\\subsubsection*{%s}"))
	       ("beamer" "\\documentclass[fontset=none,UTF8,a4paper,zihao=-4]{beamer}
\\usepackage[fontset=none,UTF8,a4paper,zihao=-4]{ctex}"
	        ("\\section{%s}" . "\\section*{%s}")
	        ("\\subsection{%s}" . "\\subsection*{%s}")
	        ("\\subsubsection{%s}" . "\\subsubsection*{%s}")))
              ))

(setq org-latex-pdf-process
      (quote
       ("xelatex -interaction nonstopmode -output-directory %o %f" "bibtex %b"
	;; "xelatex -interaction nonstopmode -output-directory %o %f" 
	"xelatex -interaction nonstopmode -output-directory %o %f")
       ))
;; (setq org-latex-packages-alist
;;       (quote
;;        ("
;; \\setmainfont{Times New Roman}
;; \\setCJKmainfont[ItalicFont={STKaiti}]{STSong}
;; " "
;; %%% 默认使用的latex宏包 %%%
;; \\usepackage{tikz}
;; \\usepackage{CJKulem}
;; \\usepackage{graphicx}
;; %%% 设置页面边距 %%%
;; \\usepackage[top=2.00cm, bottom=1.80cm, left=1.80cm, right=1.80cm]{geometry} ")
;;        ))
;; The end of auto generated code.

(add-to-list 'org-latex-classes
             '("cn-article" "\\documentclass[10pt, UTF8, a4paper, zihao=-6]{ctexart}
\\usepackage{graphicx}
\\usepackage{xcolor}
\\usepackage{xeCJK}
\\usepackage{lmodern}
\\usepackage{verbatim}
\\usepackage{fixltx2e}
\\usepackage{longtable}
\\usepackage{float}
%% 链接支持颜色
%% 链接颜色设置为blue
%% url颜色设置为blue
%% menu颜色设置为blue
%% hyperref 包： 拓展超文本协议
\\usepackage[xetex,colorlinks=true,CJKbookmarks=true,linkcolor=blue,urlcolor=blue,menucolor=blue]{hyperref}

\\usepackage{wrapfig}
\\usepackage{tikz}
\\usepackage{soul}
\\usepackage{color}
\\usepackage{textcomp}
\\usepackage{listings}
\\usepackage{geometry}
\\usepackage{algorithm}
\\usepackage{algorithmicx}
\\usepackage{marvosym}
%% 支持wasys字体
\\usepackage{wasysym}  
\\usepackage{latexsym}
%% 灵活的书目支持
\\usepackage{natbib}   

%% 配置页眉页脚包
\\usepackage{fancyhdr}
\\usepackage{fontspec,xunicode,xltxtra}

\\definecolor{code-foreground}{RGB}{244,244,239}
\\definecolor{code-background}{RGB}{58,60,66}
\\definecolor{code-kw}{RGB}{210,132,69}
\\definecolor{code-comment}{RGB}{136,136,136}
\\definecolor{code-string}{RGB}{144,169,89}
\\definecolor{code-doc}{RGB}{101,149,169}
%% \\pagecolor{background}

%% 设置标点处理格式
%% quanjian： 全角符号
%% banjiao： 半角
%% kaiming： 句末点号用全角，其它半角
%% plain： 保持原样
\\punctstyle{plain}

%% 设置页面大小等
%% link：http://www.ctex.org/documents/packages/layout/geometry.htm
%% \\geometry{a4paper, textwidth=6.5in, textheight=10in, marginparsep=7pt, marginparwidth=.6in}
\\geometry{a4paper, left=0.8in, right=0.8in, top=0.8in, bottom=0.8in}

\\setCJKmainfont[BoldFont=PingFangSC-Semibold]{PingFangSC-Regular}
\\setCJKsansfont{PingFangSC-Regular}
\\setCJKmonofont{PingFangSC-Regular}
\\setmainfont{Monaco}
\\setsansfont{Consolas}
\\setmonofont{Monaco}

\\hypersetup{unicode=true}
\\title{}
\\fancyfoot[C]{\\bfseries\\thepage}
\\chead{\\MakeUppercase\\sectionmark}
\\pagestyle{fancy}
\\tolerance=1000
[NO-DEFAULT-PACKAGES]
[NO-PACKAGES]"
               ("\\section{%s}" . "\\section*{%s}")
	       ("\\subsection{%s}" . "\\subsection*{%s}")
	       ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
	       ("\\paragraph{%s}" . "\\paragraph*{%s}")
	       ("\\subparagraph{%s}" . "\\subparagraph*{%s}")) t)



(setq org-latex-listings t)

;; (setq org-src-fontify-natively t)
(setq org-latex-listings-options
      '(
        ("basicstyle" "\\color{code-foreground}\\small")                ; 源代码字体样式
        ("keywordstyle" "\\color{code-kw}\\bfseries\\small")            ; 关键词字体样式
        ("identifierstyle" "\\color{code-doc}\\small")
        ("commentstyle" "\\color{code-comment}\\small\\itshape")        ; 批注样式
        ("stringstyle" "\\color{code-string}\\small")                   ; 字符串样式
        ("showstringspaces" "false")                                    ; 字符串空格显示
        ;;        ("numbers" "left")                                    ; 行号显示
        ;;        ("numberstyle" "\\color{preprocess}")                 ; 行号样式
        ;;        ("stepnumber" "1")                                    ; 行号递增
        ("backgroundcolor" "\\color{code-background}")                  ; 代码框背景色
        ("tabsize" "4")                                                 ; TAB等效空格数
        ("captionpos" "t")                                              ; 标题位置 top or buttom(t|b)
        ("breaklines" "true")                                           ; 自动断行
        ("breakatwhitespace" "true")                                    ; 只在空格分行
        ("showspaces" "false")                                          ; 显示空格
        ("columns" "flexible")                                          ; 列样式
;;      ("frame" "single")                                              ; 代码框：阴影盒
;;      ("frameround" "tttt")                                           ; 代码框： 圆角
        ("framesep" "0pt")
        ("framerule" "8pt")
        ("rulecolor" "\\color{code-background}")
        ("fillcolor" "\\color{white}")
        ("rulesepcolor" "\\color{white}")
        ("framexleftmargin" "10mm")
        ))
(provide 'init-latex)
