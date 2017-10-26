ns = (1:25)*20;
times = zeros(25,2);
for i = 1:25
    times(i,:) = time_test_lu(ns(i));
end
plot(ns,2.535*1e-7*ns.^3,ns,5.02*1e-8*ns.^3,ns,times(:,1)','o',ns,times(:,2)','*');
xlabel('matrix dim');
ylabel('time used for 100 computations');
legend('y=2.535\times 10^{-7}x^3','y=5.02\times 10^{-8}x^3',...
    'method using pseudocodes in class','column oritend method','Location','best');
title("LU decomposition's computation complexity");

