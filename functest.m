function [m,s] = functest(x)
n = length(x);
m = sum(x)/n;
s = sqrt(sum((x-m).^2/n));
disp(s);
disp(m);
end