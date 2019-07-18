(require 'ox-publish)

(setq org-publish-project-alist
      '(
         ("org-files"
          :base-directory "./org/"
          :base-extension "org"
          :publishing-directory "./html/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4
          :auto-preamble t)   
         ("resource-files"
          :base-directory "./org/"
          :base-extension "css\\|js\\|png\\|jpg\\|jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
          :publishing-directory "./html/"
          :recursive t
          :publishing-function org-publish-attachment) 
         ("home-page"
          :components ("org-files" "resource-files"))))
  

(cd "f:/home-page/")
;; 发布工程
;;(org-publish-project "home-page") 
;; 重新发布整个工程
(org-publish-project "home-page" t nil) 
