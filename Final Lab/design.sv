module gameboy
(
	input  clock, reset,
  input [1:0] x,
  output reg [2:0] z
);
	
	// Declare state register
    reg  [1:0] state;
	
	// Declare states
	parameter IDLE = 0, FIGHT = 1, REACT = 2;
  
  	//Declare Actions
  	parameter Kick = 3'b000, Punch = 3'b001, Jump = 3'b010, Duck = 3'b011, Run = 3'b100;
  
  	//Declare Buttons
  	parameter Fight = 0, React = 1, A = 2, B = 3;
  
  always @(posedge clock) begin
    if (reset)
      state <= IDLE;
      
    else
      case(state)
        IDLE:
          if (x == Fight) state <= FIGHT;
          else if (x == React) state <= REACT;
          else state <= IDLE;
        FIGHT:
          if (x == Fight)
            state <= IDLE;
          else
            state <= FIGHT;
        REACT:
          if (x == React)
            state <= IDLE;
          else
            state <= REACT;
      endcase
  end
  
  always @(posedge clock, x) begin
      case(state)
        IDLE:
          z <= Run;
        FIGHT:
          if (x == Fight)
            z <= Run;
        else if (x == A)
          z <= Kick;
        else if (x == B)
          z <= Punch;
        REACT:
          if (x == React)
            z <= Run;
        else if (x == A)
          z <= Jump;
        else if (x == B)
          z <= Duck;
      endcase
  end
endmodule
