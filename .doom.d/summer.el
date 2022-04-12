(require 'autothemer)

(autothemer-deftheme
 summer "A theme to set the mood for Halloween"

 ((((class color) (min-colors #xFFFFFF))) ;; We're only concerned with graphical Emacs

  ;; Define our color palette
  (summer-red            "#CF3746")
  (summer-white          "#D8E2E1")
  (summer-orange         "#DF7C2C")
  (summer-lime           "#41A367")
  (summer-purple         "#AD4ED2")
  (summer-green          "#41A36F")
  (summer-sky            "#32B5C7")
  (summer-blue           "#277AB6")
  (summer-pas-red        "#D95473")
  (summer-pas-orange     "#E6A168")
  (summer-pas-yellow     "#E7CA62")
  (summer-pas-lime       "#B6DA74")
  (summer-pas-green      "#78D4A3")
  (summer-pas-sky        "#65CEDC")
  (summer-pas-purple     "#BC82D3")
  (summer-pas-blue       "#64A8D8")
  (summer-pas-brown      "#AA9277")
  (summer-neu-darker     "#1D1D1D")
  (summer-neu-dark       "#292A2B")
  (summer-neu-gray       "#626861")
  (summer-neu-light_gray "#AEB7B6"))

 ;; Customize faces
 ((default                   (:foreground summer-neu-light_gray :background summer-neu-dark))
  (cursor                    (:background summer-white))
  (region                    (:background summer-neu-light_gray))
  (mode-line                 (:background summer-purple))
  (font-lock-keyword-face    (:foreground summer-pas-red))
  (font-lock-constant-face   (:foreground summer-blue))
  (font-lock-string-face     (:foreground summer-pas-green))
  (font-lock-builtin-face    (:foreground summer-pas-orange))

  (org-level-1               (:foreground summer-orange))))

(provide-theme 'summer)
