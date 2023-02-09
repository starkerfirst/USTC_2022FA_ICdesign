//AES TestBench
`timescale 1ns/1ns

module AES_TB;
parameter CLOCK = 10;

reg  [127:0] Din;
reg  [127:0] Key;
reg  Drdy;
reg  Krdy;
reg  RSTn;
reg  EN;
reg  MODE;
reg  CLK;
wire [127:0] Dout;
wire BSY;
wire Dvld;

AES_CH AES_CH(
  .Din(Din),
  .Key(Key),
  .Dout(Dout),
  .Datardy(Drdy),
  .Keyrdy(Krdy),
  .RST(RSTn),
  .EN(EN),
  .MODE(MODE),
  .CLK(CLK),
  .BSY(BSY),
  .Dvld(Dvld)
);

// FIPS-197 Test Vectors
reg [127:0] KE, KD, CT, PT, CT2, PT2;
initial KE = 128'h000102030405060708090a0b0c0d0e0f; // Encryption Key
initial KD = 128'h13111d7fe3944a17f307a78b4d2b30c5; // Decryption Key (Encryption final round key)
initial PT = 128'h13d25a7b4cb601078099245628742233; // Plain Text
initial CT = 128'h9c7bc0d5fe21607be462238ffff3106d; // Cipher Text
initial PT2 = 128'h00112233445566778899aabbccddeeff; // Plain Text
initial CT2 = 128'h69c4e0d86a7b0430d8cdb78070b4c55a; // Cipher Text

initial CLK = 1;
always #(CLOCK/2)
  CLK <= ~CLK;

initial begin

#(CLOCK/2)
// Reset
  EN <= 0;
  RSTn <= 0;
  Krdy <= 0;
  Drdy <= 0;
MODE <= 0;

// Encryption key set
#(CLOCK)
  RSTn <= 1;
  EN <= 1;
  Key <= KE;
  Krdy <= 1;

// Cipher text set
#(CLOCK)
  Krdy <= 0;
  Din  <= PT;
  Drdy <= 1;

#(CLOCK*1)
  Drdy <= 0;
#(CLOCK*10)

// Decryption key set
#(CLOCK)
MODE <= 1;
  RSTn <= 1;
  Key  <= KD;
  Krdy <= 1;

// Plain text set
#(CLOCK)
  Krdy <= 0;
  Din  <= CT;
  Drdy <= 1;

#(CLOCK*1)
  Drdy <= 0;
  

#(CLOCK*10)


// Encryption key set
#(CLOCK)
MODE <= 0;
  RSTn <= 1;
  EN <= 1;
  Key <= KE;
  Krdy <= 1;

// Cipher text set
#(CLOCK)
  Krdy <= 0;
  Din  <= PT2;
  Drdy <= 1;

#(CLOCK*1)
  Drdy <= 0;
#(CLOCK*10)

// Decryption key set
#(CLOCK)MODE <= 1;
  RSTn <= 1;
  Key  <= KD;
  Krdy <= 1;

// Plain text set
#(CLOCK)
  Krdy <= 0;
  Din  <= CT2;
  Drdy <= 1;

#(CLOCK*1)
  Drdy <= 0;
  

#(CLOCK*12)

  $finish;
   
end
endmodule
