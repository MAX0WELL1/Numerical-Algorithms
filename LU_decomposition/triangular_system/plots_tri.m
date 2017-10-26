ns = (1:30)*100;
times = zeros(2,30);
for i = 1:30
    times(1,i) = time_test_tri(ns(i), 1);
    times(2,i) = time_test_tri(ns(i), 0);
end
plot(ns,3.2*1e-7*ns.^2,ns,1.06*1e-7*ns.^2,ns,times(1,:),'o',ns,times(2,:),'*');
xlabel('matrix dim');
ylabel('time used');
legend('y = 3.2\times 10^{-7}x^{2}','y = 1.06\times 10^{-7}x^{2}',...
    'row oriented method','column oriented method','Location','best');
title("Triangular System Solver's Computational Complexity");