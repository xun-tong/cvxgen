% Produced by CVXGEN, 2018-02-26 09:21:10 -0500.
% CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2017 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: cvxsolve.m.
% Description: Solution file, via cvx, for use with sample.m.
function [vars, status] = cvxsolve(params, settings)
A = params.A;
B = params.B;
Bd = params.Bd;
P = params.P;
Q_x = params.Q_x;
R_delta = params.R_delta;
R_u = params.R_u;
d = params.d;
u_max = params.u_max;
u_min = params.u_min;
u_prev = params.u_prev;
u_ss_0 = params.u_ss_0;
if isfield(params, 'u_ss_1')
  u_ss_1 = params.u_ss_1;
elseif isfield(params, 'u_ss')
  u_ss_1 = params.u_ss{1};
else
  error 'could not find u_ss_1'
end
if isfield(params, 'u_ss_2')
  u_ss_2 = params.u_ss_2;
elseif isfield(params, 'u_ss')
  u_ss_2 = params.u_ss{2};
else
  error 'could not find u_ss_2'
end
if isfield(params, 'u_ss_3')
  u_ss_3 = params.u_ss_3;
elseif isfield(params, 'u_ss')
  u_ss_3 = params.u_ss{3};
else
  error 'could not find u_ss_3'
end
if isfield(params, 'u_ss_4')
  u_ss_4 = params.u_ss_4;
elseif isfield(params, 'u_ss')
  u_ss_4 = params.u_ss{4};
else
  error 'could not find u_ss_4'
end
if isfield(params, 'u_ss_5')
  u_ss_5 = params.u_ss_5;
elseif isfield(params, 'u_ss')
  u_ss_5 = params.u_ss{5};
else
  error 'could not find u_ss_5'
end
if isfield(params, 'u_ss_6')
  u_ss_6 = params.u_ss_6;
elseif isfield(params, 'u_ss')
  u_ss_6 = params.u_ss{6};
else
  error 'could not find u_ss_6'
end
if isfield(params, 'u_ss_7')
  u_ss_7 = params.u_ss_7;
elseif isfield(params, 'u_ss')
  u_ss_7 = params.u_ss{7};
else
  error 'could not find u_ss_7'
end
if isfield(params, 'u_ss_8')
  u_ss_8 = params.u_ss_8;
elseif isfield(params, 'u_ss')
  u_ss_8 = params.u_ss{8};
else
  error 'could not find u_ss_8'
end
if isfield(params, 'u_ss_9')
  u_ss_9 = params.u_ss_9;
elseif isfield(params, 'u_ss')
  u_ss_9 = params.u_ss{9};
else
  error 'could not find u_ss_9'
end
if isfield(params, 'u_ss_10')
  u_ss_10 = params.u_ss_10;
elseif isfield(params, 'u_ss')
  u_ss_10 = params.u_ss{10};
else
  error 'could not find u_ss_10'
end
if isfield(params, 'u_ss_11')
  u_ss_11 = params.u_ss_11;
elseif isfield(params, 'u_ss')
  u_ss_11 = params.u_ss{11};
else
  error 'could not find u_ss_11'
end
if isfield(params, 'u_ss_12')
  u_ss_12 = params.u_ss_12;
elseif isfield(params, 'u_ss')
  u_ss_12 = params.u_ss{12};
else
  error 'could not find u_ss_12'
end
if isfield(params, 'u_ss_13')
  u_ss_13 = params.u_ss_13;
elseif isfield(params, 'u_ss')
  u_ss_13 = params.u_ss{13};
else
  error 'could not find u_ss_13'
end
if isfield(params, 'u_ss_14')
  u_ss_14 = params.u_ss_14;
elseif isfield(params, 'u_ss')
  u_ss_14 = params.u_ss{14};
else
  error 'could not find u_ss_14'
end
if isfield(params, 'u_ss_15')
  u_ss_15 = params.u_ss_15;
elseif isfield(params, 'u_ss')
  u_ss_15 = params.u_ss{15};
else
  error 'could not find u_ss_15'
end
if isfield(params, 'u_ss_16')
  u_ss_16 = params.u_ss_16;
elseif isfield(params, 'u_ss')
  u_ss_16 = params.u_ss{16};
else
  error 'could not find u_ss_16'
end
if isfield(params, 'u_ss_17')
  u_ss_17 = params.u_ss_17;
elseif isfield(params, 'u_ss')
  u_ss_17 = params.u_ss{17};
else
  error 'could not find u_ss_17'
end
if isfield(params, 'u_ss_18')
  u_ss_18 = params.u_ss_18;
elseif isfield(params, 'u_ss')
  u_ss_18 = params.u_ss{18};
