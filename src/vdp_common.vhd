-- Copyright (c) 2010 Gregory Estrade (greg@torlus.com)
--
-- All rights reserved
--
-- Redistribution and use in source and synthezised forms, with or without
-- modification, are permitted provided that the following conditions are met:
--
-- Redistributions of source code must retain the above copyright notice,
-- this list of conditions and the following disclaimer.
--
-- Redistributions in synthesized form must reproduce the above copyright
-- notice, this list of conditions and the following disclaimer in the
-- documentation and/or other materials provided with the distribution.
--
-- Neither the name of the author nor the names of other contributors may
-- be used to endorse or promote products derived from this software without
-- specific prior written permission.
--
-- THIS SOFTWARE IS PROVIDED BY THE COPYRIGHT HOLDERS AND CONTRIBUTORS "AS IS"
-- AND ANY EXPRESS OR IMPLIED WARRANTIES, INCLUDING, BUT NOT LIMITED TO,
-- THE IMPLIED WARRANTIES OF MERCHANTABILITY AND FITNESS FOR A PARTICULAR
-- PURPOSE ARE DISCLAIMED. IN NO EVENT SHALL THE AUTHOR OR CONTRIBUTORS BE
-- LIABLE FOR ANY DIRECT, INDIRECT, INCIDENTAL, SPECIAL, EXEMPLARY, OR
-- CONSEQUENTIAL DAMAGES (INCLUDING, BUT NOT LIMITED TO, PROCUREMENT OF
-- SUBSTITUTE GOODS OR SERVICES; LOSS OF USE, DATA, OR PROFITS; OR BUSINESS
-- INTERRUPTION) HOWEVER CAUSED AND ON ANY THEORY OF LIABILITY, WHETHER IN
-- CONTRACT, STRICT LIABILITY, OR TORT (INCLUDING NEGLIGENCE OR OTHERWISE)
-- ARISING IN ANY WAY OUT OF THE USE OF THIS SOFTWARE, EVEN IF ADVISED OF THE
-- POSSIBILITY OF SUCH DAMAGE.
--
-- Please report bugs to the author, but before you do so, please
-- make sure that this is not a derivative work and that
-- you have the latest version of this file.

library IEEE;
	use IEEE.STD_LOGIC_1164.ALL;
	use IEEE.STD_LOGIC_UNSIGNED.ALL;

package vdp_common is

--constant H_DISP_CLOCKS          : integer := 2560;

constant CLOCKS_PER_LINE_MAX    : integer := 3420;
constant CLOCKS_PER_LINE_H32    : integer := 342*10;
constant CLOCKS_PER_LINE_H40    : integer := 427*8; -- 3416

constant H_DISP_CLOCKS          : integer := 2560;
constant VGA_HS_CLOCKS          : integer := 204;       -- 3.77 us

constant VGA_VS_LINES           : integer := 1;         -- 0.06 ms
constant VS_LINES               : integer := 3;

-- Timing values from the Exodus emulator in HV_HCNT and HV_VCNT values

constant H_DISP_START_H32       : integer := 466; -- -46
constant H_DISP_START_H40       : integer := 457; -- -55

constant HBLANK_END_H32         : integer := 9;
constant HBLANK_END_H40         : integer := 10;

constant HBLANK_START_H32       : integer := 293;
constant HBLANK_START_H40       : integer := 357;

-- HSYNC moved a bit before the active area from the reference
-- to provide enough back porch
constant HSYNC_START_H32        : integer := 472-5; -- -40
constant HSYNC_START_H40        : integer := 460-2; -- -52

constant HSYNC_END_H32          : integer := 498-5; -- -14
constant HSYNC_END_H40          : integer := 492-2; -- -20

constant H_INT_H32              : integer := 265;
constant H_INT_H40              : integer := 329;

constant H_SPENGINE_ON_H32      : integer := 55;
constant H_SPENGINE_ON_H40      : integer := 85;

constant H_DISP_WIDTH_H32       : integer := 256;
constant H_DISP_WIDTH_H40       : integer := 320;

constant H_TOTAL_WIDTH_H32      : integer := 342;
constant H_TOTAL_WIDTH_H40      : integer := 427;

constant V_DISP_START_V28       : integer := 485; -- -27;
constant V_DISP_START_V30       : integer := 466; -- -46

constant V_DISP_HEIGHT_V28      : integer := 224;
constant V_DISP_HEIGHT_V30      : integer := 240;

constant V_INT_NTSC             : integer := 231;
constant V_INT_PAL              : integer := 255;

constant NTSC_LINES             : integer := 262;
constant PAL_LINES              : integer := 312;

end vdp_common;
