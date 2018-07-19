#lang racket

(subprocess-group-enabled #t)

(when (directory-exists? "build")
  (delete-directory/files "build"))
(make-directory* "build")

(when true
  (parameterize ([current-directory "build"])
    (system* (find-executable-path "cmake")
	     "--trace"
	     "..")))

(when false
  (parameterize ([current-directory "build"])
    (system "cmake --trace ..")))
