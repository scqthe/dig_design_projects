/*
		DESIGNING THE BEHAVIOURAL MODEL OF A SR FLIP FLOP
*/


module SR_FF(S,R,clock,reset,Q,Qbar);
	

	//DECLARE INPUTS
  input S, R, clock, reset;
    
  
  	//DECLARE OUTPUT REGISTERS
  output reg Q;
  output Qbar;
  
  assign Qbar = ~Q; // fix Qbar to be the inverse of Q
  
  	//DESIGN THE BEHAVIOURAL MODEL OF A SR FLIP FLOP USING AN "ALWAYS" BLOCK DEPENDENT ON CLOCK 
  
  always @(posedge clock) begin
    
    if(reset)
      Q <= 0; // given if reset = 1, Q = 0
    
    else begin
      
      case ({S,R})
        2'b00: Q <= Q;
        2'b01: Q <= 0;
        2'b10: Q <= 1;
        2'b11: Q <= 0; // Q = 0 as default for the invalid case
        default: Q <= Q;
      endcase
      
    end
    
  end
  	
endmodule