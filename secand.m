%% Plotting

% to have an idea about the location of the root of the given function

x = -2:0.01:2;
y = thefunc(x);
plot(x,y)
hold on
z = zeros(1,length(x));
plot (x,z)

%% Secand

i = 1;
x_0 = 1.5;
x_i(i,1) = 1; %initial value

Es = 0.005; %error tolerance in per cent
Ea = 100; %a default number for approximation error so that it is not smaller than Ea for the beginning iteration.

% secand
while abs(Ea) >= Es
    
    i = i+1;
    
    derivative = (thefunc(x_0) - thefunc(x_i(i-1,1)))/(x_0 - x_i(i-1,1)); %derivative calculation
    x_i(i,1) = x_i(i-1,1) - thefunc(x_i(i-1,1))/derivative; %x iteration with secand derivative
    
    Ea = ((x_i(i,1) - x_i(i-1,1))/x_i(i,1))*100; %approximation error calculation
    error_a(i-1,1) = Ea; %putting everything in an array for tableing later
    
end
   
thing = ['here is your positive root: ',num2str(x_i(i,1))];
disp(thing) %displaying the result

%% Table

format long

Iteration = transpose(1:i+1);
Approximation_Error = [NaN;NaN;error_a];
Xi = [x_0;x_i];

T = table(Iteration,Xi,Approximation_Error);

T