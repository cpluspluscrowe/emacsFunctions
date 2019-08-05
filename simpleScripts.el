
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


