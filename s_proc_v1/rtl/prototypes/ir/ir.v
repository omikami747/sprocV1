//////////////////////////////////////////////////////////////////////
//
// Author : Omkar Girish Kamath
// Instruction Register Prototype
// Data : 20 / 11 / 22
//
//////////////////////////////////////////////////////////////////////

module ir(
          clk,
          rst,
          c_e,
          d_in,
          d_out
          );
   
   input wire rst;
   input wire clk;
   input wire c_e;
   input wire [15:0] d_in;
   output reg [15:0] d_out;
   always @(posedge clk or negedge rst or negedge c_e)
     begin
        if(c_e === 1'b0)
	  begin
	  end
	else
	  begin
	     d_out <= d_in;
	     
	  end
     end // always @ (posedge clk or negedge rst or negedge c_e)
   
endmodule