else
  error 'could not find u_ss_18'
end
x_0 = params.x_0;
x_ss_0 = params.x_ss_0;
if isfield(params, 'x_ss_1')
  x_ss_1 = params.x_ss_1;
elseif isfield(params, 'x_ss')
  x_ss_1 = params.x_ss{1};
else
  error 'could not find x_ss_1'
end
if isfield(params, 'x_ss_2')
  x_ss_2 = params.x_ss_2;
elseif isfield(params, 'x_ss')
  x_ss_2 = params.x_ss{2};
else
  error 'could not find x_ss_2'
end
if isfield(params, 'x_ss_3')
  x_ss_3 = params.x_ss_3;
elseif isfield(params, 'x_ss')
  x_ss_3 = params.x_ss{3};
else
  error 'could not find x_ss_3'
end
if isfield(params, 'x_ss_4')
  x_ss_4 = params.x_ss_4;
elseif isfield(params, 'x_ss')
  x_ss_4 = params.x_ss{4};
else
  error 'could not find x_ss_4'
end
if isfield(params, 'x_ss_5')
  x_ss_5 = params.x_ss_5;
elseif isfield(params, 'x_ss')
  x_ss_5 = params.x_ss{5};
else
  error 'could not find x_ss_5'
end
if isfield(params, 'x_ss_6')
  x_ss_6 = params.x_ss_6;
elseif isfield(params, 'x_ss')
  x_ss_6 = params.x_ss{6};
else
  error 'could not find x_ss_6'
end
if isfield(params, 'x_ss_7')
  x_ss_7 = params.x_ss_7;
elseif isfield(params, 'x_ss')
  x_ss_7 = params.x_ss{7};
else
  error 'could not find x_ss_7'
end
if isfield(params, 'x_ss_8')
  x_ss_8 = params.x_ss_8;
elseif isfield(params, 'x_ss')
  x_ss_8 = params.x_ss{8};
else
  error 'could not find x_ss_8'
end
if isfield(params, 'x_ss_9')
  x_ss_9 = params.x_ss_9;
elseif isfield(params, 'x_ss')
  x_ss_9 = params.x_ss{9};
else
  error 'could not find x_ss_9'
end
if isfield(params, 'x_ss_10')
  x_ss_10 = params.x_ss_10;
elseif isfield(params, 'x_ss')
  x_ss_10 = params.x_ss{10};
else
  error 'could not find x_ss_10'
end
if isfield(params, 'x_ss_11')
  x_ss_11 = params.x_ss_11;
elseif isfield(params, 'x_ss')
  x_ss_11 = params.x_ss{11};
else
  error 'could not find x_ss_11'
end
if isfield(params, 'x_ss_12')
  x_ss_12 = params.x_ss_12;
elseif isfield(params, 'x_ss')
  x_ss_12 = params.x_ss{12};
else
  error 'could not find x_ss_12'
end
if isfield(params, 'x_ss_13')
  x_ss_13 = params.x_ss_13;
elseif isfield(params, 'x_ss')
  x_ss_13 = params.x_ss{13};
else
  error 'could not find x_ss_13'
end
if isfield(params, 'x_ss_14')
  x_ss_14 = params.x_ss_14;
elseif isfield(params, 'x_ss')
  x_ss_14 = params.x_ss{14};
else
  error 'could not find x_ss_14'
end
if isfield(params, 'x_ss_15')
  x_ss_15 = params.x_ss_15;
elseif isfield(params, 'x_ss')
  x_ss_15 = params.x_ss{15};
else
  error 'could not find x_ss_15'
end
if isfield(params, 'x_ss_16')
  x_ss_16 = params.x_ss_16;
elseif isfield(params, 'x_ss')
  x_ss_16 = params.x_ss{16};
else
  error 'could not find x_ss_16'
end
if isfield(params, 'x_ss_17')
  x_ss_17 = params.x_ss_17;
elseif isfield(params, 'x_ss')
  x_ss_17 = params.x_ss{17};
else
  error 'could not find x_ss_17'
end
if isfield(params, 'x_ss_18')
  x_ss_18 = params.x_ss_18;
elseif isfield(params, 'x_ss')
  x_ss_18 = params.x_ss{18};
else
  error 'could not find x_ss_18'
end
if isfield(params, 'x_ss_19')
  x_ss_19 = params.x_ss_19;
elseif isfield(params, 'x_ss')
  x_ss_19 = params.x_ss{19};
else
  error 'could not find x_ss_19'
