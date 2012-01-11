(setq-default tab-width 2)
(set-frame-font "Inconsolata-14")
(setq utf-translate-cjk-mode nil) ; disable CJK coding/encoding (Chinese/Japanese/Korean characters)
(set-language-environment 'utf-8)
(setq locale-coding-system 'utf-8)
(set-default-coding-systems 'utf-8)
(set-terminal-coding-system 'utf-8)
(set-selection-coding-system 'utf-8)
(prefer-coding-system 'utf-8)
;Rsense
(setq rsense-home "/usr/lib/rsense-0.3")
(add-to-list 'load-path (concat rsense-home "/etc"))
(require 'rsense)
;load what is in /vendor/
(add-to-list 'load-path "~/.emacs.d/vendor")
;Autocomplete
(require 'auto-complete-config)
(add-to-list 'ac-dictionary-directories "~/.emacs.d/vendor/ac-dict")
(ac-config-default)
(ac-set-trigger-key "TAB")
;Textmate
(textmate-mode)
(global-linum-mode)
;CEDET
(load-file "~/.emacs.d/vendor/cedet-1.0/common/cedet.el")
;ECB
(setq stack-trace-on-error t)
(add-to-list 'load-path "~/.emacs.d/vendor/ecb-2.40")
(require 'ecb)
(require 'ecb-autoloads)
(ecb-activate)
;http://lists.gnu.org/archive/html/help-gnu-emacs/2011-09/msg00192.html
