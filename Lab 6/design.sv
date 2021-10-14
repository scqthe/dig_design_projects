//GATE-LEVEL MODELLING OR STRUCTURAL MODELLING
//A strucutural model of a logic circuit is encapsulated by keywords 'MODULE' and 'ENDMODULE'


module one_bit_comparator(A, Z); //Module definition accomponied by it's port's

	//DECLARING PORT MODES: 
  	
  	input [3:0] A; 			//A 4-bit binary input   
	output Z; 				//A 1-bit binary output
  
  	//ANY INTERNAL WIRES THAT ESTABLISH CONNECTIVITY
  	
  	wire w1, w2, w3, w4, w5, w6, w7;
  
  	//DECLARE ANY EXTRA WIRES IF NECCESSARY:
  not(w1, A[0]); // w1 = not A4
  not(w2, A[1]); // w2 = not A3
  not(w3, A[2]); // w3 = not A2
  not(w4, A[3]); // w4 = not A1
  and(w5, w1, w2, w4); // w5 = A1'A3'A4'
  and(w6, w2, w3, A[3]); // w6 = A1A2'A3'
  and(w7, w1, w2, w3); // w7 = A2'A3'A4'
  or(Z, w5, w6, w7); // Z = A1'A3'A4' + A1A2'A3' + A2'A3'A4'
  	
	/*
    DECALRE/INSTANTIATE YOUR PRIMITIVES HERE:
      	
    example: nand g_1(out_1, in_1, in_2, in_3) - a 3-input 'NAND' named g_1 with the output as out_1.  
  
  	USING STRUCTURAL MODELLING IMPLEMENT THE SAME FUNCTION FROM Q4 ON LAB 5:
    NOTE: the terms A1, A2, A3 and A4 from lab 5 is represented as A[3], A[2], A[1] and A[0] respectively.
  	*/
  	

endmodule 