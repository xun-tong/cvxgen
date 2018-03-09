% csolve  Solves a custom quadratic program very rapidly.
%
% [vars, status] = csolve(params, settings)
%
% solves the convex optimization problem
%
%   minimize(quad_form(x_0 - x_ss_0, Q_x) + quad_form(u_0 - u_ss_0, R_u) + quad_form(u_0 - u_prev, R_delta) + quad_form(x_1 - x_ss_1, Q_x) + quad_form(u_1 - u_ss_1, R_u) + quad_form(u_1 - u_0, R_delta) + quad_form(x_2 - x_ss_2, Q_x) + quad_form(u_2 - u_ss_2, R_u) + quad_form(u_2 - u_1, R_delta) + quad_form(x_3 - x_ss_3, Q_x) + quad_form(u_3 - u_ss_3, R_u) + quad_form(u_3 - u_2, R_delta) + quad_form(x_4 - x_ss_4, Q_x) + quad_form(u_4 - u_ss_4, R_u) + quad_form(u_4 - u_3, R_delta) + quad_form(x_5 - x_ss_5, Q_x) + quad_form(u_5 - u_ss_5, R_u) + quad_form(u_5 - u_4, R_delta) + quad_form(x_6 - x_ss_6, Q_x) + quad_form(u_6 - u_ss_6, R_u) + quad_form(u_6 - u_5, R_delta) + quad_form(x_7 - x_ss_7, Q_x) + quad_form(u_7 - u_ss_7, R_u) + quad_form(u_7 - u_6, R_delta) + quad_form(x_8 - x_ss_8, Q_x) + quad_form(u_8 - u_ss_8, R_u) + quad_form(u_8 - u_7, R_delta) + quad_form(x_9 - x_ss_9, Q_x) + quad_form(u_9 - u_ss_9, R_u) + quad_form(u_9 - u_8, R_delta) + quad_form(x_10 - x_ss_10, Q_x) + quad_form(u_10 - u_ss_10, R_u) + quad_form(u_10 - u_9, R_delta) + quad_form(x_11 - x_ss_11, Q_x) + quad_form(u_11 - u_ss_11, R_u) + quad_form(u_11 - u_10, R_delta) + quad_form(x_12 - x_ss_12, Q_x) + quad_form(u_12 - u_ss_12, R_u) + quad_form(u_12 - u_11, R_delta) + quad_form(x_13 - x_ss_13, Q_x) + quad_form(u_13 - u_ss_13, R_u) + quad_form(u_13 - u_12, R_delta) + quad_form(x_14 - x_ss_14, Q_x) + quad_form(u_14 - u_ss_14, R_u) + quad_form(u_14 - u_13, R_delta) + quad_form(x_15 - x_ss_15, Q_x) + quad_form(u_15 - u_ss_15, R_u) + quad_form(u_15 - u_14, R_delta) + quad_form(x_16 - x_ss_16, Q_x) + quad_form(u_16 - u_ss_16, R_u) + quad_form(u_16 - u_15, R_delta) + quad_form(x_17 - x_ss_17, Q_x) + quad_form(u_17 - u_ss_17, R_u) + quad_form(u_17 - u_16, R_delta) + quad_form(x_18 - x_ss_18, Q_x) + quad_form(u_18 - u_ss_18, R_u) + quad_form(u_18 - u_17, R_delta) + quad_form(x_19 - x_ss_19, P))
%   subject to
%     x_1 == A*x_0 + B*u_0 + Bd*d
%     x_2 == A*x_1 + B*u_1 + Bd*d
%     x_3 == A*x_2 + B*u_2 + Bd*d
%     x_4 == A*x_3 + B*u_3 + Bd*d
%     x_5 == A*x_4 + B*u_4 + Bd*d
%     x_6 == A*x_5 + B*u_5 + Bd*d
%     x_7 == A*x_6 + B*u_6 + Bd*d
%     x_8 == A*x_7 + B*u_7 + Bd*d
%     x_9 == A*x_8 + B*u_8 + Bd*d
%     x_10 == A*x_9 + B*u_9 + Bd*d
%     x_11 == A*x_10 + B*u_10 + Bd*d
%     x_12 == A*x_11 + B*u_11 + Bd*d
%     x_13 == A*x_12 + B*u_12 + Bd*d
%     x_14 == A*x_13 + B*u_13 + Bd*d
%     x_15 == A*x_14 + B*u_14 + Bd*d
%     x_16 == A*x_15 + B*u_15 + Bd*d
%     x_17 == A*x_16 + B*u_16 + Bd*d
%     x_18 == A*x_17 + B*u_17 + Bd*d
%     x_19 == A*x_18 + B*u_18 + Bd*d
%     u_min <= u_0
%     u_min <= u_1
%     u_min <= u_2
%     u_min <= u_3
%     u_min <= u_4
%     u_min <= u_5
%     u_min <= u_6
%     u_min <= u_7
%     u_min <= u_8
%     u_min <= u_9
%     u_min <= u_10
%     u_min <= u_11
%     u_min <= u_12
%     u_min <= u_13
%     u_min <= u_14
%     u_min <= u_15
%     u_min <= u_16
%     u_min <= u_17
%     u_min <= u_18
%     u_0 <= u_max
%     u_1 <= u_max
%     u_2 <= u_max
%     u_3 <= u_max
%     u_4 <= u_max
%     u_5 <= u_max
%     u_6 <= u_max
%     u_7 <= u_max
%     u_8 <= u_max
%     u_9 <= u_max
%     u_10 <= u_max
%     u_11 <= u_max
%     u_12 <= u_max
%     u_13 <= u_max
%     u_14 <= u_max
%     u_15 <= u_max
%     u_16 <= u_max
%     u_17 <= u_max
%     u_18 <= u_max
%
% with variables
%      u_0   3 x 1
%      u_1   3 x 1
%      u_2   3 x 1
%      u_3   3 x 1
%      u_4   3 x 1
%      u_5   3 x 1
%      u_6   3 x 1
%      u_7   3 x 1
%      u_8   3 x 1
%      u_9   3 x 1
%     u_10   3 x 1
%     u_11   3 x 1
%     u_12   3 x 1
%     u_13   3 x 1
%     u_14   3 x 1
%     u_15   3 x 1
%     u_16   3 x 1
%     u_17   3 x 1
%     u_18   3 x 1
%      x_1   8 x 1
%      x_2   8 x 1
%      x_3   8 x 1
%      x_4   8 x 1
%      x_5   8 x 1
%      x_6   8 x 1
%      x_7   8 x 1
%      x_8   8 x 1
%      x_9   8 x 1
%     x_10   8 x 1
%     x_11   8 x 1
%     x_12   8 x 1
%     x_13   8 x 1
%     x_14   8 x 1
%     x_15   8 x 1
%     x_16   8 x 1
%     x_17   8 x 1
%     x_18   8 x 1
%     x_19   8 x 1
%
% and parameters
%        A   8 x 8
%        B   8 x 3
%       Bd   8 x 3
%        P   8 x 8    PSD
%      Q_x   8 x 8    PSD
%  R_delta   3 x 3    PSD
%      R_u   3 x 3    PSD
%        d   3 x 1
%    u_max   3 x 1
%    u_min   3 x 1
%   u_prev   3 x 1
%   u_ss_0   3 x 1
%   u_ss_1   3 x 1
%   u_ss_2   3 x 1
%   u_ss_3   3 x 1
%   u_ss_4   3 x 1
%   u_ss_5   3 x 1
%   u_ss_6   3 x 1
%   u_ss_7   3 x 1
%   u_ss_8   3 x 1
%   u_ss_9   3 x 1
%  u_ss_10   3 x 1
%  u_ss_11   3 x 1
%  u_ss_12   3 x 1
%  u_ss_13   3 x 1
%  u_ss_14   3 x 1
%  u_ss_15   3 x 1
%  u_ss_16   3 x 1
%  u_ss_17   3 x 1
%  u_ss_18   3 x 1
%      x_0   8 x 1
%   x_ss_0   8 x 1
%   x_ss_1   8 x 1
%   x_ss_2   8 x 1
%   x_ss_3   8 x 1
%   x_ss_4   8 x 1
%   x_ss_5   8 x 1
%   x_ss_6   8 x 1
%   x_ss_7   8 x 1
%   x_ss_8   8 x 1
%   x_ss_9   8 x 1
%  x_ss_10   8 x 1
%  x_ss_11   8 x 1
%  x_ss_12   8 x 1
%  x_ss_13   8 x 1
%  x_ss_14   8 x 1
%  x_ss_15   8 x 1
%  x_ss_16   8 x 1
%  x_ss_17   8 x 1
%  x_ss_18   8 x 1
%  x_ss_19   8 x 1
%
% Note:
%   - Check status.converged, which will be 1 if optimization succeeded.
%   - You don't have to specify settings if you don't want to.
%   - To hide output, use settings.verbose = 0.
%   - To change iterations, use settings.max_iters = 20.
%   - You may wish to compare with cvxsolve to check the solver is correct.
%
% Specify params.A, ..., params.x_ss_19, then run
%   [vars, status] = csolve(params, settings)
% Produced by CVXGEN, 2018-02-26 09:21:10 -0500.
% CVXGEN is Copyright (C) 2006-2017 Jacob Mattingley, jem@cvxgen.com.
% The code in this file is Copyright (C) 2006-2017 Jacob Mattingley.
% CVXGEN, or solvers produced by CVXGEN, cannot be used for commercial
% applications without prior written permission from Jacob Mattingley.

% Filename: csolve.m.
% Description: Help file for the Matlab solver interface.
