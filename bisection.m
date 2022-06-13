% %% Plotting
% 
% % to have an idea about the location of the root of the given function
% 
% x = -10:0.01:10;
% y = thefunc(x);
% plot(x,y)
% hold on
% z = zeros(1,length(x));
% plot (x,z)

%% Bisection

i = 1;
x_l(i,1) = -1;
x_u(i,1) = 1;

if thefunc(x_l(i,1))*thefunc(x_u(i,1)) < 0
    disp('multiplation of the values are 0') %just to check
end

Es = 0.005; %error tolerance in per cent
Ea = 100; %a default number for approximation error so that it is not smaller than Ea for the beginning iteration.
x_r(i,1) = (x_l(i,1) + x_u(i,1))/2; % middle point calculation

% bisection
while abs(Ea) >= Es
    
    i = i+1;
    
    if thefunc(x_l(i-1,1))*thefunc(x_r(i-1,1)) < 0
        x_u(i,1) = x_r(i-1,1);
        x_l(i,1) = x_l(i-1,1);
    elseif thefunc(x_l(i-1,1))*thefunc(x_r(i-1,1)) > 0
        x_l(i,1) = x_r(i-1,1);
        x_u(i,1) = x_u(i-1,1);
    end
    
    x_r(i,1) = (x_l(i,1) + x_u(i,1))/2;
    
    Ea = ((x_r(i,1) - x_r(i-1,1))/x_r(i,1))*100; %approximation error calculation
    error_a(i-1,1) = Ea; %putting everything in an array for tableing later
    
end
   
thing = ['here is your positive root: ',num2str(x_r(i,1))];
disp(thing) %displaying the result

%% Table

format long

Iteration = transpose(1:i);
Approximation_Error = [NaN;error_a];

T = table(Iteration,x_l,x_u,x_r,Approximation_Error);

T
