/* Generated by Yosys 0.16+63 (git sha1 11e75bc27, clang 10.0.0-4ubuntu1 -fPIC -Os) */

/* keep =  1  */
/* top =  1  */
/* src = "mutual/pr_bar/work_w1/mutual.sv:117.1-366.10" */
module main(clock, reset, io_en_a);
  /* src = "mutual/pr_bar/work_w1/mutual.sv:0.0-0.0" */
  wire _000_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  wire _001_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  wire _002_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  wire _003_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  wire _004_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:326.3-350.6" */
  wire [1:0] _005_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:326.3-350.6" */
  wire [1:0] _006_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:326.3-350.6" */
  wire _007_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:357.16-357.49" */
  wire _008_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:361.16-361.49" */
  wire _009_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:357.16-357.31" */
  wire _010_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:357.34-357.49" */
  wire _011_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:361.16-361.31" */
  wire _012_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:361.34-361.49" */
  wire _013_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:10.23-10.40" */
  wire _014_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:24.23-24.50" */
  wire _015_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:25.18-25.45" */
  wire _016_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:24.23-24.40" */
  wire _017_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:25.18-25.35" */
  wire _018_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:39.23-39.40" */
  wire _019_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:53.23-53.40" */
  wire _020_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:54.18-54.35" */
  wire _021_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:68.23-68.40" */
  wire _022_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:82.23-82.50" */
  wire _023_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:83.18-83.45" */
  wire _024_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:82.23-82.40" */
  wire _025_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:83.18-83.35" */
  wire _026_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:97.23-97.40" */
  wire _027_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:111.23-111.40" */
  wire _028_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:112.18-112.35" */
  wire _029_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:0.0-0.0" */
  reg _030_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:0.0-0.0" */
  reg _031_ = 1'h0;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:0.0-0.0" */
  reg _032_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:0.0-0.0" */
  reg _033_ = 1'h0;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:357.14-357.50" */
  wire _034_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:361.14-361.50" */
  wire _035_;
  wire [1:0] _036_;
  wire [1:0] _037_;
  wire [1:0] _038_;
  wire [1:0] _039_;
  wire [1:0] _040_;
  wire [1:0] _041_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:192.14-192.20" */
  wire [1:0] _GEN_0;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:193.14-193.20" */
  wire [1:0] _GEN_1;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:205.14-205.21" */
  wire [1:0] _GEN_10;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:206.9-206.16" */
  wire _GEN_11;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:208.14-208.21" */
  wire [1:0] _GEN_12;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:209.14-209.21" */
  wire [1:0] _GEN_13;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:210.9-210.16" */
  wire _GEN_14;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:212.9-212.16" */
  wire _GEN_17;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:194.9-194.15" */
  wire _GEN_2;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:214.9-214.16" */
  wire _GEN_20;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:216.9-216.16" */
  wire _GEN_23;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:196.14-196.20" */
  wire [1:0] _GEN_3;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:197.14-197.20" */
  wire [1:0] _GEN_4;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:198.9-198.15" */
  wire _GEN_5;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:200.14-200.20" */
  wire [1:0] _GEN_6;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:201.14-201.20" */
  wire [1:0] _GEN_7;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:202.9-202.15" */
  wire _GEN_8;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:204.14-204.20" */
  wire [1:0] _GEN_9;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:191.9-191.11" */
  wire _T;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:211.9-211.14" */
  wire _T_10;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:213.9-213.14" */
  wire _T_12;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:215.9-215.14" */
  wire _T_14;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:195.9-195.13" */
  wire _T_2;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:199.9-199.13" */
  wire _T_4;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:203.9-203.13" */
  wire _T_6;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:207.9-207.13" */
  wire _T_8;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:118.16-118.21" */
  input clock;
  wire clock;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:120.16-120.23" */
  input [2:0] io_en_a;
  wire [2:0] io_en_a;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:119.16-119.21" */
  input reset;
  wire reset;
  /* hdlname = "rules_0 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:10.14-10.20" */
  wire [1:0] \rules_0._GEN_0 ;
  /* hdlname = "rules_0 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:2.16-2.23" */
  wire \rules_0.io_en_r ;
  /* hdlname = "rules_0 io_n_in_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:3.16-3.25" */
  reg [1:0] \rules_0.io_n_in_0 ;
  /* hdlname = "rules_0 io_n_in_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:4.16-4.25" */
  reg [1:0] \rules_0.io_n_in_1 ;
  /* hdlname = "rules_0 io_n_out_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:5.16-5.26" */
  wire [1:0] \rules_0.io_n_out_0 ;
  /* hdlname = "rules_0 io_x_in" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:7.16-7.23" */
  reg \rules_0.io_x_in ;
  /* hdlname = "rules_1 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:24.14-24.20" */
  wire [1:0] \rules_1._GEN_0 ;
  /* hdlname = "rules_1 _GEN_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:25.9-25.15" */
  wire \rules_1._GEN_1 ;
  /* hdlname = "rules_1 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:16.16-16.23" */
  wire \rules_1.io_en_r ;
  /* hdlname = "rules_1 io_n_out_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:19.16-19.26" */
  wire [1:0] \rules_1.io_n_out_0 ;
  /* hdlname = "rules_1 io_x_out" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:22.16-22.24" */
  wire \rules_1.io_x_out ;
  /* hdlname = "rules_2 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:39.14-39.20" */
  wire [1:0] \rules_2._GEN_0 ;
  /* hdlname = "rules_2 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:31.16-31.23" */
  wire \rules_2.io_en_r ;
  /* hdlname = "rules_2 io_n_out_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:34.16-34.26" */
  wire [1:0] \rules_2.io_n_out_0 ;
  /* hdlname = "rules_3 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:53.14-53.20" */
  wire [1:0] \rules_3._GEN_0 ;
  /* hdlname = "rules_3 _GEN_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:54.9-54.15" */
  wire \rules_3._GEN_1 ;
  /* hdlname = "rules_3 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:45.16-45.23" */
  wire \rules_3.io_en_r ;
  /* hdlname = "rules_3 io_n_out_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:48.16-48.26" */
  wire [1:0] \rules_3.io_n_out_0 ;
  /* hdlname = "rules_3 io_x_out" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:51.16-51.24" */
  wire \rules_3.io_x_out ;
  /* hdlname = "rules_4 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:68.14-68.20" */
  wire [1:0] \rules_4._GEN_0 ;
  /* hdlname = "rules_4 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:60.16-60.23" */
  wire \rules_4.io_en_r ;
  /* hdlname = "rules_4 io_n_out_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:64.16-64.26" */
  wire [1:0] \rules_4.io_n_out_1 ;
  /* hdlname = "rules_5 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:82.14-82.20" */
  wire [1:0] \rules_5._GEN_0 ;
  /* hdlname = "rules_5 _GEN_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:83.9-83.15" */
  wire \rules_5._GEN_1 ;
  /* hdlname = "rules_5 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:74.16-74.23" */
  wire \rules_5.io_en_r ;
  /* hdlname = "rules_5 io_n_out_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:78.16-78.26" */
  wire [1:0] \rules_5.io_n_out_1 ;
  /* hdlname = "rules_5 io_x_out" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:80.16-80.24" */
  wire \rules_5.io_x_out ;
  /* hdlname = "rules_6 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:97.14-97.20" */
  wire [1:0] \rules_6._GEN_0 ;
  /* hdlname = "rules_6 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:89.16-89.23" */
  wire \rules_6.io_en_r ;
  /* hdlname = "rules_6 io_n_out_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:93.16-93.26" */
  wire [1:0] \rules_6.io_n_out_1 ;
  /* hdlname = "rules_7 _GEN_0" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:111.14-111.20" */
  wire [1:0] \rules_7._GEN_0 ;
  /* hdlname = "rules_7 _GEN_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:112.9-112.15" */
  wire \rules_7._GEN_1 ;
  /* hdlname = "rules_7 io_en_r" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:103.16-103.23" */
  wire \rules_7.io_en_r ;
  /* hdlname = "rules_7 io_n_out_1" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:107.16-107.26" */
  wire [1:0] \rules_7.io_n_out_1 ;
  /* hdlname = "rules_7 io_x_out" */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:109.16-109.24" */
  wire \rules_7.io_x_out ;
  assign _008_ = _010_ & /* src = "mutual/pr_bar/work_w1/mutual.sv:357.16-357.49" */ _011_;
  assign _009_ = _012_ & /* src = "mutual/pr_bar/work_w1/mutual.sv:361.16-361.49" */ _013_;
  always @* if (_031_) assert(_030_);
  always @* if (_033_) assert(_032_);
  always @* if (_000_) assume(reset);
  assign _T = ! /* src = "mutual/pr_bar/work_w1/mutual.sv:191.14-191.29" */ io_en_a;
  assign _T_2 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:195.16-195.31" */ 3'h1;
  assign _T_4 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:199.16-199.31" */ 3'h2;
  assign _T_6 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:203.16-203.31" */ 3'h3;
  assign _T_8 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:207.16-207.31" */ 3'h4;
  assign _T_10 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:211.17-211.32" */ 3'h5;
  assign _T_12 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:213.17-213.32" */ 3'h6;
  assign _T_14 = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:215.17-215.32" */ 3'h7;
  assign \rules_0.io_en_r  = ! /* src = "mutual/pr_bar/work_w1/mutual.sv:292.28-292.43" */ io_en_a;
  assign \rules_1.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:296.28-296.43" */ 3'h1;
  assign \rules_2.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:300.28-300.43" */ 3'h2;
  assign \rules_3.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:304.28-304.43" */ 3'h3;
  assign \rules_4.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:308.28-308.43" */ 3'h4;
  assign \rules_5.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:312.28-312.43" */ 3'h5;
  assign \rules_6.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:316.28-316.43" */ 3'h6;
  assign \rules_7.io_en_r  = io_en_a == /* src = "mutual/pr_bar/work_w1/mutual.sv:320.28-320.43" */ 3'h7;
  assign _010_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:357.16-357.31" */ 2'h2;
  assign _011_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:357.34-357.49" */ 2'h2;
  assign _012_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:361.16-361.31" */ 2'h2;
  assign _013_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:361.34-361.49" */ 2'h2;
  assign _014_ = ! /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:10.23-10.40" */ \rules_0.io_n_in_0 ;
  assign \rules_0._GEN_0  = _014_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:10.23-10.59" */ 2'h1 : \rules_0.io_n_in_0 ;
  assign \rules_0.io_n_out_0  = \rules_0.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:217.12-225.4|mutual/pr_bar/work_w1/mutual.sv:11.23-11.51" */ \rules_0._GEN_0  : \rules_0.io_n_in_0 ;
  assign _015_ = _017_ & /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:24.23-24.50" */ \rules_0.io_x_in ;
  assign _016_ = _018_ & /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:25.18-25.45" */ \rules_0.io_x_in ;
  assign _017_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:24.23-24.40" */ 2'h1;
  assign _018_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:25.18-25.35" */ 2'h1;
  assign \rules_1._GEN_0  = _015_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:24.23-24.69" */ 2'h2 : \rules_0.io_n_in_0 ;
  assign \rules_1._GEN_1  = _016_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:25.18-25.62" */ 1'h0 : \rules_0.io_x_in ;
  assign \rules_1.io_n_out_0  = \rules_1.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:26.23-26.51" */ \rules_1._GEN_0  : \rules_0.io_n_in_0 ;
  assign \rules_1.io_x_out  = \rules_1.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:226.13-234.4|mutual/pr_bar/work_w1/mutual.sv:28.21-28.47" */ \rules_1._GEN_1  : \rules_0.io_x_in ;
  assign _019_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:39.23-39.40" */ 2'h2;
  assign \rules_2._GEN_0  = _019_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:39.23-39.59" */ 2'h3 : \rules_0.io_n_in_0 ;
  assign \rules_2.io_n_out_0  = \rules_2.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:235.13-243.4|mutual/pr_bar/work_w1/mutual.sv:40.23-40.51" */ \rules_2._GEN_0  : \rules_0.io_n_in_0 ;
  assign _020_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:53.23-53.40" */ 2'h3;
  assign _021_ = \rules_0.io_n_in_0  == /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:54.18-54.35" */ 2'h3;
  assign \rules_3._GEN_1  = _021_ | /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:54.18-54.45" */ \rules_0.io_x_in ;
  assign \rules_3._GEN_0  = _020_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:53.23-53.59" */ 2'h0 : \rules_0.io_n_in_0 ;
  assign \rules_3.io_n_out_0  = \rules_3.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:55.23-55.51" */ \rules_3._GEN_0  : \rules_0.io_n_in_0 ;
  assign \rules_3.io_x_out  = \rules_3.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:244.13-252.4|mutual/pr_bar/work_w1/mutual.sv:57.21-57.47" */ \rules_3._GEN_1  : \rules_0.io_x_in ;
  assign _022_ = ! /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:68.23-68.40" */ \rules_0.io_n_in_1 ;
  assign \rules_4._GEN_0  = _022_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:68.23-68.59" */ 2'h1 : \rules_0.io_n_in_1 ;
  assign \rules_4.io_n_out_1  = \rules_4.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:253.14-261.4|mutual/pr_bar/work_w1/mutual.sv:70.23-70.51" */ \rules_4._GEN_0  : \rules_0.io_n_in_1 ;
  assign _023_ = _025_ & /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:82.23-82.50" */ \rules_0.io_x_in ;
  assign _024_ = _026_ & /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:83.18-83.45" */ \rules_0.io_x_in ;
  assign _025_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:82.23-82.40" */ 2'h1;
  assign _026_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:83.18-83.35" */ 2'h1;
  assign \rules_5._GEN_0  = _023_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:82.23-82.69" */ 2'h2 : \rules_0.io_n_in_1 ;
  assign \rules_5._GEN_1  = _024_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:83.18-83.62" */ 1'h0 : \rules_0.io_x_in ;
  assign \rules_5.io_n_out_1  = \rules_5.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:85.23-85.51" */ \rules_5._GEN_0  : \rules_0.io_n_in_1 ;
  assign \rules_5.io_x_out  = \rules_5.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:262.15-270.4|mutual/pr_bar/work_w1/mutual.sv:86.21-86.47" */ \rules_5._GEN_1  : \rules_0.io_x_in ;
  assign _027_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:97.23-97.40" */ 2'h2;
  assign \rules_6._GEN_0  = _027_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:97.23-97.59" */ 2'h3 : \rules_0.io_n_in_1 ;
  assign \rules_6.io_n_out_1  = \rules_6.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:271.15-279.4|mutual/pr_bar/work_w1/mutual.sv:99.23-99.51" */ \rules_6._GEN_0  : \rules_0.io_n_in_1 ;
  assign _028_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:111.23-111.40" */ 2'h3;
  assign _029_ = \rules_0.io_n_in_1  == /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:112.18-112.35" */ 2'h3;
  assign \rules_7._GEN_1  = _029_ | /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:112.18-112.45" */ \rules_0.io_x_in ;
  assign \rules_7._GEN_0  = _028_ ? /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:111.23-111.59" */ 2'h0 : \rules_0.io_n_in_1 ;
  assign \rules_7.io_n_out_1  = \rules_7.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:114.23-114.51" */ \rules_7._GEN_0  : \rules_0.io_n_in_1 ;
  assign \rules_7.io_x_out  = \rules_7.io_en_r  ? /* src = "mutual/pr_bar/work_w1/mutual.sv:280.15-288.4|mutual/pr_bar/work_w1/mutual.sv:115.21-115.47" */ \rules_7._GEN_1  : \rules_0.io_x_in ;
  /* module_not_derived = 32'd1 */
  /* src = "mutual/pr_bar/work_w1/mutual.sv:0.0-0.0" */
  \$initstate  _107_ (
    .Y(_000_)
  );
  assign _034_ = ~ /* src = "mutual/pr_bar/work_w1/mutual.sv:357.14-357.50" */ _008_;
  assign _035_ = ~ /* src = "mutual/pr_bar/work_w1/mutual.sv:361.14-361.50" */ _009_;
  assign _007_ = reset | /* src = "mutual/pr_bar/work_w1/mutual.sv:349.14-349.29" */ _GEN_23;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  always @(posedge clock)
    _030_ <= _001_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  always @(posedge clock)
    _031_ <= _002_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  always @(posedge clock)
    _032_ <= _003_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:354.9-363.6" */
  always @(posedge clock)
    _033_ <= _004_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:326.3-350.6" */
  always @(posedge clock)
    \rules_0.io_n_in_0  <= _005_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:326.3-350.6" */
  always @(posedge clock)
    \rules_0.io_n_in_1  <= _006_;
  /* src = "mutual/pr_bar/work_w1/mutual.sv:326.3-350.6" */
  always @(posedge clock)
    \rules_0.io_x_in  <= _007_;
  assign _002_ = reset ? /* src = "mutual/pr_bar/work_w1/mutual.sv:356.9-356.15|mutual/pr_bar/work_w1/mutual.sv:356.5-358.8" */ 1'h0 : 1'h1;
  assign _001_ = reset ? /* src = "mutual/pr_bar/work_w1/mutual.sv:356.9-356.15|mutual/pr_bar/work_w1/mutual.sv:356.5-358.8" */ 1'hx : _034_;
  assign _004_ = reset ? /* src = "mutual/pr_bar/work_w1/mutual.sv:360.9-360.15|mutual/pr_bar/work_w1/mutual.sv:360.5-362.8" */ 1'h0 : 1'h1;
  assign _003_ = reset ? /* src = "mutual/pr_bar/work_w1/mutual.sv:360.9-360.15|mutual/pr_bar/work_w1/mutual.sv:360.5-362.8" */ 1'hx : _035_;
  assign _036_ = _T_10 ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:344.18-344.23|mutual/pr_bar/work_w1/mutual.sv:344.14-348.8" */ \rules_5.io_n_out_1  : _GEN_13;
  assign _037_ = _T_12 ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:342.18-342.23|mutual/pr_bar/work_w1/mutual.sv:342.14-348.8" */ \rules_6.io_n_out_1  : _036_;
  assign _038_ = _T_14 ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:340.18-340.23|mutual/pr_bar/work_w1/mutual.sv:340.14-348.8" */ \rules_7.io_n_out_1  : _037_;
  assign _006_ = reset ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:338.9-338.14|mutual/pr_bar/work_w1/mutual.sv:338.5-348.8" */ 2'h0 : _038_;
  assign _039_ = _T_10 ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:333.18-333.23|mutual/pr_bar/work_w1/mutual.sv:333.14-337.8" */ \rules_0.io_n_in_0  : _GEN_12;
  assign _040_ = _T_12 ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:331.18-331.23|mutual/pr_bar/work_w1/mutual.sv:331.14-337.8" */ \rules_0.io_n_in_0  : _039_;
  assign _041_ = _T_14 ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:329.18-329.23|mutual/pr_bar/work_w1/mutual.sv:329.14-337.8" */ \rules_0.io_n_in_0  : _040_;
  assign _005_ = reset ? /* full_case = 32'd1 */ /* src = "mutual/pr_bar/work_w1/mutual.sv:327.9-327.14|mutual/pr_bar/work_w1/mutual.sv:327.5-337.8" */ 2'h0 : _041_;
  assign _GEN_0 = _T ? /* src = "mutual/pr_bar/work_w1/mutual.sv:192.23-192.56" */ \rules_0.io_n_out_0  : \rules_0.io_n_in_0 ;
  assign _GEN_1 = _T ? /* src = "mutual/pr_bar/work_w1/mutual.sv:193.23-193.56" */ \rules_0.io_n_in_1  : \rules_0.io_n_in_1 ;
  assign _GEN_2 = _T ? /* src = "mutual/pr_bar/work_w1/mutual.sv:194.18-194.47" */ \rules_0.io_x_in  : \rules_0.io_x_in ;
  assign _GEN_3 = _T_2 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:196.23-196.57" */ \rules_1.io_n_out_0  : _GEN_0;
  assign _GEN_4 = _T_2 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:197.23-197.57" */ \rules_0.io_n_in_1  : _GEN_1;
  assign _GEN_5 = _T_2 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:198.18-198.50" */ \rules_1.io_x_out  : _GEN_2;
  assign _GEN_6 = _T_4 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:200.23-200.57" */ \rules_2.io_n_out_0  : _GEN_3;
  assign _GEN_7 = _T_4 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:201.23-201.57" */ \rules_0.io_n_in_1  : _GEN_4;
  assign _GEN_8 = _T_4 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:202.18-202.50" */ \rules_0.io_x_in  : _GEN_5;
  assign _GEN_9 = _T_6 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:204.23-204.57" */ \rules_3.io_n_out_0  : _GEN_6;
  assign _GEN_10 = _T_6 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:205.24-205.58" */ \rules_0.io_n_in_1  : _GEN_7;
  assign _GEN_11 = _T_6 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:206.19-206.51" */ \rules_3.io_x_out  : _GEN_8;
  assign _GEN_12 = _T_8 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:208.24-208.58" */ \rules_0.io_n_in_0  : _GEN_9;
  assign _GEN_13 = _T_8 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:209.24-209.59" */ \rules_4.io_n_out_1  : _GEN_10;
  assign _GEN_14 = _T_8 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:210.19-210.52" */ \rules_0.io_x_in  : _GEN_11;
  assign _GEN_17 = _T_10 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:212.19-212.53" */ \rules_5.io_x_out  : _GEN_14;
  assign _GEN_20 = _T_12 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:214.19-214.53" */ \rules_0.io_x_in  : _GEN_17;
  assign _GEN_23 = _T_14 ? /* src = "mutual/pr_bar/work_w1/mutual.sv:216.19-216.53" */ \rules_7.io_x_out  : _GEN_20;
endmodule
