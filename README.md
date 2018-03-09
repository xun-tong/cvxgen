# cvxgen

CVXGEN Code generation produces five primary C source files. 

The bulk of the algorithm is contained in `solver.c`, which has the main solve function and core routines.    
KKT matrix factorization and solution is carried out by functions in `ldl.c`.   
`matrix_support.c` contains code for filling vectors and matrices, and performing certain matrix-vector products.     
All data structures and function prototypes are defined in `solver.h`, and `testsolver.c` contains simple driver code for exercising the solver.    
Additional functions for testing are provided by `util.c`, and a `Makefile` is supplied for automated building. 

The optimization problem description is in `description.cvxgen`.
