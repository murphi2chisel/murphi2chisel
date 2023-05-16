(set-option :incremental false)
(set-info :source "This benchmark comes from bounded model checking of two fifo implementations.
The fifos are resetted once at the beginning.
We try to verify behavioral equivalence with k-induction.
All different constraints are disabled.
Fifo inputs: 'enqueue', 'dequeue', 'reset' (active low) and 'data_in'.
Fifo output: 'empty', 'full' and 'data_out'.
Bit-width: 32
k: 5
The fifos have an internal memory of size 16, respectively modelled as array.

Contributed by Robert Brummayer (robert.brummayer@gmail.com).")
(set-info :status sat)
(set-info :category "crafted")
(set-logic QF_AUFBV)
(declare-fun head_fs_0 () (_ BitVec 4))
(declare-fun tail_fs_0 () (_ BitVec 4))
(declare-fun full_fs_0 () (_ BitVec 1))
(declare-fun empty_fs_0 () (_ BitVec 1))
(declare-fun data_out_fs_0 () (_ BitVec 32))
(declare-fun head_fq_0 () (_ BitVec 4))
(declare-fun tail_fq_0 () (_ BitVec 4))
(declare-fun full_fq_0 () (_ BitVec 1))
(declare-fun empty_fq_0 () (_ BitVec 1))
(declare-fun data_out_fq_0 () (_ BitVec 32))
(declare-fun reset_0 () (_ BitVec 1))
(declare-fun a30 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun a31 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun enqeue_0 () (_ BitVec 1))
(declare-fun deqeue_0 () (_ BitVec 1))
(declare-fun data_in_0 () (_ BitVec 32))
(declare-fun head_fs_1 () (_ BitVec 4))
(declare-fun tail_fs_1 () (_ BitVec 4))
(declare-fun full_fs_1 () (_ BitVec 1))
(declare-fun empty_fs_1 () (_ BitVec 1))
(declare-fun data_out_fs_1 () (_ BitVec 32))
(declare-fun head_fq_1 () (_ BitVec 4))
(declare-fun tail_fq_1 () (_ BitVec 4))
(declare-fun full_fq_1 () (_ BitVec 1))
(declare-fun empty_fq_1 () (_ BitVec 1))
(declare-fun data_out_fq_1 () (_ BitVec 32))
(declare-fun reset_1 () (_ BitVec 1))
(declare-fun a141 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun a142 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun enqeue_1 () (_ BitVec 1))
(declare-fun deqeue_1 () (_ BitVec 1))
(declare-fun data_in_1 () (_ BitVec 32))
(declare-fun head_fs_2 () (_ BitVec 4))
(declare-fun tail_fs_2 () (_ BitVec 4))
(declare-fun full_fs_2 () (_ BitVec 1))
(declare-fun empty_fs_2 () (_ BitVec 1))
(declare-fun data_out_fs_2 () (_ BitVec 32))
(declare-fun head_fq_2 () (_ BitVec 4))
(declare-fun tail_fq_2 () (_ BitVec 4))
(declare-fun full_fq_2 () (_ BitVec 1))
(declare-fun empty_fq_2 () (_ BitVec 1))
(declare-fun data_out_fq_2 () (_ BitVec 32))
(declare-fun reset_2 () (_ BitVec 1))
(declare-fun a264 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun a265 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun enqeue_2 () (_ BitVec 1))
(declare-fun deqeue_2 () (_ BitVec 1))
(declare-fun data_in_2 () (_ BitVec 32))
(declare-fun head_fs_3 () (_ BitVec 4))
(declare-fun tail_fs_3 () (_ BitVec 4))
(declare-fun full_fs_3 () (_ BitVec 1))
(declare-fun empty_fs_3 () (_ BitVec 1))
(declare-fun data_out_fs_3 () (_ BitVec 32))
(declare-fun head_fq_3 () (_ BitVec 4))
(declare-fun tail_fq_3 () (_ BitVec 4))
(declare-fun full_fq_3 () (_ BitVec 1))
(declare-fun empty_fq_3 () (_ BitVec 1))
(declare-fun data_out_fq_3 () (_ BitVec 32))
(declare-fun reset_3 () (_ BitVec 1))
(declare-fun a387 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun a388 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun enqeue_3 () (_ BitVec 1))
(declare-fun deqeue_3 () (_ BitVec 1))
(declare-fun data_in_3 () (_ BitVec 32))
(declare-fun head_fs_4 () (_ BitVec 4))
(declare-fun tail_fs_4 () (_ BitVec 4))
(declare-fun full_fs_4 () (_ BitVec 1))
(declare-fun empty_fs_4 () (_ BitVec 1))
(declare-fun data_out_fs_4 () (_ BitVec 32))
(declare-fun head_fq_4 () (_ BitVec 4))
(declare-fun tail_fq_4 () (_ BitVec 4))
(declare-fun full_fq_4 () (_ BitVec 1))
(declare-fun empty_fq_4 () (_ BitVec 1))
(declare-fun data_out_fq_4 () (_ BitVec 32))
(declare-fun reset_4 () (_ BitVec 1))
(declare-fun a510 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun a511 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun enqeue_4 () (_ BitVec 1))
(declare-fun deqeue_4 () (_ BitVec 1))
(declare-fun data_in_4 () (_ BitVec 32))
(declare-fun head_fs_5 () (_ BitVec 4))
(declare-fun tail_fs_5 () (_ BitVec 4))
(declare-fun full_fs_5 () (_ BitVec 1))
(declare-fun empty_fs_5 () (_ BitVec 1))
(declare-fun data_out_fs_5 () (_ BitVec 32))
(declare-fun head_fq_5 () (_ BitVec 4))
(declare-fun tail_fq_5 () (_ BitVec 4))
(declare-fun full_fq_5 () (_ BitVec 1))
(declare-fun empty_fq_5 () (_ BitVec 1))
(declare-fun data_out_fq_5 () (_ BitVec 32))
(declare-fun reset_5 () (_ BitVec 1))
(declare-fun a633 () (Array (_ BitVec 4) (_ BitVec 32)))
(declare-fun a634 () (Array (_ BitVec 4) (_ BitVec 32)))
(assert (let ((_let_0 (= (_ bv1 1) full_fs_0))) (let ((_let_1 (= (_ bv1 1) enqeue_0))) (let ((_let_2 (= (_ bv1 1) (bvand (bvnot (bvand (bvnot enqeue_0) (bvnot deqeue_0))) (bvnot (bvand enqeue_0 deqeue_0)))))) (let ((_let_3 (= (_ bv1 1) reset_0))) (let ((_let_4 (= (_ bv1 1) deqeue_0))) (let ((_let_5 (bvadd (_ bv1 4) head_fq_0))) (let ((_let_6 (bvadd (_ bv1 4) tail_fq_0))) (let ((_let_7 (= (_ bv1 1) full_fq_0))) (let ((_let_8 (= (_ bv1 1) full_fs_1))) (let ((_let_9 (= (_ bv1 1) enqeue_1))) (let ((_let_10 (= (_ bv1 1) (bvand (bvnot (bvand (bvnot enqeue_1) (bvnot deqeue_1))) (bvnot (bvand enqeue_1 deqeue_1)))))) (let ((_let_11 (= (_ bv1 1) reset_1))) (let ((_let_12 (= (_ bv1 1) deqeue_1))) (let ((_let_13 (bvadd (_ bv1 4) head_fq_1))) (let ((_let_14 (bvadd (_ bv1 4) tail_fq_1))) (let ((_let_15 (= (_ bv1 1) full_fq_1))) (let ((_let_16 (= (_ bv1 1) full_fs_2))) (let ((_let_17 (= (_ bv1 1) enqeue_2))) (let ((_let_18 (= (_ bv1 1) (bvand (bvnot (bvand (bvnot enqeue_2) (bvnot deqeue_2))) (bvnot (bvand enqeue_2 deqeue_2)))))) (let ((_let_19 (= (_ bv1 1) reset_2))) (let ((_let_20 (= (_ bv1 1) deqeue_2))) (let ((_let_21 (bvadd (_ bv1 4) head_fq_2))) (let ((_let_22 (bvadd (_ bv1 4) tail_fq_2))) (let ((_let_23 (= (_ bv1 1) full_fq_2))) (let ((_let_24 (= (_ bv1 1) full_fs_3))) (let ((_let_25 (= (_ bv1 1) enqeue_3))) (let ((_let_26 (= (_ bv1 1) (bvand (bvnot (bvand (bvnot enqeue_3) (bvnot deqeue_3))) (bvnot (bvand enqeue_3 deqeue_3)))))) (let ((_let_27 (= (_ bv1 1) reset_3))) (let ((_let_28 (= (_ bv1 1) deqeue_3))) (let ((_let_29 (bvadd (_ bv1 4) head_fq_3))) (let ((_let_30 (bvadd (_ bv1 4) tail_fq_3))) (let ((_let_31 (= (_ bv1 1) full_fq_3))) (let ((_let_32 (= (_ bv1 1) full_fs_4))) (let ((_let_33 (= (_ bv1 1) enqeue_4))) (let ((_let_34 (= (_ bv1 1) (bvand (bvnot (bvand (bvnot enqeue_4) (bvnot deqeue_4))) (bvnot (bvand enqeue_4 deqeue_4)))))) (let ((_let_35 (= (_ bv1 1) reset_4))) (let ((_let_36 (= (_ bv1 1) deqeue_4))) (let ((_let_37 (bvadd (_ bv1 4) head_fq_4))) (let ((_let_38 (bvadd (_ bv1 4) tail_fq_4))) (let ((_let_39 (= (_ bv1 1) full_fq_4))) (not (= (bvand reset_5 (bvand (bvnot (bvand (ite (= data_out_fs_5 data_out_fq_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= full_fs_5 full_fq_5) (_ bv1 1) (_ bv0 1)) (ite (= empty_fs_5 empty_fq_5) (_ bv1 1) (_ bv0 1))))) (bvand reset_5 (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_33 (ite _let_39 a511 (store a511 tail_fq_4 data_in_4)) a511) a511) a511) a634) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite (= (_ bv1 1) (bvand (bvnot empty_fq_4) deqeue_4)) (select a511 head_fq_4) data_out_fq_4) data_out_fq_4) data_out_fq_4) data_out_fq_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_33 (_ bv0 1) (ite (= (_ bv1 1) (ite (= tail_fq_4 _let_37) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fq_4)) empty_fq_4) (_ bv1 1)) empty_fq_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_36 (_ bv0 1) (ite (= (_ bv1 1) (ite (= head_fq_4 (bvadd (_ bv1 4) _let_38)) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fq_4)) full_fq_4) (_ bv0 1)) full_fq_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_33 (ite _let_39 tail_fq_4 _let_38) tail_fq_4) tail_fq_4) (_ bv0 4)) tail_fq_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_36 (ite (= (_ bv1 1) empty_fq_4) head_fq_4 _let_37) head_fq_4) head_fq_4) (_ bv0 4)) head_fq_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_33 (ite _let_32 a510 (store a510 tail_fs_4 data_in_4)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store a510 (_ bv0 4) (select a510 (_ bv1 4))) (_ bv1 4) (select a510 (_ bv2 4))) (_ bv2 4) (select a510 (_ bv3 4))) (_ bv3 4) (select a510 (_ bv4 4))) (_ bv4 4) (select a510 (_ bv5 4))) (_ bv5 4) (select a510 (_ bv6 4))) (_ bv6 4) (select a510 (_ bv7 4))) (_ bv7 4) (select a510 (_ bv8 4))) (_ bv8 4) (select a510 (_ bv9 4))) (_ bv9 4) (select a510 (_ bv10 4))) (_ bv10 4) (select a510 (_ bv11 4))) (_ bv11 4) (select a510 (_ bv12 4))) (_ bv12 4) (select a510 (_ bv13 4))) (_ bv13 4) (select a510 (_ bv14 4)))) a510) a510) a633) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite (= (_ bv1 1) (bvand (bvnot empty_fs_4) deqeue_4)) (select a510 head_fs_4) data_out_fs_4) data_out_fs_4) data_out_fs_4) data_out_fs_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_33 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv1 4) tail_fs_4) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fs_4)) empty_fs_4) (_ bv1 1)) empty_fs_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_36 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv14 4) tail_fs_4) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fs_4)) full_fs_4) (_ bv0 1)) full_fs_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_35 (ite _let_34 (ite _let_33 (ite _let_32 tail_fs_4 (bvadd (_ bv1 4) tail_fs_4)) (ite (= (_ bv1 1) empty_fs_4) tail_fs_4 (bvadd (_ bv15 4) tail_fs_4))) tail_fs_4) (_ bv0 4)) tail_fs_5) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (_ bv0 4) head_fs_5) (_ bv1 1) (_ bv0 1)) (bvand (bvnot (bvand reset_4 (bvnot (bvand (ite (= data_out_fs_4 data_out_fq_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= full_fs_4 full_fq_4) (_ bv1 1) (_ bv0 1)) (ite (= empty_fs_4 empty_fq_4) (_ bv1 1) (_ bv0 1))))))) (bvand reset_4 (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_25 (ite _let_31 a388 (store a388 tail_fq_3 data_in_3)) a388) a388) a388) a511) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite (= (_ bv1 1) (bvand (bvnot empty_fq_3) deqeue_3)) (select a388 head_fq_3) data_out_fq_3) data_out_fq_3) data_out_fq_3) data_out_fq_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_25 (_ bv0 1) (ite (= (_ bv1 1) (ite (= tail_fq_3 _let_29) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fq_3)) empty_fq_3) (_ bv1 1)) empty_fq_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_28 (_ bv0 1) (ite (= (_ bv1 1) (ite (= head_fq_3 (bvadd (_ bv1 4) _let_30)) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fq_3)) full_fq_3) (_ bv0 1)) full_fq_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_25 (ite _let_31 tail_fq_3 _let_30) tail_fq_3) tail_fq_3) (_ bv0 4)) tail_fq_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_28 (ite (= (_ bv1 1) empty_fq_3) head_fq_3 _let_29) head_fq_3) head_fq_3) (_ bv0 4)) head_fq_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_25 (ite _let_24 a387 (store a387 tail_fs_3 data_in_3)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store a387 (_ bv0 4) (select a387 (_ bv1 4))) (_ bv1 4) (select a387 (_ bv2 4))) (_ bv2 4) (select a387 (_ bv3 4))) (_ bv3 4) (select a387 (_ bv4 4))) (_ bv4 4) (select a387 (_ bv5 4))) (_ bv5 4) (select a387 (_ bv6 4))) (_ bv6 4) (select a387 (_ bv7 4))) (_ bv7 4) (select a387 (_ bv8 4))) (_ bv8 4) (select a387 (_ bv9 4))) (_ bv9 4) (select a387 (_ bv10 4))) (_ bv10 4) (select a387 (_ bv11 4))) (_ bv11 4) (select a387 (_ bv12 4))) (_ bv12 4) (select a387 (_ bv13 4))) (_ bv13 4) (select a387 (_ bv14 4)))) a387) a387) a510) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite (= (_ bv1 1) (bvand (bvnot empty_fs_3) deqeue_3)) (select a387 head_fs_3) data_out_fs_3) data_out_fs_3) data_out_fs_3) data_out_fs_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_25 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv1 4) tail_fs_3) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fs_3)) empty_fs_3) (_ bv1 1)) empty_fs_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_28 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv14 4) tail_fs_3) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fs_3)) full_fs_3) (_ bv0 1)) full_fs_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_27 (ite _let_26 (ite _let_25 (ite _let_24 tail_fs_3 (bvadd (_ bv1 4) tail_fs_3)) (ite (= (_ bv1 1) empty_fs_3) tail_fs_3 (bvadd (_ bv15 4) tail_fs_3))) tail_fs_3) (_ bv0 4)) tail_fs_4) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (_ bv0 4) head_fs_4) (_ bv1 1) (_ bv0 1)) (bvand (bvnot (bvand reset_3 (bvnot (bvand (ite (= data_out_fs_3 data_out_fq_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= full_fs_3 full_fq_3) (_ bv1 1) (_ bv0 1)) (ite (= empty_fs_3 empty_fq_3) (_ bv1 1) (_ bv0 1))))))) (bvand reset_3 (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_17 (ite _let_23 a265 (store a265 tail_fq_2 data_in_2)) a265) a265) a265) a388) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite (= (_ bv1 1) (bvand (bvnot empty_fq_2) deqeue_2)) (select a265 head_fq_2) data_out_fq_2) data_out_fq_2) data_out_fq_2) data_out_fq_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_17 (_ bv0 1) (ite (= (_ bv1 1) (ite (= tail_fq_2 _let_21) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fq_2)) empty_fq_2) (_ bv1 1)) empty_fq_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_20 (_ bv0 1) (ite (= (_ bv1 1) (ite (= head_fq_2 (bvadd (_ bv1 4) _let_22)) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fq_2)) full_fq_2) (_ bv0 1)) full_fq_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_17 (ite _let_23 tail_fq_2 _let_22) tail_fq_2) tail_fq_2) (_ bv0 4)) tail_fq_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_20 (ite (= (_ bv1 1) empty_fq_2) head_fq_2 _let_21) head_fq_2) head_fq_2) (_ bv0 4)) head_fq_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_17 (ite _let_16 a264 (store a264 tail_fs_2 data_in_2)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store a264 (_ bv0 4) (select a264 (_ bv1 4))) (_ bv1 4) (select a264 (_ bv2 4))) (_ bv2 4) (select a264 (_ bv3 4))) (_ bv3 4) (select a264 (_ bv4 4))) (_ bv4 4) (select a264 (_ bv5 4))) (_ bv5 4) (select a264 (_ bv6 4))) (_ bv6 4) (select a264 (_ bv7 4))) (_ bv7 4) (select a264 (_ bv8 4))) (_ bv8 4) (select a264 (_ bv9 4))) (_ bv9 4) (select a264 (_ bv10 4))) (_ bv10 4) (select a264 (_ bv11 4))) (_ bv11 4) (select a264 (_ bv12 4))) (_ bv12 4) (select a264 (_ bv13 4))) (_ bv13 4) (select a264 (_ bv14 4)))) a264) a264) a387) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite (= (_ bv1 1) (bvand (bvnot empty_fs_2) deqeue_2)) (select a264 head_fs_2) data_out_fs_2) data_out_fs_2) data_out_fs_2) data_out_fs_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_17 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv1 4) tail_fs_2) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fs_2)) empty_fs_2) (_ bv1 1)) empty_fs_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_20 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv14 4) tail_fs_2) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fs_2)) full_fs_2) (_ bv0 1)) full_fs_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_19 (ite _let_18 (ite _let_17 (ite _let_16 tail_fs_2 (bvadd (_ bv1 4) tail_fs_2)) (ite (= (_ bv1 1) empty_fs_2) tail_fs_2 (bvadd (_ bv15 4) tail_fs_2))) tail_fs_2) (_ bv0 4)) tail_fs_3) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (_ bv0 4) head_fs_3) (_ bv1 1) (_ bv0 1)) (bvand (bvnot (bvand reset_2 (bvnot (bvand (ite (= data_out_fs_2 data_out_fq_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= full_fs_2 full_fq_2) (_ bv1 1) (_ bv0 1)) (ite (= empty_fs_2 empty_fq_2) (_ bv1 1) (_ bv0 1))))))) (bvand reset_2 (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_9 (ite _let_15 a142 (store a142 tail_fq_1 data_in_1)) a142) a142) a142) a265) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite (= (_ bv1 1) (bvand (bvnot empty_fq_1) deqeue_1)) (select a142 head_fq_1) data_out_fq_1) data_out_fq_1) data_out_fq_1) data_out_fq_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_9 (_ bv0 1) (ite (= (_ bv1 1) (ite (= tail_fq_1 _let_13) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fq_1)) empty_fq_1) (_ bv1 1)) empty_fq_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_12 (_ bv0 1) (ite (= (_ bv1 1) (ite (= head_fq_1 (bvadd (_ bv1 4) _let_14)) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fq_1)) full_fq_1) (_ bv0 1)) full_fq_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_9 (ite _let_15 tail_fq_1 _let_14) tail_fq_1) tail_fq_1) (_ bv0 4)) tail_fq_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_12 (ite (= (_ bv1 1) empty_fq_1) head_fq_1 _let_13) head_fq_1) head_fq_1) (_ bv0 4)) head_fq_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_9 (ite _let_8 a141 (store a141 tail_fs_1 data_in_1)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store a141 (_ bv0 4) (select a141 (_ bv1 4))) (_ bv1 4) (select a141 (_ bv2 4))) (_ bv2 4) (select a141 (_ bv3 4))) (_ bv3 4) (select a141 (_ bv4 4))) (_ bv4 4) (select a141 (_ bv5 4))) (_ bv5 4) (select a141 (_ bv6 4))) (_ bv6 4) (select a141 (_ bv7 4))) (_ bv7 4) (select a141 (_ bv8 4))) (_ bv8 4) (select a141 (_ bv9 4))) (_ bv9 4) (select a141 (_ bv10 4))) (_ bv10 4) (select a141 (_ bv11 4))) (_ bv11 4) (select a141 (_ bv12 4))) (_ bv12 4) (select a141 (_ bv13 4))) (_ bv13 4) (select a141 (_ bv14 4)))) a141) a141) a264) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite (= (_ bv1 1) (bvand (bvnot empty_fs_1) deqeue_1)) (select a141 head_fs_1) data_out_fs_1) data_out_fs_1) data_out_fs_1) data_out_fs_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_9 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv1 4) tail_fs_1) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fs_1)) empty_fs_1) (_ bv1 1)) empty_fs_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_12 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv14 4) tail_fs_1) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fs_1)) full_fs_1) (_ bv0 1)) full_fs_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_11 (ite _let_10 (ite _let_9 (ite _let_8 tail_fs_1 (bvadd (_ bv1 4) tail_fs_1)) (ite (= (_ bv1 1) empty_fs_1) tail_fs_1 (bvadd (_ bv15 4) tail_fs_1))) tail_fs_1) (_ bv0 4)) tail_fs_2) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (_ bv0 4) head_fs_2) (_ bv1 1) (_ bv0 1)) (bvand (bvnot (bvand reset_1 (bvnot (bvand (ite (= data_out_fs_1 data_out_fq_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= full_fs_1 full_fq_1) (_ bv1 1) (_ bv0 1)) (ite (= empty_fs_1 empty_fq_1) (_ bv1 1) (_ bv0 1))))))) (bvand reset_1 (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_1 (ite _let_7 a31 (store a31 tail_fq_0 data_in_0)) a31) a31) a31) a142) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite (= (_ bv1 1) (bvand (bvnot empty_fq_0) deqeue_0)) (select a31 head_fq_0) data_out_fq_0) data_out_fq_0) data_out_fq_0) data_out_fq_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_1 (_ bv0 1) (ite (= (_ bv1 1) (ite (= tail_fq_0 _let_5) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fq_0)) empty_fq_0) (_ bv1 1)) empty_fq_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_4 (_ bv0 1) (ite (= (_ bv1 1) (ite (= head_fq_0 (bvadd (_ bv1 4) _let_6)) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fq_0)) full_fq_0) (_ bv0 1)) full_fq_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_1 (ite _let_7 tail_fq_0 _let_6) tail_fq_0) tail_fq_0) (_ bv0 4)) tail_fq_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_4 (ite (= (_ bv1 1) empty_fq_0) head_fq_0 _let_5) head_fq_0) head_fq_0) (_ bv0 4)) head_fq_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_1 (ite _let_0 a30 (store a30 tail_fs_0 data_in_0)) (store (store (store (store (store (store (store (store (store (store (store (store (store (store a30 (_ bv0 4) (select a30 (_ bv1 4))) (_ bv1 4) (select a30 (_ bv2 4))) (_ bv2 4) (select a30 (_ bv3 4))) (_ bv3 4) (select a30 (_ bv4 4))) (_ bv4 4) (select a30 (_ bv5 4))) (_ bv5 4) (select a30 (_ bv6 4))) (_ bv6 4) (select a30 (_ bv7 4))) (_ bv7 4) (select a30 (_ bv8 4))) (_ bv8 4) (select a30 (_ bv9 4))) (_ bv9 4) (select a30 (_ bv10 4))) (_ bv10 4) (select a30 (_ bv11 4))) (_ bv11 4) (select a30 (_ bv12 4))) (_ bv12 4) (select a30 (_ bv13 4))) (_ bv13 4) (select a30 (_ bv14 4)))) a30) a30) a141) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite (= (_ bv1 1) (bvand (bvnot empty_fs_0) deqeue_0)) (select a30 head_fs_0) data_out_fs_0) data_out_fs_0) data_out_fs_0) data_out_fs_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_1 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv1 4) tail_fs_0) (_ bv1 1) (_ bv0 1))) (_ bv1 1) empty_fs_0)) empty_fs_0) (_ bv1 1)) empty_fs_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_4 (_ bv0 1) (ite (= (_ bv1 1) (ite (= (_ bv14 4) tail_fs_0) (_ bv1 1) (_ bv0 1))) (_ bv1 1) full_fs_0)) full_fs_0) (_ bv0 1)) full_fs_1) (_ bv1 1) (_ bv0 1)) (bvand (ite (= (ite _let_3 (ite _let_2 (ite _let_1 (ite _let_0 tail_fs_0 (bvadd (_ bv1 4) tail_fs_0)) (ite (= (_ bv1 1) empty_fs_0) tail_fs_0 (bvadd (_ bv15 4) tail_fs_0))) tail_fs_0) (_ bv0 4)) tail_fs_1) (_ bv1 1) (_ bv0 1)) (bvand (bvnot (bvand reset_0 (bvnot (bvand (ite (= data_out_fs_0 data_out_fq_0) (_ bv1 1) (_ bv0 1)) (bvand (ite (= full_fs_0 full_fq_0) (_ bv1 1) (_ bv0 1)) (ite (= empty_fs_0 empty_fq_0) (_ bv1 1) (_ bv0 1))))))) (ite (= (_ bv0 4) head_fs_1) (_ bv1 1) (_ bv0 1))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))))) (_ bv0 1))))))))))))))))))))))))))))))))))))))))))))
(check-sat)
