# root-finding
This repo consists of 4 numerical root-finding algorithms in MATLAB. Each method takes the function file **thefunc.m** to find the root of, with a variable or vector **x** as the input and **y** as the output, this function can be changed by the user. 

### bisection method
The code file named **bisection.m** uses the bisection method to find the root of the function **thefunc.m** using **if** statements and **while** loop. It takes the initial values **x_l = -1**, **x_u = 1** and an error tolerance of **0.005**.

### false position method
The code file named **false_position.m** uses the false position method to find the root of the function **thefunc.m**. It is similar to the biseciton code, only the calculation part is changed. 

### Newton Raphson method
The code file named **newton_raphson.m** uses the Newton Raphson method to find the root of the function **thefunc.m** using the analytical derivative of the function manually coded in a file named **thefunc_derv**. The code uses a initial value **x_i = 2** and an error tolerance of **0.005**, which can be changed manually. 

### secant method
The code file named **secand.m** uses the secant method to find the root of the function **thefunc.m**, similar to Newton Raphson method but calculates the derivative of the function numerically inside the code. Takes initial values as **x_0 = 1.5**, **x_i = 1**.
