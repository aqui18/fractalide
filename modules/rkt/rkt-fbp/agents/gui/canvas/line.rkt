#lang racket/base

(require fractalide/modules/rkt/rkt-fbp/agent
         fractalide/modules/rkt/rkt-fbp/def)
(require racket/gui/base
         racket/match)
(require (rename-in racket/class [send class-send]))
(require/edge ${gui.widget})

(define-agent
  #:input '("in") ; in port
  #:output '("out") ; out port
  #:output-array '("out")
  (fun
   (define msg (recv (input "in")))
   (match msg
     [(cons 'init (vector x y end-x end-y))
      (send (output "out")
            (cons 'init (widget
                         0
                         (lambda (before? dc left top right bottom dx dy)
                           (class-send dc draw-line
                                       (+ x dx) (+ y dy)
                                       (+ end-x dx) (+ end-y dy)))
                         ; TODO: Be more precise for click on the line...
                         (lambda (dc a b)
                           (and (> a x)
                                (< a end-x))
                                (> b y)
                                (< b end-y))
                         (lambda (event)
                           (send (input "in") event)))))]
     [(cons 'delete #t)
      (send (output "out") msg)]
     [else
      (displayln "LINE!")
      (send-action output output-array msg)])))