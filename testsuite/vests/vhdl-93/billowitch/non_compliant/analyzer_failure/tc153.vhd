
-- Copyright (C) 2001 Bill Billowitch.

-- Some of the work to develop this test suite was done with Air Force
-- support.  The Air Force and Bill Billowitch assume no
-- responsibilities for this software.

-- This file is part of VESTs (Vhdl tESTs).

-- VESTs is free software; you can redistribute it and/or modify it
-- under the terms of the GNU General Public License as published by the
-- Free Software Foundation; either version 2 of the License, or (at
-- your option) any later version. 

-- VESTs is distributed in the hope that it will be useful, but WITHOUT
-- ANY WARRANTY; without even the implied warranty of MERCHANTABILITY or
-- FITNESS FOR A PARTICULAR PURPOSE.  See the GNU General Public License
-- for more details. 

-- You should have received a copy of the GNU General Public License
-- along with VESTs; if not, write to the Free Software Foundation,
-- Inc., 59 Temple Place, Suite 330, Boston, MA  02111-1307  USA 

-- ---------------------------------------------------------------------
--
-- $Id: tc153.vhd,v 1.2 2001-10-26 16:30:10 paw Exp $
-- $Revision: 1.2 $
--
-- ---------------------------------------------------------------------

package c04s03b02x02p16n01i00153pkg is
  procedure P1 (a : in integer; b: inout integer);
end ch04030202_p01601_03_pkg;

package body c04s03b02x02p16n01i00153pkg is
  procedure P1 (a: in integer; b: inout integer) is
  begin
    b := a;
  end;
end c04s03b02x02p16n01i00153pkg;


use work.c04s03b02x02p16n01i00153pkg.all;
ENTITY c04s03b02x02p16n01i00153ent IS
END c04s03b02x02p16n01i00153ent;

ARCHITECTURE c04s03b02x02p16n01i00153arch OF c04s03b02x02p16n01i00153ent IS

BEGIN

  TESTING: PROCESS
    variable x : real := 1.0;
  BEGIN
    P1 (10, b => x);  -- Failure_here
    -- b and x have different types
    assert FALSE
      report "***FAILED TEST: c04s03b02x02p16n01i00153 - Type mismatch."
      severity ERROR;
    wait;
  END PROCESS TESTING;

END c04s03b02x02p16n01i00153arch;
