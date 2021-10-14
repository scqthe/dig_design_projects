// Module - DFF positive edge with asynchronous active low preset that sets it to 1

module dff_asyncpre(clk, d, q, preset);
  //INITIALIZE INPUTS AND OUTPUTS BASED ON MANUAL INSTRUCTIONS
  input clk, d, preset;
  output reg q;
  
  //ALWAYS BLOCK
  	//IF PRESET = 0 THEN SET Q = 1
    //ADD D-FF FUNCTIONALITY
  //END ALWAYS BLOCK
  
  always @(posedge clk or negedge preset)
    begin
      if (!preset)
        q = 1'b1;
      else
        q = d;
    end
  
endmodule