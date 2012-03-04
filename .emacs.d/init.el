(set-language-environment 'Japanese)
(prefer-coding-system 'utf-8)

;; ばっくあっぷ
(setq make-backup-files nil)
(setq auto-save-default nil)

(setq inhibit-startup-screen t)
(tool-bar-mode -1)
(set-scroll-bar-mode nil)

;; 行番号表示
(global-linum-mode t)
(set-face-attribute 'linum nil
                    :foreground "#800"
                    :height 0.9)
;(setq linum-format "%4d")

(global-unset-key "\C-z")
(global-set-key "\C-z\C-z" 'suspend-emacs)
(global-set-key "\C-z\C-b" 'buffer-menu)
(global-set-key "\C-z\C-j" 'goto-line)

(let ((ws window-system))
  (cond ((eq ws 'w32)
         (set-face-attribute 'default nil
                             :family "Meiryo"  ;; 英数
                             :height 100)
         (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Meiryo")))  ;; 日本語
        ((eq ws 'ns)
         (set-face-attribute 'default nil
                             :family "Ricty"  ;; 英数
                             :height 160)
         (set-fontset-font nil 'japanese-jisx0208 (font-spec :family "Ricty")))))  ;; 日本語

;; 括弧の範囲内を強調表示
(show-paren-mode t)
(setq show-paren-delay 0)
(setq show-paren-style 'expression)

;; 括弧の範囲色
(set-face-background 'show-paren-match-face "#5ff")

;; 選択領域の色
(set-face-background 'region "#555")

;; 行末の空白を強調表示
(setq-default show-trailing-whitespace t)
(set-face-background 'trailing-whitespace "#b14770")

;; モードラインに行番号表示
(line-number-mode t)

;; モードラインに列番号表示
(column-number-mode t)
