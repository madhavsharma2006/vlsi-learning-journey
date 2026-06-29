module example ;
  reg [3:0]a ; 
  reg [3:0]b ;
  reg gt ;
  reg lt;
  reg gtoe;
  reg ltoe ;
  initial 
    begin 
      a = 4'b1011 ;
      b = 4'b1100 ;
      gt = a> b ;
      lt = b>a ;
      gtoe = a >= b ;
      ltoe = b >=a ;
      $display ("%b %b %b %b",gt,lt,gtoe,ltoe);
    end 
endmodule 
// if true then output 1, otherwise output 0 
