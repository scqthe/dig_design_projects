/*
	DESIGN NAME - 2'S COMPLEMENT CALCULATOR
    
    SPECIFICATION - WE HAVE A 4-BIT INPUT, AND A 4-BIT OUTPUT.
    				THE OUTPUT SIMPLY NEEDS TO BE THE COMPLEMENT VALUE
                    OF THE INPUT ASSUMING 2'S COMPLEMENT SYSTEM
                    
    TIPS FOR THE DESIGN - SIMPLY USE THE 2'S COMPLEMENT FORMULA
    					  


*/

module twocmp(a, out);
  input  [3:0] a;
  output [3:0] out;
  
  // Finish the twocmp design below -
  reg [3:0] out;
   
  always @(a[3:0] or out[3:0])
    begin    
    
      out[3:0] = (~a[3:0] + 'b1);
      
    end

  
endmodule