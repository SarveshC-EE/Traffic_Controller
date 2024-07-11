module test_traffic_light();
  reg c,clk,rst_n;
  wire [2:0] light_farm, light_highway;
  
  traffic_light dut(.c(c), .clk(clk), .rst_n(rst_n), .light_farm(light_farm), .light_highway(light_highway));
  
  initial begin
    clk = 1;
    forever
      #1 clk = ~clk;
  end
  
  initial begin
    $dumpfile("dump.vcd");
    $dumpvars(1);
  end
  
  initial begin
    
    c = 0;
    rst_n = 0;
    
    #10
    c = 1;
    rst_n = 0;
    
    #10
    c = 0;
    rst_n = 0;
    
    #10
    c = 1;
    rst_n = 1;
    
    #5
    rst_n = 0; 
    
    #5
    c=0;
    rst_n = 0;
    
    #10
    $finish();
    
  end
  
endmodule
  