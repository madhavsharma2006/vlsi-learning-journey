module example ;
  reg [3:0] a ;
  reg signed [3:0] c ;
  reg [3:0] shift_logic_right ;
  reg [3:0] shift_logic_left ;
  reg [3:0] shift_arth_left ; 
  reg [3:0] shift_arth_right; 
  initial
    begin 
      $display ("for unsigned ");
      a = 4'b1010;
      shift_logic_right = a >> 1; shift_logic_left = a << 1;
      shift_arth_left = a <<< 1 ;
      shift_arth_right  = a >>>1 ;
      $display("right shift: %b, left shift: %b" ,shift_logic_right, shift_logic_left);
      $display("arth right shift: %b,arth left shift: %b" ,shift_arth_right, shift_arth_left); 
      a= -10; // 2's comp 
      shift_logic_right = a >> 1; shift_logic_left = a << 1;
      $display("logic right shift: %b,logic left shift: %b" ,shift_logic_right, shift_logic_left); 
      shift_arth_left = a <<< 1 ;
      shift_arth_right  = a >>>1 ;
      $display("arth right shift: %b,arth left shift: %b" ,shift_arth_right, shift_arth_left); 
      
      $display ("these are for signed ");
      
      c = 4'b1010;
      shift_logic_right = c >> 1; shift_logic_left = c << 1;
      shift_arth_left = c <<< 1 ;
      shift_arth_right  = c >>>1 ;
      $display("right shift: %b, left shift: %b" ,shift_logic_right, shift_logic_left);
      $display("arth right shift: %b,arth left shift: %b" ,shift_arth_right, shift_arth_left); 
      c= -10; // 2's comp 
      shift_logic_right = c >> 1; shift_logic_left = c << 1;
      $display("logic right shift: %b,logic left shift: %b" ,shift_logic_right, shift_logic_left); 
      shift_arth_left = c <<< 1 ;
      shift_arth_right  = c >>>1 ;
      $display("arth right shift: %b,arth left shift: %b" ,shift_arth_right, shift_arth_left); 
    end 
endmodule 
