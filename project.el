;; This file was borrowed with minimal revisions from Joel
;; J. Adamson's helpful tutorial found here:
;; http://trashbird1240.wordpress.com/2012/01/17/set-up-a-website-using-emacs-org-mode/

;; To publish: 
;; execute elisp (C-x C-e) 
;; publish (M-x org-publish thewholedamnshow)

(setq org-publish-project-alist
      '(("mysite"
     :base-directory "~/website"
     :base-extension "org"
     :recursive t
     :section-numbers nil
     :table-of-contents nil
     :author nil
     :email nil
     :publishing-directory "/ssh:pon2@gl.umbc.edu:~/www"
     ;:publishing-directory "/ssh:pon2@gl.umbc.edu:/afs/umbc.edu/public/www/compbio/members/pat"
     :auto-sitemap t
     :sitemap-filename "sitemap.org"
     :sitemap-title "Sitemap"
     :auto-preamble t
     :html-preamble "<p>blog header goes here</p>"
     :auto-postamble nil
     :style "<link rel=\"stylesheet\" href=\"worg.css\" type=\"text/css\" />")
    ("imgs"
     :base-directory "~/website/imgs/"
     :base-extension "jpg\\|gif\\|png"
     :publishing-directory "/ssh:pon2@gl.umbc.edu:~/www/imgs"
     :publishing-function org-publish-attachment
     :recursive t)
    ("etc"
     :base-directory "~/website/"
     :base-extension "css\\|bib\\|el"
     :publishing-directory "/ssh:pon2@gl.umbc.edu:~/www"
     :publishing-function org-publish-attachment)
    ("docs"
     :base-directory "~/website/docs/"
     :base-extension "html\\|tex\\|bib"
     :publishing-directory "/ssh:pon2@gl.umbc.edu:~/www/docs"
     :publishing-function org-publish-attachment)
    ("thewholedamnshow" :components ("mysite" "imgs" "etc" "docs"))))