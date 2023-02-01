
`timescale 1ns/10ps

module clefia_128 (
    c,
    done,

    clk,
    reset_n,    
    k,
    p,
    start,
    keygen,
    encrypt
    );

output  [127:0] c;          // 128-bit ciphertext
output          done;       //


input           clk;
input           reset_n;    
input   [127:0] k;          // 128-bit key
input   [127:0] p;          // 128-bit plaintext
input           start;
input           keygen;
input           encrypt;


wire    [127:0] c;
wire            done;

wire            clk;
wire            reset_n;
wire    [127:0] k;
wire    [127:0] p;
wire            start;
wire            keygen;
wire            encrypt;

reg     [  4:0] round;

wire    [ 63:0] con;
reg     [127:0] l;          // L

reg     [ 31:0] rk0;
reg     [ 31:0] rk1;

wire    [ 31:0] wk0;
wire    [ 31:0] wk1;
wire    [ 31:0] wk2;
wire    [ 31:0] wk3;

wire    [127:0] rout;
reg     [127:0] rin;


always @ (posedge clk or negedge reset_n)
begin
    if (!reset_n)
        round <= 5'h1F;
    else if (start)
        round <= round + 5'h01;
end

assign {wk0, wk1, wk2, wk3} = k;

always @ (posedge clk or negedge reset_n)
begin
    if (!reset_n)
        rin <= 128'h0;
    else if (round == 5'h1F)
        rin <= k;
    else if (round == 5'h0B)
        rin <= p ^ {32'h0, wk0, 32'h0, wk1};
    else
        rin <= rout;
end

always @ (posedge clk or negedge reset_n)
begin
    if (!reset_n)
        l <= 128'h0;
    else if (round == 5'h0B)
        l <= {rout[31:0], rout[127:32]};
    else if (round[0] == 1'b1)
        l <= {l[120:64], l[6:0], l[127:121], l[63:7]};
end

always @ (*)
begin
    case (round)
        5'h0C: {rk0, rk1} = l[127:64] ^ con;
        5'h0D: {rk0, rk1} = l[ 63: 0] ^ con;
        5'h0E: {rk0, rk1} = l[127:64] ^ con ^ k[127:64];
        5'h0F: {rk0, rk1} = l[ 63: 0] ^ con ^ k[ 63: 0];
        5'h10: {rk0, rk1} = l[127:64] ^ con;
        5'h11: {rk0, rk1} = l[ 63: 0] ^ con;
        5'h12: {rk0, rk1} = l[127:64] ^ con ^ k[127:64];
        5'h13: {rk0, rk1} = l[ 63: 0] ^ con ^ k[ 63: 0];
        5'h14: {rk0, rk1} = l[127:64] ^ con;
        5'h15: {rk0, rk1} = l[ 63: 0] ^ con;
        5'h16: {rk0, rk1} = l[127:64] ^ con ^ k[127:64];
        5'h17: {rk0, rk1} = l[ 63: 0] ^ con ^ k[ 63: 0];
        5'h18: {rk0, rk1} = l[127:64] ^ con;
        5'h19: {rk0, rk1} = l[ 63: 0] ^ con;
        5'h1A: {rk0, rk1} = l[127:64] ^ con ^ k[127:64];
        5'h1B: {rk0, rk1} = l[ 63: 0] ^ con ^ k[ 63: 0];
        5'h1C: {rk0, rk1} = l[127:64] ^ con;
        5'h1D: {rk0, rk1} = l[ 63: 0] ^ con;
        default: {rk0, rk1} = con;
    endcase
end


clefia_con_128 u_clefia_con_128 (
    .con    (con    ),
    .round  (round  )
    );

clefia_round u_clefia_round (
    .rout   (rout   ),
    .rin    (rin    ),
    .rk0    (rk0    ),
    .rk1    (rk1    )
    );

assign c = (round == 5'h1D) ? {rout[31:0], rout[127:96] ^ wk2, rout[95:64], rout[63:32] ^ wk3} : 128'h0;
assign done = round == 5'h1D;


endmodule
