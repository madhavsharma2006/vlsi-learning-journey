module example ;
  reg [3:0]a ; 
  reg [3:0]b ;
  reg gt ;
  reg lt;
  reg gtoe;
  reg ltoe ;
  reg eq ;
  reg neq ;
  reg ceq; 
  reg nceq;  
  initial 
    begin 
      a = 4'b111x ;
      b = 4'b1110 ;
      gt = a> b ;
      lt = b>a ;
      gtoe = a >= b ;
      ltoe = b >=a ;
      eq = a==b ; 
      neq = a!=b ; 
      ceq = a===b ;
      nceq = a!==b ;
      
      $display ("%b %b %b %b %b %b %b %b",gt,lt,gtoe,ltoe,eq,neq,ceq,nceq);
    end 
endmodule 
// if true then output 1, otherwise output 0 
