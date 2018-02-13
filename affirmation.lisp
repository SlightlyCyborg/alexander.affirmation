(load "timer.lisp")
(defpackage :affirmations
  (:use :cl :timer))

(in-package :affirmations)

(defparameter affirmations '())

(defclass affirmation ()
   ((name :accessor .content
           :initarg :content)))

(defun add-affirmation (content)
  (push (make-instance 'affirmation :content content) affirmations))

(defun print-affirmation (instance)
  (format t "~%Ponder this affirmation:~%~a~%~%" (.content instance)))
