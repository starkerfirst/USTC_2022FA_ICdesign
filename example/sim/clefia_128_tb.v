`timescale 1ns/10ps


module clefia_128_tb;


wire    [127:0] c;
wire            done;

reg             clk;
reg             reset_n;
reg     [127:0] k;
reg     [127:0] p;
reg             start;
reg             keygen;
reg             encrypt;


clefia_128 u_clefia_128 (
    .c          (c          ),
    .done       (done       ),

    .clk        (clk        ),
    .reset_n    (reset_n    ),    
    .k          (k          ),
    .p          (p          ),
    .start      (start      ),
    .keygen     (keygen     ),
    .encrypt    (encrypt    )
    );



always #10 clk = ~clk;

initial
begin
    clk     = 1'b0;
    reset_n = 1'b0;
    k       = 128'b0;
    p       = 128'b0;
    start   = 1'b0;
    keygen  = 1'b0;
    encrypt = 1'b1;

    #15;
    reset_n = 1'b1;

    #10;    // 25ns
    start   = 1'b1;
    k       = 128'hFFEEDDCCBBAA99887766554433221100;

    #240;   // 265ns
    p       = 128'h000102030405060708090A0B0C0D0E0F;

    #380;   // 620
    $finish;
end



initial
begin
    $fsdbDumpfile("./debug/clefia_128_tb.fsdb");
    $fsdbDumpvars(0, clefia_128_tb);
    $fsdbDumpflush;
end


initial
    $sdf_annotate("./clefia_128.sdf", u_clefia_128);

endmodule
