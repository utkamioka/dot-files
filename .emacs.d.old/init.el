; 言語を日本語にする
(set-language-environment 'Japanese)
; 極力UTF-8とする
(prefer-coding-system 'utf-8)

;; (setq visible-bell t)
;; (setq ring-bell-function (lambda () (message "ding ding!")))

; バックアップを作らない
(setq make-backup-files nil)
(setq auto-save-default nil)

; キーバインド
(global-unset-key "\C-z")                       ; C-zを無効化
(global-set-key "\C-z\C-z" 'suspend-emacs)      ; サスペンド 
(global-set-key "\C-z\C-b" 'buffer-menu)        ; 
(global-set-key "\C-z\C-j" 'goto-line)          ; 

; Emacs-Lisp mode
(add-hook 'emacs-lisp-mode-hook
	  '(lambda ()
	     (local-set-key "\C-c\C-c" 'comment-region)
	     ))

; nXML-MODE
(add-hook 'nxml-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil) ;常に空白文字でインデント
	     (local-set-key "\C-c\C-c" 'comment-region)
	     ))

;
; フォント
;
(global-unset-key "\C-z")                       ; C-zを無効化
(global-set-key "\C-z\C-z" 'suspend-emacs)      ; サスペンド 
(global-set-key "\C-z\C-b" 'buffer-menu)        ; 
(global-set-key "\C-z\C-j" 'goto-line)          ; 

; Emacs-Lisp mode
(add-hook 'emacs-lisp-mode-hook
	  '(lambda ()
	     (local-set-key "\C-c\C-c" 'comment-region)
	     ))

; nXML-MODE
(add-hook 'nxml-mode-hook
	  '(lambda ()
	     (setq indent-tabs-mode nil) ;常に空白文字でインデント
	     (local-set-key "\C-c\C-c" 'comment-region)
	     ))

;
; フォント
;
;; (set-face-attribute 'default nil
;; 		    :family "Ricty"
;; 		    :height 160)
;; (set-fontset-font nil 'japanese-jisx0208
;; 		  (font-spec :family "Ricty"))


;; (add-to-list 'default-frame-alist '(font . "ricty-16"))


(if window-system
    (progn
      (tool-bar-mode 0)
      (set-scroll-bar-mode nil)
      (setq line-spacing 0.05)
      (create-fontset-from-ascii-font "Inconsolata-16:weight=normal:slant=normal" nil "Inconsolata")
      (set-default-font "Inconsolata-16")
      (set-fontset-font (frame-parameter nil 'font)
      			'japanese-jisx0208
			(font-spec :family "Ricty"))
      ))


;; (if window-system
;;     (progn
;;       (tool-bar-mode 0)
;;       (set-scroll-bar-mode nil)
;;       (setq line-spacing 0.05)
;;       (create-fontset-from-ascii-font "Inconsolata-16:weight=normal:slant=normal" nil "Inconsolata")
;;       (set-default-font "Inconsolata-16")
;;       (set-fontset-font (frame-parameter nil 'font)
;;       			'japanese-jisx0208
;;       			'("Hiragino Kaku Gothic ProN" . "unicode-bmp"))
;;       ;; (set-background-color "Black")
;;       ;; (set-foreground-color "White")
;;       ;; (set-cursor-color "Gray")
;;       ;; (add-to-list 'default-frame-alist '(alpha . 95))
;;       ))


;; (when (>= emacs-major-version 23)
;;   (set-face-attribute 'default nil
;; 		      :family "monaco"
;; 		      :height 140)
;;   (set-fontset-font
;;    (frame-parameter nil 'font)
;;    'japanese-jisx0208
;;    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;   (set-fontset-font
;;    (frame-parameter nil 'font)
;;    'japanese-jisx0212
;;    '("Hiragino Maru Gothic Pro" . "iso10646-1"))
;;   (set-fontset-font
;;    (frame-parameter nil 'font)
;;    'mule-unicode-0100-24ff
;;    '("monaco" . "iso10646-1"))
;;   (setq face-font-rescale-alist
;; 	'(("^-apple-hiragino.*" . 1.2)
;; 	  (".*osaka-bold.*" . 1.2)
;; 	  (".*osaka-medium.*" . 1.2)
;; 	  (".*courier-bold-.*-mac-roman" . 1.0)
;; 	  (".*monaco cy-bold-.*-mac-cyrillic" . 0.9)
;; 	  (".*monaco-bold-.*-mac-roman" . 0.9)
;; 	  ("-cdac$" . 1.3))))
