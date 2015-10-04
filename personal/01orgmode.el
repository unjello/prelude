;; set agenda
(setq org-agenda-skip-unavailable-files t)
(setq org-agenda-files (list "~/Org/Personal"
                             "~/Org/Personal/Pracownia"
                             "~/Org/Personal/Czytelnia"
                             "~/Org/Personal/Szkolenia"
                             "~/Org/Work"))
;; todo keywords
(setq org-todo-keywords
      (quote ((sequence "TODO(t)" "NEXT(n)" "|" "DONE(d)")
              (sequence "WAITING(w@/!)" "HOLD(h@/!)" "|" "CANCELLED(c@/!)"))))

(setq org-use-fast-todo-selection t)
(setq org-treat-S-cursor-todo-selection-as-state-change nil)

(setq org-todo-state-tags-triggers
      (quote (("CANCELLED" ("CANCELLED" . t))
              ("WAITING" ("WAITING" . t))
              ("HOLD" ("WAITING") ("HOLD" . t))
              (done ("WAITING") ("HOLD"))
              ("TODO" ("WAITING") ("CANCELLED") ("HOLD"))
              ("NEXT" ("WAITING") ("CANCELLED") ("HOLD"))
              ("DONE" ("WAITING") ("CANCELLED") ("HOLD")))))

;; do line wrapping for org-mode and disable long-lines hilighting
(add-hook 'org-mode-hook (lambda()
                           (whitespace-mode -1)
                           (visual-line-mode)
                           ))
