t = 0:15;
N = 8; //As 2^3
wt = 0:0.01:1;
bt = [1*ones(1,N) -1*ones(1,N)]; //Data signal
ct = [0,0,1,1,1,0,1,0,0,1,1,1,0,0,1,1]; //Spreading code
ct_polar = [-1,-1,1,1,1,-1,1,-1,-1,1,1,1,-1,-1,1,1];
mt=bt.*ct_polar; //Product signal
Carrier = 2*cos(wt*2*%pi+(%pi/2)); //cos signal with pi/2 phase
st = [];
for i = 1:length(mt)
    st = [st mt(i)*Carrier]; //DSSS Signal
end
figure
subplot(3,1,1)
a=gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,bt ,5)
xlabel('t')
title('Data b(t)')
subplot(3,1,2)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,ct_polar ,5)
xlabel('t')
title('Spreading code c(t)')
subplot(3,1,3)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,mt ,5)
xlabel('t')
title('Product Signal m(t)')
figure
subplot(3,1,1)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t,mt ,5)
xlabel('t')
title('Product Signal m(t)')
subplot(3,1,2)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot(Carrier)
xlabel('t')
title('Carrier Signal')
subplot(3,1,3)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot(st)
xlabel('t')
title('DS/BPSK signal s(t)')
