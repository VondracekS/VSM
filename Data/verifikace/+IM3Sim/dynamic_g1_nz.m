function [nzij_pred, nzij_current, nzij_fwrd] = dynamic_g1_nz()
% Returns the coordinates of non-zero elements in the Jacobian, in column-major order, for each lead/lag (only for endogenous)
  nzij_pred = zeros(20, 2, 'int32');
  nzij_pred(1,1)=16; nzij_pred(1,2)=1;
  nzij_pred(2,1)=4; nzij_pred(2,2)=7;
  nzij_pred(3,1)=11; nzij_pred(3,2)=7;
  nzij_pred(4,1)=13; nzij_pred(4,2)=7;
  nzij_pred(5,1)=14; nzij_pred(5,2)=10;
  nzij_pred(6,1)=15; nzij_pred(6,2)=11;
  nzij_pred(7,1)=5; nzij_pred(7,2)=12;
  nzij_pred(8,1)=7; nzij_pred(8,2)=12;
  nzij_pred(9,1)=11; nzij_pred(9,2)=12;
  nzij_pred(10,1)=14; nzij_pred(10,2)=12;
  nzij_pred(11,1)=6; nzij_pred(11,2)=13;
  nzij_pred(12,1)=7; nzij_pred(12,2)=13;
  nzij_pred(13,1)=15; nzij_pred(13,2)=13;
  nzij_pred(14,1)=16; nzij_pred(14,2)=14;
  nzij_pred(15,1)=14; nzij_pred(15,2)=15;
  nzij_pred(16,1)=15; nzij_pred(16,2)=15;
  nzij_pred(17,1)=16; nzij_pred(17,2)=15;
  nzij_pred(18,1)=18; nzij_pred(18,2)=18;
  nzij_pred(19,1)=20; nzij_pred(19,2)=19;
  nzij_pred(20,1)=19; nzij_pred(20,2)=20;
  nzij_current = zeros(68, 2, 'int32');
  nzij_current(1,1)=1; nzij_current(1,2)=1;
  nzij_current(2,1)=8; nzij_current(2,2)=1;
  nzij_current(3,1)=11; nzij_current(3,2)=1;
  nzij_current(4,1)=14; nzij_current(4,2)=1;
  nzij_current(5,1)=15; nzij_current(5,2)=1;
  nzij_current(6,1)=1; nzij_current(6,2)=2;
  nzij_current(7,1)=2; nzij_current(7,2)=2;
  nzij_current(8,1)=4; nzij_current(8,2)=2;
  nzij_current(9,1)=5; nzij_current(9,2)=2;
  nzij_current(10,1)=14; nzij_current(10,2)=2;
  nzij_current(11,1)=1; nzij_current(11,2)=3;
  nzij_current(12,1)=2; nzij_current(12,2)=3;
  nzij_current(13,1)=3; nzij_current(13,2)=3;
  nzij_current(14,1)=7; nzij_current(14,2)=3;
  nzij_current(15,1)=11; nzij_current(15,2)=3;
  nzij_current(16,1)=1; nzij_current(16,2)=4;
  nzij_current(17,1)=2; nzij_current(17,2)=4;
  nzij_current(18,1)=6; nzij_current(18,2)=4;
  nzij_current(19,1)=11; nzij_current(19,2)=4;
  nzij_current(20,1)=15; nzij_current(20,2)=4;
  nzij_current(21,1)=1; nzij_current(21,2)=5;
  nzij_current(22,1)=2; nzij_current(22,2)=5;
  nzij_current(23,1)=8; nzij_current(23,2)=5;
  nzij_current(24,1)=11; nzij_current(24,2)=5;
  nzij_current(25,1)=1; nzij_current(25,2)=6;
  nzij_current(26,1)=4; nzij_current(26,2)=6;
  nzij_current(27,1)=13; nzij_current(27,2)=6;
  nzij_current(28,1)=14; nzij_current(28,2)=6;
  nzij_current(29,1)=4; nzij_current(29,2)=7;
  nzij_current(30,1)=13; nzij_current(30,2)=7;
  nzij_current(31,1)=11; nzij_current(31,2)=8;
  nzij_current(32,1)=12; nzij_current(32,2)=8;
  nzij_current(33,1)=14; nzij_current(33,2)=8;
  nzij_current(34,1)=15; nzij_current(34,2)=8;
  nzij_current(35,1)=5; nzij_current(35,2)=9;
  nzij_current(36,1)=6; nzij_current(36,2)=9;
  nzij_current(37,1)=7; nzij_current(37,2)=9;
  nzij_current(38,1)=9; nzij_current(38,2)=10;
  nzij_current(39,1)=14; nzij_current(39,2)=10;
  nzij_current(40,1)=10; nzij_current(40,2)=11;
  nzij_current(41,1)=15; nzij_current(41,2)=11;
  nzij_current(42,1)=5; nzij_current(42,2)=12;
  nzij_current(43,1)=7; nzij_current(43,2)=12;
  nzij_current(44,1)=9; nzij_current(44,2)=12;
  nzij_current(45,1)=14; nzij_current(45,2)=12;
  nzij_current(46,1)=6; nzij_current(46,2)=13;
  nzij_current(47,1)=7; nzij_current(47,2)=13;
  nzij_current(48,1)=10; nzij_current(48,2)=13;
  nzij_current(49,1)=15; nzij_current(49,2)=13;
  nzij_current(50,1)=12; nzij_current(50,2)=14;
  nzij_current(51,1)=14; nzij_current(51,2)=14;
  nzij_current(52,1)=15; nzij_current(52,2)=14;
  nzij_current(53,1)=16; nzij_current(53,2)=15;
  nzij_current(54,1)=17; nzij_current(54,2)=15;
  nzij_current(55,1)=2; nzij_current(55,2)=16;
  nzij_current(56,1)=3; nzij_current(56,2)=17;
  nzij_current(57,1)=5; nzij_current(57,2)=17;
  nzij_current(58,1)=6; nzij_current(58,2)=17;
  nzij_current(59,1)=9; nzij_current(59,2)=17;
  nzij_current(60,1)=10; nzij_current(60,2)=17;
  nzij_current(61,1)=17; nzij_current(61,2)=17;
  nzij_current(62,1)=6; nzij_current(62,2)=18;
  nzij_current(63,1)=7; nzij_current(63,2)=18;
  nzij_current(64,1)=18; nzij_current(64,2)=18;
  nzij_current(65,1)=11; nzij_current(65,2)=19;
  nzij_current(66,1)=20; nzij_current(66,2)=19;
  nzij_current(67,1)=12; nzij_current(67,2)=20;
  nzij_current(68,1)=19; nzij_current(68,2)=20;
  nzij_fwrd = zeros(21, 2, 'int32');
  nzij_fwrd(1,1)=4; nzij_fwrd(1,2)=1;
  nzij_fwrd(2,1)=5; nzij_fwrd(2,2)=1;
  nzij_fwrd(3,1)=4; nzij_fwrd(3,2)=2;
  nzij_fwrd(4,1)=5; nzij_fwrd(4,2)=2;
  nzij_fwrd(5,1)=3; nzij_fwrd(5,2)=3;
  nzij_fwrd(6,1)=7; nzij_fwrd(6,2)=3;
  nzij_fwrd(7,1)=6; nzij_fwrd(7,2)=4;
  nzij_fwrd(8,1)=4; nzij_fwrd(8,2)=6;
  nzij_fwrd(9,1)=4; nzij_fwrd(9,2)=8;
  nzij_fwrd(10,1)=5; nzij_fwrd(10,2)=8;
  nzij_fwrd(11,1)=5; nzij_fwrd(11,2)=9;
  nzij_fwrd(12,1)=6; nzij_fwrd(12,2)=9;
  nzij_fwrd(13,1)=7; nzij_fwrd(13,2)=9;
  nzij_fwrd(14,1)=9; nzij_fwrd(14,2)=9;
  nzij_fwrd(15,1)=10; nzij_fwrd(15,2)=9;
  nzij_fwrd(16,1)=5; nzij_fwrd(16,2)=12;
  nzij_fwrd(17,1)=7; nzij_fwrd(17,2)=12;
  nzij_fwrd(18,1)=6; nzij_fwrd(18,2)=13;
  nzij_fwrd(19,1)=7; nzij_fwrd(19,2)=13;
  nzij_fwrd(20,1)=12; nzij_fwrd(20,2)=14;
  nzij_fwrd(21,1)=17; nzij_fwrd(21,2)=14;
end