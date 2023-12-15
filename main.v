module tic_tac_toe_game(
    input [50:0] user_input,
    input clock,reset,
    input set_x_or_o,
    output reg [1:0] pos1,pos2,pos3,pos4,pos5,pos6,pos7,pos8,pos9,
    output reg [1:0] result,
    output reg x_or_o
    );

    reg repeated_input;
    reg win;
    reg no_space;
    reg all_empty;
    always @(posedge clock)
        begin
            if(result!=2'b00)
            begin
                result=2'b00;
            end
            if(set_x_or_o==1)
            begin
                x_or_o=0;
            end
            //reset the game (all_to_zero)
            if(reset ==1)
            begin
                no_space=0;
                win = 0;
                result=2'b00;
                pos1 = 2'b00;
                pos2 = 2'b00;
                pos3 = 2'b00;
                pos4 = 2'b00;
                pos5 = 2'b00;
                pos6 = 2'b00;
                pos7 = 2'b00;
                pos8 = 2'b00;
                pos9 = 2'b00;
            end
            //check input and write in position
            else
            begin
                if(user_input == 4'b0001)
                begin
                    if(pos1 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos1=2'b01;
                        end
                        else
                        begin
                            pos1=2'b10;
                        end  
                        repeated_input=0; 
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b0010)
                begin
                    if(pos2 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos2=2'b01;
                        end
                        else 
                        begin
                            pos2=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b0011)
                begin
                    if(pos3 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos3=2'b01;
                        end
                        else 
                        begin
                            pos3=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b0100)
                begin
                    if(pos4 == 2'b00)
                    begin
                    if(x_or_o==0)
                        begin
                            pos4=2'b01;
                        end
                        else 
                        begin
                            pos4=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b0101)
                begin
                    if(pos5 == 2'b00)
                    begin
                    if(x_or_o==0)
                        begin
                            pos5=2'b01;
                        end
                        else 
                        begin
                            pos5=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b0110)
                begin
                    if(pos6 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos6=2'b01;
                        end
                        else 
                        begin
                            pos6=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b0111)
                begin
                    if(pos7 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos7=2'b01;
                        end
                        else 
                        begin
                            pos7=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b1000)
                begin
                    if(pos8 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos8=2'b01;
                        end
                        else 
                        begin
                            pos8=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end 
                
                else if(user_input == 4'b1001)
                begin
                    if(pos9 == 2'b00)
                    begin
                        if(x_or_o==0)
                        begin
                            pos9=2'b01;
                        end
                        else 
                        begin
                            pos9=2'b10;
                        end
                        repeated_input=0;
                    end
                    else
                    begin
                        repeated_input=1;
                    end
                end

                //winner checker
                if( (pos1 > 2'b00 && pos2 > 2'b00 && pos3 > 2'b00 && pos1 == pos2 && pos1 == pos3 && pos2 == pos3) ||
                    (pos4 > 2'b00 && pos5 > 2'b00 && pos6 > 2'b00 && pos4 == pos5 && pos4 == pos6 && pos5 == pos6) ||
                    (pos7 > 2'b00 && pos8 > 2'b00 && pos9 > 2'b00 && pos7 == pos8 && pos7 == pos9 && pos8 == pos9) ||
                    (pos1 > 2'b00 && pos4 > 2'b00 && pos7 > 2'b00 && pos1 == pos4 && pos1 == pos7 && pos4 == pos7) ||
                    (pos2 > 2'b00 && pos5 > 2'b00 && pos8 > 2'b00 && pos2 == pos5 && pos2 == pos8 && pos5 == pos8) ||
                    (pos3 > 2'b00 && pos6 > 2'b00 && pos9 > 2'b00 && pos3 == pos6 && pos3 == pos9 && pos6 == pos9) ||
                    (pos1 > 2'b00 && pos5 > 2'b00 && pos9 > 2'b00 && pos1 == pos5 && pos1 == pos9 && pos5 == pos9) ||
                    (pos3 > 2'b00 && pos5 > 2'b00 && pos7 > 2'b00 && pos3 == pos5 && pos3 == pos7 && pos5 == pos7))
                begin
                win = 1;
                end
                else
                begin
                win = 0;
                end
                
                //no_space checker
                if((win==0) && (pos1 > 2'b00) && (pos2 > 2'b00) && (pos3 > 2'b00) && (pos4 > 2'b00) && (pos5 > 2'b00) && (pos6 > 2'b00) && (pos7 > 2'b00)
                && (pos8 > 2'b00) && (pos9 > 2'b00))
                begin
                    no_space = 1;
                end
                
                else
                begin
                    no_space = 0;
                end

                //calculate result
                if(win==1)
                begin
                    if(x_or_o==0)
                    begin
                        result=2'b01;
                    end
                    else
                    begin
                        result=2'b10;
                    end
                end
                else if(no_space==1)
                begin
                    result=2'b11;
                end
                else
                begin
                    result=2'b00;
                end

                //are all positions empty?
                if(pos1==2'b00 && pos2==2'b00 &&
                 pos3==2'b00 && pos4==2'b00 &&
                  pos5==2'b00 && pos6==2'b00 &&
                   pos7==2'b00 && pos8==2'b00 &&
                    pos9==2'b00 )
                begin
                    all_empty=1;
                end
                else
                begin
                    all_empty=0;
                end
                //calculate nex_move
                if(result==2'b00 && all_empty==0 && repeated_input==0)
                begin
                    x_or_o=~x_or_o;
                end
                else if (result>2'b00)
                begin
                    no_space=0;
                    win = 0;
                    pos1 = 2'b00;
                    pos2 = 2'b00;
                    pos3 = 2'b00;
                    pos4 = 2'b00;
                    pos5 = 2'b00;
                    pos6 = 2'b00;
                    pos7 = 2'b00;
                    pos8 = 2'b00;
                    pos9 = 2'b00;
                end
             
            end
        end


endmodule