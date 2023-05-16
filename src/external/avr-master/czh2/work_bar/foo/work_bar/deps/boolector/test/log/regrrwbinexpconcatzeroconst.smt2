(set-logic QF_BV)
(declare-fun v4 () (_ BitVec 1))
(declare-fun v5 () (_ BitVec 5))
(assert
(let (($e1 (_ bv0 1)))
(let (($e2 (_ bv0 6)))
(let (($e3 (_ bv0 5)))
(let (($e6 (concat v5 (bvnot v4))))
(let (($e7 (concat $e3 (bvnot v4))))
(let (($e8 (concat v5 $e1)))
(let (($e9 (bvand $e7 $e8)))
(let (($e10 (bvand $e6 (bvnot $e9))))
(let (($e11 (ite (= $e2 $e10) #b1 #b0)))
 (bvnot $e11)))))))))))
(check-sat)
(exit)
