module seq_gen(
	       clk,
	       ce,
	       clr,
	       state
	       );
   input clk;
   input ce;
   input clr;
   output reg [3:0] state;

   always @(posedge clk or negedge clr)
     begin
	if(ce === 1'b0)
	  begin
	     state <= 4'b0000;
	  end
	else
	  if(clr === 1'b0)
	    begin
	       state <= 4'b0000;
	    end
	  else
	    begin
	       case(state)
		 4'b0000:
		   begin
		      state <= 4'b1000;
		   end
		 4'b1000:
		   begin
		      state <= 4'b0100;
		   end
		 4'b0100:
		   begin
		      state <= 4'b0010;
		   end
		 4'b0010:
		   begin
		      state <= 4'b0001;
		   end
		 4'b0001:
		   begin
		      state <= 4'b1000;
		   end
		 default:	// 
		   begin
		      state <= 4'b0000;
		   end
	       endcase // case (state)
	       
	    end
     end // always @ (posedge clk or negedge clr)
endmodule // seq_gen
