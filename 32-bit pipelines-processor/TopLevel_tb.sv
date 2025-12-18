module TopLevel_tb(

);
logic clk;
logic rst;
TopLevel toplevel(
    .clk(clk),
    .rst(rst)
);
initial begin
    clk<=0;
    forever begin
        #5 clk<=~clk;
    end
end
initial begin
    rst<=1;
    #5
    #5
    rst<=0;
    #5
    rst<=0;
    #150
    $stop;
end
endmodule