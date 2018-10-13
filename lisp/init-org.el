(require 'ox-md)

(org-export-define-derived-backend 'jekyllc 'md
  :filters-alist '((:filter-parse-tree . org-jekyll-separate-elements))
  :translate-alist
  '((headline . org-jekyll-headline-offset)
    (inner-template . org-jekyll-inner-template) ;; force body-only
    (src-block . org-jekyll-src-block)
    (table . org-jekyll-table)
    (table-cell . org-jekyll-table-cell)
    (table-row . org-jekyll-table-row)
    (template . org-jekyll-template)) ;; add YAML front matter.
  :options-alist
  '((:jekyll-layout "JEKYLL_LAYOUT" nil org-jekyll-layout)
    (:jekyll-categories "JEKYLL_CATEGORIES" nil org-jekyll-categories)
    (:jekyll-tags "JEKYLL_TAGS" nil org-jekyll-tags)))

(provide 'init-org)
