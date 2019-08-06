
(defun insert-p-tag ()
  "Inserts paragraph at cursor point"
  (interactive)
  (insert "<p></p>")
  (backward-char 4))

(defun wrap-markup-region (start end)
  "Insert a markup <b></b> around a region"
  (interactive "r")
  (save-excursion
    (goto-char end)
    (insert "</b>")
    (goto-char start)
    (insert "<b>")))

(defun select-current-word ()
  "Select word under cursor"
  (interactive)
  (let (pt)
    (skip-chars-backward "-_A-Za-z0-9")
    (setq pt (point))
    (skip-chars-forward "-_A-Za-z0-9")
    (set-mark pt)))

(search-forward "cat")
cat
(search-backward "cat")

(re-search-backward ".*cat")

(save-excursion

  ) ; after it runs it will restore point, mark, and the current buffer

(save-restriction
  (narrow-to-region 1 3)
  ) ; this undos any narrowing I do with my code for operating!

(insert "sun and moon")sun and moon

(delete-char 9)9101112

(insert (buffer-substring-no-properties 1 10))
                                        ;(defun i
(insert (current-word t t))

(defun select-current-line ()
  "Select the current line"
  (interactive)
  (end-of-line) ; move to the end of the line
  (set-mark (line-beginning-position)))

(defun delete-enclosed-text ()
  "deletes texts between any pair of delimiters"
  (interactive)
  (save-excursion
    (let (p1 p2)
      (skip-chars-backward "^([<>") ; skips until it does not encounter this character :huh
      (setq p1 (point))
      (skip-chars-forward "^)]<>")
      (setq p2 (point))
      (delete-region p1 p2)
      )))

(defun remove-line-breaks ()
  "Remove line endings in current paragraph"
  (interactive)
  (let ((fill-column (point-max)))
    (fill-paragraph nil)))

(defun word-definition-lookup ()
  "Look up the word under cursor in a browser"
  (interactive)
  (browse-url
   (concat "http://www.answers.com/main/ntquery?s=" (thing-at-point 'symbol))))

                                        ; return the current line as a string
(insert (buffer-substring-no-properties (line-beginning-position) (line-end-position))) ;(insert (buffer-substring-no-properties (line-beginning-position) (line-end-position))) ;

(setq str (thing-at-point 'filename))

(defun my-select-inside-quotes ()
  "Select text between douoble straight quotes on each side of cursor."
  (interactive)
  (let (p1 p2)
    (skip-chars-backward "^\"")
    (setq ps (point))
    (skip-chars-forward "^\"")
    (setq p2 (point))

    (goto-char p1)
    (push-mark p2)
    (setq mark-active t)
    ))

(concat "some" "thing")

(insert
 (first
  (split-string "xy_007" "_"))) ; xy

(with-temp-buffer
  (insert "woah"))

(insert (buffer-name)); simpleScripts.el

(insert
 (buffer-file-name)); /Users/ccrowe/Documents/emacsFunctions/simpleScripts.el

(with-current-buffer "simpleScripts.el"
  (insert "yes")) ; yes;  COOL!

(save-current-buffer)

