;; General Settings
(global-linum-mode 1)

;; ***** TABBAR *********
;;(require 'tabbar)
;;(tabbar-mode 1)

;; ********* TextMate ****
(require 'textmate)
(textmate-mode)

;; ******** IDO *********
(require 'ido)
(ido-mode 'both) ;; for buffers and files
(setq 
  ido-save-directory-list-file "~/.emacs.d/cache/ido.last"

  ido-ignore-buffers ;; ignore these guys
  '("\\` " "^\*Mess" "^\*Back" ".*Completion" "^\*Ido" "^\*trace"

     "^\*compilation" "^\*GTAGS" "^session\.*" "^\*")
  ido-work-directory-list '("~/" "~src")
  do-enable-flex-matching t ; do flexible matching
  ido-case-fold  t                 ; be case-insensitive

  ido-enable-last-directory-history t ; remember last used dirs
  ido-max-work-directory-list 30   ; should be enough
  ido-max-work-file-list      50   ; remember many
  ido-use-filename-at-point nil    ; don't use filename at point (annoying)
  ido-use-url-at-point nil         ; don't use url at point (annoying)

  ido-enable-flex-matching nil     ; don't try to be too smart
  ido-max-prospects 8              ; don't spam my minibuffer
  ido-confirm-unique-completion t) ; wait for RET, even with unique completion

;; when using ido, the confirmation is rather annoying...
(setq confirm-nonexistent-file-or-buffer nil)
(setq ido-everywhere t)

;; Encoding
(prefer-coding-system 'utf-8)
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-keyboard-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)

;; ************ OTHER ***********
  (setq inhibit-startup-message t
  inhibit-startup-echo-area-message t)
(setq message-log-max nil)
(kill-buffer "*Messages*")
(defalias 'yes-or-no-p 'y-or-n-p)

;; Keybindings
(global-set-key [kp-delete] 'delete-char) ; Fix OSX Delete

; Always bind textmate stuff to control and meta
(global-set-key [(meta return)] 'textmate-next-line)
(global-set-key [(control c)(control t)] 'textmate-clear-cache)
(global-set-key [(control c)(control a)] 'align)
(global-set-key [(control tab)] 'textmate-shift-right)
(global-set-key [(control shift tab)] 'textmate-shift-left)
(global-set-key [(control c)(control k)] 'comment-or-uncomment-region-or-line)
(global-set-key [(meta t)] 'textmate-goto-file)
(global-set-key [(meta shift l)] 'textmate-select-line)
(global-set-key [(meta shift t)] 'textmate-goto-symbol)
(server-start)

(provide 'starter-kit-ebi)
