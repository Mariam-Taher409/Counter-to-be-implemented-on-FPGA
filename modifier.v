module modefier (
    input clk, rst, 
    output  reg clko
);
    reg [23:0] internal;
    
	always @(posedge clk ) begin
		if(rst) begin
			internal<=0;
			clko<=0;
		end
		else
			internal<=internal+1;
		if(internal==2500000)
		begin	clko<=~clko;
		internal<=0;
		end
	end
	
endmodule