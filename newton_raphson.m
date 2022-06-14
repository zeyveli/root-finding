%% Plotting

% to have an idea about the location of the root of the given function

x = -10:0.01:10;
y = thefunc(x);
plot(x,y)
hold on
z = zeros(1,length(x));
plot (x,z)

%% Newton-Raphson 

i = 1;
x_i(i,1) = 2; %initial value

Es = 0.005; %error tolerance in per cent
Ea = 100; %a default number for approximation error so that it is not smaller than Ea for the beginning iteration.

% newton raphson
while abs(Ea) >= Es
    
    i = i+1;
    
    x_i(i,1) = x_i(i-1,1) - thefunc(x_i(i-1,1))/thefunc_derv(x_i(i-1,1)); %nev value of x
    
    Ea = ((x_i(i,1) - x_i(i-1,1))/x_i(i,1))*100; %approximation error calculation
    error_a(i-1,1) = Ea; %putting everything in an array for tableing later
    
end
   
thing = ['here is your positive root: ',num2str(x_i(i,1))];
disp(thing) %displaying the result

%% Table

format long

Iteration = transpose(1:i);
Approximation_Error = [NaN;error_a];

T = table(Iteration,x_i,Approximation_Error);

T