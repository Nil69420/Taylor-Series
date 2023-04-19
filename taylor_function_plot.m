close all, clear all, clc

%% create an x vector

x = -2:0.1:2;

y = exp(x);

fig = figure();
set(fig,'color','white')
plot(x,y,'LineWidth',2)
grid on
xlabel('x')
ylabel('y')

%%expansion
N = 5;
yestimate = 0*y;
for n = 0:N
    yestimate = yestimate + (x.^n)./factorial(n);
end

hold on
plot(x, yestimate,'r-','LineWidth',2)
legend('Actual Function','Taylor Series Expansion')