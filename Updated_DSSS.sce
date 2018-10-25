t = 0:15;
N = 8;
wt = 0:0.01:1;
bt = [1*zeros(1,2) ones(1,3) zeros(1,11)];
ct_polar = grand(1,16, "bet", 35,40)
for i=1:length(ct_polar)
    if ct_polar(i)>0.45 then
        ct_polar(i)=1
    else
        ct_polar(i)=0
    end
end
mt=bitxor(bt,ct_polar)
Carrier = 2*sin(wt*2*%pi+(%pi/2));
Carriercos = 2*cos(wt*2*%pi+(%pi/2));
st = [];
ct = [];
for i = 1:length(mt)
    st = [st mt(i)*Carrier];
    ct = [ct mt(i)*Carriercos];
end

//4
t1 = 0:3;
N1 = 2;
wt1 = 0:0.01:1;
bt1 = [1*zeros(1,2) ones(1,2)];
ct_polar1 = grand(1,4, "bet", 35,40)
for i=1:length(ct_polar1)
    if ct_polar1(i)>0.45 then
        ct_polar1(i)=1
    else
        ct_polar1(i)=0
    end
end

mt1=bitxor(bt1,ct_polar1)
Carrier1 = 2*sin(wt*2*%pi+(%pi/2));
st1 = [];
for i = 1:length(mt1)
    st1 = [st1 mt1(i)*Carrier1];
end
figure
subplot(3,1,1)
a=gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2([t],bt)
xlabel('t')
title('Data b(t)')
subplot(3,1,2)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t1,ct_polar1 ,5)
xlabel('t')
title('Spreading code c(t)')
subplot(3,1,3)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t1,mt1 ,5)
xlabel('t')
title('Product Signal m(t)')
figure
subplot(3,1,1)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2(t1,mt1 ,5)
xlabel('t')
title('Product Signal m(t)')
subplot(3,1,2)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot(Carrier1)
xlabel('t')
title('Carrier Signal')
subplot(3,1,3)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot(st1)
xlabel('t')
title('DS/BPSK signal s(t)')

figure
subplot(3,1,1)
a=gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot2d2([t],bt)
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
title('Sine Carrier Signal')
subplot(3,1,3)
a =gca();
a.x_location ="origin";
a.y_location ="origin";
a.data_bounds = [0,-2;20,2];
plot(st)
xlabel('t')
title('DS/BPSK signal s(t)')
