//free space model
clc;
clear all;
f=input('Enter the initial input frequency');
for i=1:5
    d = 1:1:100000;
    Lp=32.45+20*log10(d)+20*log10(f);
    plot(d,Lp,);
    f=f+50;
    xlabel('x--> D (distance in Km)'); 
    ylabel('y--> Lp (path loss)'); 
    title('Free space model'); 
end
//end of free space model

//Hata and Okumura model'
clc ;
clear all ;
hb =30; // Height of BS antenna in metres
hm =2; // height of mobile antenna in metres
hr =30; // in metres
d= input('enter the distance');
fc=input('enter the operating frequency');

if (d<=10) then
    for i=1:5
        d= 1:1:100000;
        Lu=(69.55 + 26.16*log10(fc)-13.82*log10(hb)+ (44.9-6.55*log10(hb))*log10(d));
        figure(1);
        plot(d,Lu,'b');
        fc=fc+50;
        xlabel("Distance between BS and MS");
        ylabel("Hata Path loss");
    end
        disp(Lu);
else
    for i=1:5
        d=1:1:100000;
        Lo=(32.45+ 20*log10(d)+20*log10(fc))-((1.1* log10( fc ) -0.7) * hm -(1.56* log10 ( fc ) -0.8));
        figure(2);
        plot(d,Lo,'b');
        fc=fc+50;
        xlabel("Distance between BS and MS");
        ylabel("Okumura Path loss");
        disp(Lo);
end
