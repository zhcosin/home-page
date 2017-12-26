(require 'ox-publish)

(setq org-publish-project-alist
      '(
         ("org-files"
          :base-directory "~/zhcosin-home-page/org/"
          :base-extension "org"
          :publishing-directory "~/zhcosin-home-page/html/"
          :recursive t
          :publishing-function org-html-publish-to-html
          :headline-levels 4
          :auto-preamble t)   
         ("resource-files"
          :base-directory "~/zhcosin-home-page/org/"
          :base-extension "css\\|js\\|png\\|jpg\\|jpeg\\|gif\\|pdf\\|mp3\\|ogg\\|swf"
          :publishing-directory "~/zhcosin-home-page/html/"
          :recursive t
          :publishing-function org-publish-attachment) 
         ("home-page"
          :components ("org-files" "resource-files"))))
  