end
cvx_begin
  % Caution: automatically generated by cvxgen. May be incorrect.
  variable u_0(3, 1);
  variable x_1(8, 1);
  variable u_1(3, 1);
  variable x_2(8, 1);
  variable u_2(3, 1);
  variable x_3(8, 1);
  variable u_3(3, 1);
  variable x_4(8, 1);
  variable u_4(3, 1);
  variable x_5(8, 1);
  variable u_5(3, 1);
  variable x_6(8, 1);
  variable u_6(3, 1);
  variable x_7(8, 1);
  variable u_7(3, 1);
  variable x_8(8, 1);
  variable u_8(3, 1);
  variable x_9(8, 1);
  variable u_9(3, 1);
  variable x_10(8, 1);
  variable u_10(3, 1);
  variable x_11(8, 1);
  variable u_11(3, 1);
  variable x_12(8, 1);
  variable u_12(3, 1);
  variable x_13(8, 1);
  variable u_13(3, 1);
  variable x_14(8, 1);
  variable u_14(3, 1);
  variable x_15(8, 1);
  variable u_15(3, 1);
  variable x_16(8, 1);
  variable u_16(3, 1);
  variable x_17(8, 1);
  variable u_17(3, 1);
  variable x_18(8, 1);
  variable u_18(3, 1);
  variable x_19(8, 1);

  minimize(quad_form(x_0 - x_ss_0, Q_x) + quad_form(u_0 - u_ss_0, R_u) + quad_form(u_0 - u_prev, R_delta) + quad_form(x_1 - x_ss_1, Q_x) + quad_form(u_1 - u_ss_1, R_u) + quad_form(u_1 - u_0, R_delta) + quad_form(x_2 - x_ss_2, Q_x) + quad_form(u_2 - u_ss_2, R_u) + quad_form(u_2 - u_1, R_delta) + quad_form(x_3 - x_ss_3, Q_x) + quad_form(u_3 - u_ss_3, R_u) + quad_form(u_3 - u_2, R_delta) + quad_form(x_4 - x_ss_4, Q_x) + quad_form(u_4 - u_ss_4, R_u) + quad_form(u_4 - u_3, R_delta) + quad_form(x_5 - x_ss_5, Q_x) + quad_form(u_5 - u_ss_5, R_u) + quad_form(u_5 - u_4, R_delta) + quad_form(x_6 - x_ss_6, Q_x) + quad_form(u_6 - u_ss_6, R_u) + quad_form(u_6 - u_5, R_delta) + quad_form(x_7 - x_ss_7, Q_x) + quad_form(u_7 - u_ss_7, R_u) + quad_form(u_7 - u_6, R_delta) + quad_form(x_8 - x_ss_8, Q_x) + quad_form(u_8 - u_ss_8, R_u) + quad_form(u_8 - u_7, R_delta) + quad_form(x_9 - x_ss_9, Q_x) + quad_form(u_9 - u_ss_9, R_u) + quad_form(u_9 - u_8, R_delta) + quad_form(x_10 - x_ss_10, Q_x) + quad_form(u_10 - u_ss_10, R_u) + quad_form(u_10 - u_9, R_delta) + quad_form(x_11 - x_ss_11, Q_x) + quad_form(u_11 - u_ss_11, R_u) + quad_form(u_11 - u_10, R_delta) + quad_form(x_12 - x_ss_12, Q_x) + quad_form(u_12 - u_ss_12, R_u) + quad_form(u_12 - u_11, R_delta) + quad_form(x_13 - x_ss_13, Q_x) + quad_form(u_13 - u_ss_13, R_u) + quad_form(u_13 - u_12, R_delta) + quad_form(x_14 - x_ss_14, Q_x) + quad_form(u_14 - u_ss_14, R_u) + quad_form(u_14 - u_13, R_delta) + quad_form(x_15 - x_ss_15, Q_x) + quad_form(u_15 - u_ss_15, R_u) + quad_form(u_15 - u_14, R_delta) + quad_form(x_16 - x_ss_16, Q_x) + quad_form(u_16 - u_ss_16, R_u) + quad_form(u_16 - u_15, R_delta) + quad_form(x_17 - x_ss_17, Q_x) + quad_form(u_17 - u_ss_17, R_u) + quad_form(u_17 - u_16, R_delta) + quad_form(x_18 - x_ss_18, Q_x) + quad_form(u_18 - u_ss_18, R_u) + quad_form(u_18 - u_17, R_delta) + quad_form(x_19 - x_ss_19, P));
  subject to
    x_1 == A*x_0 + B*u_0 + Bd*d;
    x_2 == A*x_1 + B*u_1 + Bd*d;
    x_3 == A*x_2 + B*u_2 + Bd*d;
    x_4 == A*x_3 + B*u_3 + Bd*d;
    x_5 == A*x_4 + B*u_4 + Bd*d;
    x_6 == A*x_5 + B*u_5 + Bd*d;
    x_7 == A*x_6 + B*u_6 + Bd*d;
    x_8 == A*x_7 + B*u_7 + Bd*d;
    x_9 == A*x_8 + B*u_8 + Bd*d;
    x_10 == A*x_9 + B*u_9 + Bd*d;
    x_11 == A*x_10 + B*u_10 + Bd*d;
    x_12 == A*x_11 + B*u_11 + Bd*d;
    x_13 == A*x_12 + B*u_12 + Bd*d;
    x_14 == A*x_13 + B*u_13 + Bd*d;
    x_15 == A*x_14 + B*u_14 + Bd*d;
    x_16 == A*x_15 + B*u_15 + Bd*d;
    x_17 == A*x_16 + B*u_16 + Bd*d;
    x_18 == A*x_17 + B*u_17 + Bd*d;
    x_19 == A*x_18 + B*u_18 + Bd*d;
    u_min <= u_0;
    u_min <= u_1;
    u_min <= u_2;
    u_min <= u_3;
    u_min <= u_4;
    u_min <= u_5;
    u_min <= u_6;
    u_min <= u_7;
    u_min <= u_8;
    u_min <= u_9;
    u_min <= u_10;
    u_min <= u_11;
    u_min <= u_12;
    u_min <= u_13;
    u_min <= u_14;
    u_min <= u_15;
    u_min <= u_16;
    u_min <= u_17;
    u_min <= u_18;
    u_0 <= u_max;
    u_1 <= u_max;
    u_2 <= u_max;
    u_3 <= u_max;
    u_4 <= u_max;
    u_5 <= u_max;
    u_6 <= u_max;
    u_7 <= u_max;
    u_8 <= u_max;
    u_9 <= u_max;
    u_10 <= u_max;
    u_11 <= u_max;
    u_12 <= u_max;
    u_13 <= u_max;
    u_14 <= u_max;
    u_15 <= u_max;
    u_16 <= u_max;
    u_17 <= u_max;
    u_18 <= u_max;
