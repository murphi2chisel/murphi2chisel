(set-logic QF_BV)
(declare-fun v1 () (_ BitVec 31))
(define-fun $e2 () (_ BitVec 31) (_ bv10 31))
(define-fun $e3 () (_ BitVec 1) (ite (bvult $e2 v1) #b1 #b0))
(assert (not (= $e3 #b0)))
(check-sat)
(exit)
