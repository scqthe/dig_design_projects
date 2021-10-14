/*
	IMPLEMENT THE FUNCTIONALITY OF A JK FLIP FLOP USING A SR FLIP FLOP
    
 	NOTE : USE NON-BLOCKING ASSINGMENTS FOR SEQUENTIAL DESIGN.
*/

`include "SR_FF.sv"


module SR_to_JK_conversion(J,K,clock,reset,Q,Qbar);
	
	
  //DECLARE INPUTS
  input J, K, clock, reset; // only J, K required for JK conversion; clock and reset meant for connected SRFF
    
  wire w1, w2;
  
  and a1(w1, Qbar, J);
  and a2(w2, K, Q);
  
  //DECLARE OUTPUT REGISTERS
  
  output Q,Qbar;
  // register instantiation done in the SRFF

  
  //INSTANTIATE SR FLIP FLOP : IMPLEMENT JK FLIP FLOP FUNCTIONALITY 
  
  SR_FF s1(w1, w2, clock, reset, Q, Qbar);
  
  
  // This connects 2 AND gates to the SR-FF
  // These AND gates combine the output Q of the SR-FF with input K
  // Output Qbar is also combined with input J, as per the diagram of a JKFF conversion
  // Non-latch conditions only occur for clock = 1 (hence the posedge condition in the SRFF), and no effect happens when clock = 0, so no need to consider it in the AND gate.
  
  
endmodule