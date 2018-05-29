#lang racket

(provide g)

(require fractalide/modules/rkt/rkt-fbp/graph)

(define g
  (make-graph
   (node "gate" ${math.not16})
   (node "disp0" ${displayer})
   (node "disp1" ${displayer})
   (node "disp2" ${displayer})
   (node "disp3" ${displayer})
   (node "disp4" ${displayer})
   (node "disp5" ${displayer})
   (node "disp6" ${displayer})
   (node "disp7" ${displayer})
   (node "disp8" ${displayer})
   (node "disp9" ${displayer})
   (node "disp10" ${displayer})
   (node "disp11" ${displayer})
   (node "disp12" ${displayer})
   (node "disp13" ${displayer})
   (node "disp14" ${displayer})
   (node "disp15" ${displayer})
   (edge "gate" "out0" _ "disp0" "in" _)
   (edge "gate" "out1" _ "disp1" "in" _)
   (edge "gate" "out2" _ "disp2" "in" _)
   (edge "gate" "out3" _ "disp3" "in" _)
   (edge "gate" "out4" _ "disp4" "in" _)
   (edge "gate" "out5" _ "disp5" "in" _)
   (edge "gate" "out6" _ "disp6" "in" _)
   (edge "gate" "out7" _ "disp7" "in" _)
   (edge "gate" "out8" _ "disp8" "in" _)
   (edge "gate" "out9" _ "disp9" "in" _)
   (edge "gate" "out10" _ "disp10" "in" _)
   (edge "gate" "out11" _ "disp11" "in" _)
   (edge "gate" "out12" _ "disp12" "in" _)
   (edge "gate" "out13" _ "disp13" "in" _)
   (edge "gate" "out14" _ "disp14" "in" _)
   (edge "gate" "out15" _ "disp15" "in" _)
   (mesg "gate" "in0" #t)
   (mesg "gate" "in1" #f)
   (mesg "gate" "in2" #t)
   (mesg "gate" "in3" #f)
   (mesg "gate" "in4" #t)
   (mesg "gate" "in5" #f)
   (mesg "gate" "in6" #t)
   (mesg "gate" "in7" #f)
   (mesg "gate" "in8" #t)
   (mesg "gate" "in9" #f)
   (mesg "gate" "in10" #t)
   (mesg "gate" "in11" #f)
   (mesg "gate" "in12" #t)
   (mesg "gate" "in13" #f)
   (mesg "gate" "in14" #t)
   (mesg "gate" "in15" #f)
   ))