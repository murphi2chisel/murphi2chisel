`ifndef VERILATOR
module testbench;
  reg [4095:0] vcdfile;
  reg clock;
`else
module testbench(input clock, output reg genclock);
  initial genclock = 1;
`endif
  reg genclock = 1;
  reg [31:0] cycle = 0;
  reg [6:0] PI_io_en_a;
  reg [0:0] PI_reset;
  wire [0:0] PI_clock = clock;
  system UUT (
    .io_en_a(PI_io_en_a),
    .reset(PI_reset),
    .clock(PI_clock)
  );
`ifndef VERILATOR
  initial begin
    if ($value$plusargs("vcd=%s", vcdfile)) begin
      $dumpfile(vcdfile);
      $dumpvars(0, testbench);
    end
    #5 clock = 0;
    while (genclock) begin
      #5 clock = 0;
      #5 clock = 1;
    end
  end
`endif
  initial begin
`ifndef VERILATOR
    #1;
`endif
    // UUT.$formal$protocol.\sv:74809$3_EN  = 1'b0;
    UUT._witness_.anyinit_procdff_13353 = 1'b0;
    UUT._witness_.anyinit_procdff_13355 = 1'b0;
    UUT._witness_.anyinit_procdff_13357 = 1'b0;
    UUT._witness_.anyinit_procdff_13359 = 1'b0;
    UUT._witness_.anyinit_procdff_13361 = 1'b0;
    UUT._witness_.anyinit_procdff_13363 = 1'b0;
    UUT._witness_.anyinit_procdff_13365 = 1'b0;
    UUT._witness_.anyinit_procdff_13367 = 1'b0;
    UUT._witness_.anyinit_procdff_13369 = 1'b0;
    UUT._witness_.anyinit_procdff_13371 = 1'b0;
    UUT._witness_.anyinit_procdff_13373 = 1'b0;
    UUT._witness_.anyinit_procdff_13375 = 1'b0;
    UUT._witness_.anyinit_procdff_13377 = 1'b0;
    UUT._witness_.anyinit_procdff_13379 = 1'b0;
    UUT._witness_.anyinit_procdff_13381 = 1'b0;
    UUT._witness_.anyinit_procdff_13383 = 1'b0;
    UUT._witness_.anyinit_procdff_13385 = 1'b0;
    UUT._witness_.anyinit_procdff_13387 = 1'b0;
    UUT._witness_.anyinit_procdff_13389 = 1'b0;
    UUT._witness_.anyinit_procdff_13391 = 1'b0;
    UUT._witness_.anyinit_procdff_13393 = 1'b0;
    UUT._witness_.anyinit_procdff_13395 = 1'b0;
    UUT._witness_.anyinit_procdff_13397 = 1'b0;
    UUT._witness_.anyinit_procdff_13399 = 1'b0;
    UUT._witness_.anyinit_procdff_13401 = 1'b0;
    UUT._witness_.anyinit_procdff_13403 = 1'b0;
    UUT._witness_.anyinit_procdff_13405 = 1'b0;
    UUT._witness_.anyinit_procdff_13407 = 1'b0;
    UUT._witness_.anyinit_procdff_13409 = 1'b0;
    UUT._witness_.anyinit_procdff_13411 = 1'b0;
    UUT._witness_.anyinit_procdff_13413 = 1'b0;
    UUT._witness_.anyinit_procdff_13415 = 1'b0;
    UUT._witness_.anyinit_procdff_13417 = 1'b0;
    UUT._witness_.anyinit_procdff_13419 = 1'b0;
    UUT._witness_.anyinit_procdff_13421 = 1'b0;
    UUT._witness_.anyinit_procdff_13423 = 1'b0;
    UUT._witness_.anyinit_procdff_13425 = 1'b0;
    UUT._witness_.anyinit_procdff_13427 = 1'b0;
    UUT._witness_.anyinit_procdff_13429 = 1'b0;
    UUT._witness_.anyinit_procdff_13431 = 1'b0;
    UUT._witness_.anyinit_procdff_13433 = 1'b0;
    UUT._witness_.anyinit_procdff_13435 = 1'b0;
    UUT._witness_.anyinit_procdff_13437 = 1'b0;
    UUT._witness_.anyinit_procdff_13439 = 1'b0;
    UUT._witness_.anyinit_procdff_13441 = 1'b0;
    UUT._witness_.anyinit_procdff_13443 = 1'b0;
    UUT._witness_.anyinit_procdff_13445 = 1'b0;
    UUT._witness_.anyinit_procdff_13447 = 1'b0;
    UUT._witness_.anyinit_procdff_13449 = 1'b0;
    UUT._witness_.anyinit_procdff_13451 = 1'b0;
    UUT._witness_.anyinit_procdff_13453 = 1'b0;
    UUT._witness_.anyinit_procdff_13455 = 1'b0;
    UUT._witness_.anyinit_procdff_13457 = 1'b0;
    UUT._witness_.anyinit_procdff_13459 = 1'b0;
    UUT._witness_.anyinit_procdff_13461 = 1'b0;
    UUT._witness_.anyinit_procdff_13463 = 1'b0;
    UUT._witness_.anyinit_procdff_13465 = 1'b0;
    UUT._witness_.anyinit_procdff_13467 = 1'b0;
    UUT._witness_.anyinit_procdff_13469 = 1'b0;
    UUT._witness_.anyinit_procdff_13471 = 1'b0;
    UUT._witness_.anyinit_procdff_13473 = 1'b0;
    UUT._witness_.anyinit_procdff_13475 = 1'b0;
    UUT._witness_.anyinit_procdff_13477 = 1'b0;
    UUT._witness_.anyinit_procdff_13479 = 1'b0;
    UUT._witness_.anyinit_procdff_13481 = 1'b0;
    UUT._witness_.anyinit_procdff_13483 = 1'b0;
    UUT._witness_.anyinit_procdff_13485 = 1'b0;
    UUT._witness_.anyinit_procdff_13487 = 1'b0;
    UUT._witness_.anyinit_procdff_13489 = 1'b0;
    UUT._witness_.anyinit_procdff_13491 = 1'b0;
    UUT._witness_.anyinit_procdff_13493 = 1'b0;
    UUT._witness_.anyinit_procdff_13495 = 1'b0;
    UUT._witness_.anyinit_procdff_13497 = 1'b0;
    UUT._witness_.anyinit_procdff_13499 = 1'b0;
    UUT._witness_.anyinit_procdff_13501 = 1'b0;
    UUT._witness_.anyinit_procdff_13503 = 1'b0;
    UUT._witness_.anyinit_procdff_13505 = 1'b0;
    UUT._witness_.anyinit_procdff_13507 = 1'b0;
    UUT._witness_.anyinit_procdff_13509 = 1'b0;
    UUT._witness_.anyinit_procdff_13511 = 1'b0;
    UUT._witness_.anyinit_procdff_13513 = 1'b0;
    UUT._witness_.anyinit_procdff_13515 = 1'b0;
    UUT._witness_.anyinit_procdff_13517 = 1'b0;
    UUT._witness_.anyinit_procdff_13519 = 1'b0;
    UUT._witness_.anyinit_procdff_13521 = 1'b0;
    UUT._witness_.anyinit_procdff_13523 = 1'b0;
    UUT._witness_.anyinit_procdff_13525 = 1'b0;
    UUT._witness_.anyinit_procdff_13527 = 1'b0;
    UUT._witness_.anyinit_procdff_13529 = 1'b0;
    UUT._witness_.anyinit_procdff_13531 = 1'b0;
    UUT._witness_.anyinit_procdff_13533 = 1'b0;
    UUT._witness_.anyinit_procdff_13535 = 1'b0;
    UUT._witness_.anyinit_procdff_13537 = 1'b0;
    UUT._witness_.anyinit_procdff_13539 = 1'b0;
    UUT._witness_.anyinit_procdff_13541 = 1'b0;
    UUT._witness_.anyinit_procdff_13543 = 1'b0;
    UUT._witness_.anyinit_procdff_13545 = 1'b0;
    UUT._witness_.anyinit_procdff_13547 = 1'b0;
    UUT._witness_.anyinit_procdff_13549 = 1'b0;
    UUT._witness_.anyinit_procdff_13551 = 1'b0;
    UUT._witness_.anyinit_procdff_13553 = 1'b0;
    UUT._witness_.anyinit_procdff_13555 = 1'b0;
    UUT._witness_.anyinit_procdff_13557 = 1'b0;
    UUT._witness_.anyinit_procdff_13559 = 1'b0;
    UUT._witness_.anyinit_procdff_13561 = 1'b0;
    UUT._witness_.anyinit_procdff_13563 = 1'b0;
    UUT._witness_.anyinit_procdff_13565 = 1'b0;
    UUT._witness_.anyinit_procdff_13567 = 1'b0;
    UUT._witness_.anyinit_procdff_13569 = 1'b0;
    UUT._witness_.anyinit_procdff_13571 = 1'b0;
    UUT._witness_.anyinit_procdff_13573 = 1'b0;
    UUT._witness_.anyinit_procdff_13575 = 1'b0;
    UUT._witness_.anyinit_procdff_13577 = 1'b0;
    UUT._witness_.anyinit_procdff_13579 = 1'b0;
    UUT._witness_.anyinit_procdff_13581 = 1'b0;
    UUT._witness_.anyinit_procdff_13583 = 1'b0;
    UUT._witness_.anyinit_procdff_13585 = 1'b0;
    UUT._witness_.anyinit_procdff_13587 = 1'b0;
    UUT._witness_.anyinit_procdff_13589 = 1'b0;
    UUT._witness_.anyinit_procdff_13591 = 1'b0;
    UUT._witness_.anyinit_procdff_13593 = 1'b0;
    UUT._witness_.anyinit_procdff_13595 = 1'b0;
    UUT._witness_.anyinit_procdff_13597 = 1'b0;
    UUT._witness_.anyinit_procdff_13599 = 1'b0;
    UUT._witness_.anyinit_procdff_13601 = 1'b0;
    UUT._witness_.anyinit_procdff_13603 = 1'b0;
    UUT._witness_.anyinit_procdff_13605 = 1'b0;
    UUT._witness_.anyinit_procdff_13607 = 1'b0;
    UUT._witness_.anyinit_procdff_13609 = 1'b0;
    UUT._witness_.anyinit_procdff_13611 = 1'b0;
    UUT._witness_.anyinit_procdff_13613 = 1'b0;
    UUT._witness_.anyinit_procdff_13615 = 1'b0;
    UUT._witness_.anyinit_procdff_13617 = 1'b0;
    UUT._witness_.anyinit_procdff_13619 = 1'b0;
    UUT._witness_.anyinit_procdff_13621 = 1'b0;
    UUT._witness_.anyinit_procdff_13623 = 1'b0;
    UUT._witness_.anyinit_procdff_13625 = 1'b0;
    UUT._witness_.anyinit_procdff_13627 = 1'b0;
    UUT._witness_.anyinit_procdff_13629 = 1'b0;
    UUT._witness_.anyinit_procdff_13631 = 1'b0;
    UUT._witness_.anyinit_procdff_13633 = 1'b0;
    UUT._witness_.anyinit_procdff_13635 = 1'b0;
    UUT._witness_.anyinit_procdff_13637 = 1'b0;
    UUT._witness_.anyinit_procdff_13639 = 1'b0;
    UUT.cache_reg_0 = 2'b00;
    UUT.cache_reg_1 = 2'b11;
    UUT.cache_reg_10 = 2'b00;
    UUT.cache_reg_11 = 2'b00;
    UUT.cache_reg_12 = 2'b00;
    UUT.cache_reg_2 = 2'b11;
    UUT.cache_reg_3 = 2'b00;
    UUT.cache_reg_4 = 2'b00;
    UUT.cache_reg_5 = 2'b00;
    UUT.cache_reg_6 = 2'b00;
    UUT.cache_reg_7 = 2'b00;
    UUT.cache_reg_8 = 2'b00;
    UUT.cache_reg_9 = 2'b00;
    UUT.channel1_reg_0 = 3'b000;
    UUT.channel1_reg_1 = 3'b011;
    UUT.channel1_reg_10 = 3'b000;
    UUT.channel1_reg_11 = 3'b000;
    UUT.channel1_reg_12 = 3'b000;
    UUT.channel1_reg_2 = 3'b111;
    UUT.channel1_reg_3 = 3'b000;
    UUT.channel1_reg_4 = 3'b000;
    UUT.channel1_reg_5 = 3'b011;
    UUT.channel1_reg_6 = 3'b000;
    UUT.channel1_reg_7 = 3'b000;
    UUT.channel1_reg_8 = 3'b000;
    UUT.channel1_reg_9 = 3'b000;
    UUT.channel2_4_reg_0 = 3'b100;
    UUT.channel2_4_reg_1 = 3'b010;
    UUT.channel2_4_reg_10 = 3'b111;
    UUT.channel2_4_reg_11 = 3'b101;
    UUT.channel2_4_reg_12 = 3'b000;
    UUT.channel2_4_reg_2 = 3'b111;
    UUT.channel2_4_reg_3 = 3'b111;
    UUT.channel2_4_reg_4 = 3'b111;
    UUT.channel2_4_reg_5 = 3'b111;
    UUT.channel2_4_reg_6 = 3'b111;
    UUT.channel2_4_reg_7 = 3'b111;
    UUT.channel2_4_reg_8 = 3'b111;
    UUT.channel2_4_reg_9 = 3'b111;
    UUT.channel3_reg_0 = 3'b000;
    UUT.channel3_reg_1 = 3'b001;
    UUT.channel3_reg_10 = 3'b000;
    UUT.channel3_reg_11 = 3'b001;
    UUT.channel3_reg_12 = 3'b000;
    UUT.channel3_reg_2 = 3'b011;
    UUT.channel3_reg_3 = 3'b000;
    UUT.channel3_reg_4 = 3'b100;
    UUT.channel3_reg_5 = 3'b100;
    UUT.channel3_reg_6 = 3'b100;
    UUT.channel3_reg_7 = 3'b001;
    UUT.channel3_reg_8 = 3'b010;
    UUT.channel3_reg_9 = 3'b010;
    UUT.home_current_client_reg = 4'b0111;
    UUT.home_current_command_reg = 3'b011;
    UUT.home_exclusive_granted_reg = 1'b1;
    UUT.home_invalidate_list_reg_0 = 1'b0;
    UUT.home_invalidate_list_reg_1 = 1'b0;
    UUT.home_invalidate_list_reg_10 = 1'b0;
    UUT.home_invalidate_list_reg_11 = 1'b0;
    UUT.home_invalidate_list_reg_12 = 1'b0;
    UUT.home_invalidate_list_reg_2 = 1'b1;
    UUT.home_invalidate_list_reg_3 = 1'b0;
    UUT.home_invalidate_list_reg_4 = 1'b0;
    UUT.home_invalidate_list_reg_5 = 1'b0;
    UUT.home_invalidate_list_reg_6 = 1'b0;
    UUT.home_invalidate_list_reg_7 = 1'b0;
    UUT.home_invalidate_list_reg_8 = 1'b0;
    UUT.home_invalidate_list_reg_9 = 1'b0;
    UUT.home_sharer_list_reg_0 = 1'b0;
    UUT.home_sharer_list_reg_1 = 1'b0;
    UUT.home_sharer_list_reg_10 = 1'b0;
    UUT.home_sharer_list_reg_11 = 1'b0;
    UUT.home_sharer_list_reg_12 = 1'b0;
    UUT.home_sharer_list_reg_2 = 1'b0;
    UUT.home_sharer_list_reg_3 = 1'b0;
    UUT.home_sharer_list_reg_4 = 1'b0;
    UUT.home_sharer_list_reg_5 = 1'b0;
    UUT.home_sharer_list_reg_6 = 1'b0;
    UUT.home_sharer_list_reg_7 = 1'b0;
    UUT.home_sharer_list_reg_8 = 1'b0;
    UUT.home_sharer_list_reg_9 = 1'b0;

    // state 0
    PI_io_en_a = 7'b0000000;
    PI_reset = 1'b1;
  end
  always @(posedge clock) begin
    // state 1
    if (cycle == 0) begin
      PI_io_en_a <= 7'b0000010;
      PI_reset <= 1'b0;
    end

    // state 2
    if (cycle == 1) begin
      PI_io_en_a <= 7'b0001101;
      PI_reset <= 1'b0;
    end

    // state 3
    if (cycle == 2) begin
      PI_io_en_a <= 7'b0011001;
      PI_reset <= 1'b1;
    end

    // state 4
    if (cycle == 3) begin
      PI_io_en_a <= 7'b1100010;
      PI_reset <= 1'b1;
    end

    // state 5
    if (cycle == 4) begin
      PI_io_en_a <= 7'b0011010;
      PI_reset <= 1'b1;
    end

    // state 6
    if (cycle == 5) begin
      PI_io_en_a <= 7'b1100001;
      PI_reset <= 1'b0;
    end

    // state 7
    if (cycle == 6) begin
      PI_io_en_a <= 7'b1001010;
      PI_reset <= 1'b0;
    end

    // state 8
    if (cycle == 7) begin
      PI_io_en_a <= 7'b1010101;
      PI_reset <= 1'b0;
    end

    // state 9
    if (cycle == 8) begin
      PI_io_en_a <= 7'b1100010;
      PI_reset <= 1'b0;
    end

    // state 10
    if (cycle == 9) begin
      PI_io_en_a <= 7'b0000000;
      PI_reset <= 1'b0;
    end

    genclock <= cycle < 10;
    cycle <= cycle + 1;
  end
endmodule