cvx_end
vars.u_0 = u_0;
vars.u_1 = u_1;
vars.u{1} = u_1;
vars.u_2 = u_2;
vars.u{2} = u_2;
vars.u_3 = u_3;
vars.u{3} = u_3;
vars.u_4 = u_4;
vars.u{4} = u_4;
vars.u_5 = u_5;
vars.u{5} = u_5;
vars.u_6 = u_6;
vars.u{6} = u_6;
vars.u_7 = u_7;
vars.u{7} = u_7;
vars.u_8 = u_8;
vars.u{8} = u_8;
vars.u_9 = u_9;
vars.u{9} = u_9;
vars.u_10 = u_10;
vars.u{10} = u_10;
vars.u_11 = u_11;
vars.u{11} = u_11;
vars.u_12 = u_12;
vars.u{12} = u_12;
vars.u_13 = u_13;
vars.u{13} = u_13;
vars.u_14 = u_14;
vars.u{14} = u_14;
vars.u_15 = u_15;
vars.u{15} = u_15;
vars.u_16 = u_16;
vars.u{16} = u_16;
vars.u_17 = u_17;
vars.u{17} = u_17;
vars.u_18 = u_18;
vars.u{18} = u_18;
vars.x_1 = x_1;
vars.x{1} = x_1;
vars.x_2 = x_2;
vars.x{2} = x_2;
vars.x_3 = x_3;
vars.x{3} = x_3;
vars.x_4 = x_4;
vars.x{4} = x_4;
vars.x_5 = x_5;
vars.x{5} = x_5;
vars.x_6 = x_6;
vars.x{6} = x_6;
vars.x_7 = x_7;
vars.x{7} = x_7;
vars.x_8 = x_8;
vars.x{8} = x_8;
vars.x_9 = x_9;
vars.x{9} = x_9;
vars.x_10 = x_10;
vars.x{10} = x_10;
vars.x_11 = x_11;
vars.x{11} = x_11;
vars.x_12 = x_12;
vars.x{12} = x_12;
vars.x_13 = x_13;
vars.x{13} = x_13;
vars.x_14 = x_14;
vars.x{14} = x_14;
vars.x_15 = x_15;
vars.x{15} = x_15;
vars.x_16 = x_16;
vars.x{16} = x_16;
vars.x_17 = x_17;
vars.x{17} = x_17;
vars.x_18 = x_18;
vars.x{18} = x_18;
vars.x_19 = x_19;
vars.x{19} = x_19;
status.cvx_status = cvx_status;
% Provide a drop-in replacement for csolve.
status.optval = cvx_optval;
status.converged = strcmp(cvx_status, 'Solved');
