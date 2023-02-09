//AES TestBench
`timescale 1ns/1ns

module AES_TB;
parameter CLOCK = 10;

reg  [127:0] Din_E,Din_D;
reg  [127:0] Key_E,Key_D;
reg  Drdy_E,Drdy_D;
reg  Krdy_E,Krdy_D;
reg  RSTn_E,RSTn_D;
reg  EN_E, EN_D;
reg  CLK;
wire [127:0] Dout_E, Dout_D;
wire BSY_E, BSY_D;
wire Dvld_E, Dvld_D;

AES_CO AES_CO(
  .Din_E(Din_E),
  .Din_D(Din_D),
  .Key_E(Key_E),
  .Key_D(Key_D),
  .Dout_E(Dout_E),
  .Dout_D(Dout_D),
  .Datardy_E(Drdy_E),
  .Datardy_D(Drdy_D),
  .Keyrdy_E(Krdy_E),
  .Keyrdy_D(Krdy_D),
  .RST_E(RSTn_E),
  .RST_D(RSTn_D),
  .EN_E(EN_E),
  .EN_D(EN_D),
  .CLK(CLK),
  .BSY_E(BSY_E),
  .BSY_D(BSY_D),
  .Dvld_E(Dvld_E),
  .Dvld_D(Dvld_D)
);

// FIPS-197 Test Vectors
reg [127:0] KE, KD, CT, PT;
initial KE = 128'h000102030405060708090a0b0c0d0e0f; // Encryption Key
initial KD = 128'h13111d7fe3944a17f307a78b4d2b30c5; // Decryption Key (Encryption finlarl round key)
initial PT = 128'h13d25a7b4cb601078099245628742233; //h00112233445566778899aabbccddeeff; // Plain Text
initial CT = 128'h9c7bc0d5fe21607be462238ffff3106d; //h69c4e0d86a7b0430d8cdb78070b4c55a; // Cipher Text

initial CLK = 1;
always #(CLOCK/2)
  CLK <= ~CLK;

initial begin

#(CLOCK/2)
// Reset
  EN_E <= 0;
  EN_D <= 0;
  RSTn_E <= 0;
  RSTn_D <= 0;
  Krdy_E <= 0;
  Krdy_D <= 0;
  Drdy_E <= 0;
  Drdy_D <= 0;

// Encryption key set
#(CLOCK)
  RSTn_E <= 1;
  EN_E <= 1;
  Key_E  <= KE;
  Krdy_E <= 1;

// Cipher text set
#(CLOCK)
  Krdy_E <= 0;
  Din_E  <= PT;
  Drdy_E <= 1;

#(CLOCK*1)
  Drdy_E <= 0;
#(CLOCK*10)

// Decryption key set
#(CLOCK)
  RSTn_D <= 1;
  EN_E <= 0;
  EN_D <= 1;
  Key_D  <= KD;
  Krdy_D <= 1;

// Plain text set
#(CLOCK)
  Krdy_D <= 0;
  Din_D  <= CT;
  Drdy_D <= 1;

#(CLOCK*1)
  Drdy_D <= 0;

#(CLOCK*10)
#(CLOCK*10)
  $finish;
   
end
endmodule
