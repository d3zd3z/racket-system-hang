#lang racket

(when (directory-exists? "build")
  (delete-directory/files "build"))
(make-directory* "build")

(parameterize ([current-directory "build"])
  (system* (find-executable-path "cmake")
	   "--trace"
	   ".."))
