/////////////////////////////////////////////////////////////////////////////////////////////
/// TSMC Library/IP Product
/// Filename: tpd018bcdnv5.v
/// Technology: c018bcd40v
/// Product Type: Standard I/O
/// Product Name: tpd018bcdnv5
/// Version: 110a
////////////////////////////////////////////////////////////////////////////////////////////
////
///  STATEMENT OF USE
///
///  This information contains confidential and proprietary information of TSMC.
///  No part of this information may be reproduced, transmitted, transcribed,
///  stored in a retrieval system, or translated into any human or computer
///  language, in any form or by any means, electronic, mechanical, magnetic,
///  optical, chemical, manual, or otherwise, without the prior written permission
///  of TSMC.  This information was prepared for informational purpose and is for
///  use by TSMC's customers only.  TSMC reserves the right to make changes in the
///  information at any time and without notice.
///
////////////////////////////////////////////////////////////////////////////////////////////
`timescale 1ns/10ps

`celldefine
module PDDW0208CDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 0;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDDW0208SCDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 0;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDDW0412CDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 0;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDDW0412SCDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 0;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDUW0208CDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 1;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDUW0208SCDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 1;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDUW0412CDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 1;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDUW0412SCDG (I,DS,OEN,PAD,C,PE,IE);
   input I,DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 1;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen);
  bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den); 
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              pull_uen <= #PullTime 1;
              pull_den <= #PullTime 0;
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              pull_den <= #PullTime 1;
              pull_uen <= #PullTime 0;
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (I => PAD)=(0, 0);
     if (DS == 1'b1) (I => PAD)=(0, 0);
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify

endmodule
`endcelldefine

`celldefine
module PDUW0412SOPD (DS,OEN,PAD,C,PE,IE);
   input DS,OEN,PE,IE;
   inout PAD;
   output C;
   wire  MG;
   parameter PullTime = 100000;
   reg lastPAD, pull_uen, pull_den,PS,I, POC;
initial begin
  pull_uen = 0;
  pull_den = 0;
  PS = 1;
  I  = 0;
  POC = 0;
end
  bufif1 (weak0, weak1)(PAD_i, 1'b1, pull_uen_temp);
  //bufif1 (weak0, weak1)(PAD_i, 1'b0, pull_den_temp);
  or     (pull_uen_temp, POC, pull_uen); 
  //or     (pull_den_temp, POC, pull_den);
  buf    (C, CO);
  and    (CO, C_buf, IE);
  nand   (PUEN, PS, PE);
  not    (PU, PUEN);
  not    (PSB, PS);
  and    (PD, PE, PSB);
  bufif0 (PAD_q, I, OEN_temp);
  or     (OEN_temp, OEN, POC);
  pmos   (DS_tmp, DS, 1'b0);
  pmos   (C_buf, PAD, 1'b0);
  pmos   (MG, PAD_q, 1'b0);
  pmos   (MG, PAD_i, 1'b0);
  pmos   (PAD, MG, 1'b0);
  always @(PAD) lastPAD=PAD;
  always @(POC) begin    
    pull_uen = 0;
    pull_den = 0; 	
  end
  always @(PAD or PU or PD) begin
    if (PAD === 1'bx && !$test$plusargs("bus_conflict_off") && $countdrivers(PAD))
       $display("ERROR : %t ++BUS CONFLICT++ : %m", $realtime);
    if (PAD === 1'bz || (PAD === 1'b1) || (PAD === 1'b0)) begin
         if (PU) begin
            if (lastPAD === 1'b1) 
            begin
              pull_uen=1; pull_den=0;
            end
            else begin
              if (PAD === 1'b1) begin
              end
              else begin
                pull_uen <= #PullTime 1;
                pull_den <= #PullTime 0;
              end
            end
         end           
         else pull_uen=0;
         if (PD) begin
            if (lastPAD === 1'b0) 
            begin
              pull_den=1; pull_uen=0;
            end
            else begin
              if (PAD === 1'b0) begin
              end
              else begin
                pull_den <= #PullTime 1;
                pull_uen <= #PullTime 0;
              end
            end
         end
         else pull_den=0;
    end 
  end
   specify
     if (DS == 1'b0) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     if (DS == 1'b1) (OEN => PAD)=(0, 0, 0, 0, 0, 0);
     (PAD => C)=(0, 0);
     (IE => C)=(0, 0);
   endspecify
endmodule
`endcelldefine

`celldefine
module PVDD1ANA (AVDD);
    inout   AVDD;
    tran (AVDD,AVDD);
endmodule
`endcelldefine

`celldefine
module PVDD1CDG (VDD);
    inout   VDD;
    tran (VDD,VDD);
endmodule
`endcelldefine

`celldefine
module PVDD2ANA (AVDD);
    inout   AVDD;
    tran (AVDD,AVDD);
endmodule
`endcelldefine

`celldefine
module PVDD2CDG (VDDPST);
    inout   VDDPST;
    tran (VDDPST,VDDPST);
endmodule
`endcelldefine

`celldefine
module PVSS1ANA (AVSS);
    inout   AVSS;
    tran (AVSS,AVSS);
endmodule

`endcelldefine

`celldefine
module PVSS1CDG (VSS);
    inout   VSS;
    tran (VSS,VSS);
endmodule
`endcelldefine

`celldefine
module PVSS2ANA (AVSS);
    inout   AVSS;
    tran (AVSS,AVSS);
endmodule

`endcelldefine

`celldefine
module PVSS2CDG (VSSPST);
    inout   VSSPST;
    tran (VSSPST,VSSPST);
endmodule
`endcelldefine

`celldefine
module PVSS3CDG (VSS);
    inout   VSS;
    tran (VSS,VSS);
endmodule
`endcelldefine

`celldefine
module PXOE2CDG (XC, XO, XI, XE);
    input XI, XE;
    output XC, XO;
    not                  (XC, XO);
    nand                 (XO, XE, XI);
    specify
       (XE => XC)=(0, 0);
       (XE => XO)=(0, 0);
       (XI => XC)=(0, 0);
       (XI => XO)=(0, 0);
    endspecify
endmodule
`endcelldefine

