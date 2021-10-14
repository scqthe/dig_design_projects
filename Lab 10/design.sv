module counter_fsm
(
	input  clock, x, reset,
	output reg z
);
	
  reg[1:0] state;
  
  parameter S0 = 0, S1 = 1, S2 = 2, S3 = 3;
  
  
  always @(state) begin
    case (state)
      S0:
        z = 1'b0;
      S1:
        z = 1'b1;
      S2:
        z = 1'b0;
      S3:
        z = 1'b1;
      default:
        z = 1'b0;
    endcase
  end
  
  always @(posedge clock) begin
    if (reset)
      state <= S0;
    else
      case(state)
        S0:
          if (x) state <= S3;
          else state <= S1;
        S1:
          if (x) state <= S0;
          else state <= S2;
        S2:
          if (x) state <= S1;
        else state <= S3;
        S3:
          if (x) state <= S2;
          else state <= S0;
      endcase
  end

	
endmodule
