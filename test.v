`timescale 1ns / 1ps
module tb_tic_tac_toe;


reg clock;
reg reset;
reg [50:0] user_input;
reg set_x_or_o;
wire [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9;
wire [1:0] result;
wire x_or_o;
tic_tac_toe_game uut(
    .clock(clock),
    .reset(reset),
    .user_input(user_input),
    .set_x_or_o(set_x_or_o),
    .pos1(pos1),
    .pos2(pos2),
    .pos3(pos3),
    .pos4(pos4),
    .pos5(pos5),
    .pos6(pos6),
    .pos7(pos7),
    .pos8(pos8),
    .pos9(pos9),
  .result(result),
    .x_or_o(x_or_o)
);
initial
begin
    clock = 0;
    forever #50 clock = ~clock;
end
initial 
begin
    reset=1;
    set_x_or_o=1;
    #100;
    reset=0;
  set_x_or_o=0;
    #100;
    user_input=1;
    #100;
    user_input=4;
    #100;
  user_input=2;
    #100;
  user_input=5;
    #100;
  user_input=3;
    #100;
  user_input=6;
    #100;
  user_input=2;
  #100;
    user_input=9;
    #100;
    user_input=5;
    #100;
    user_input=1;
    #100;
    user_input=8;
    #100;
    user_input=0;
    #100;
    end

endmodule