[h,hm,fr]=wfir('lp',33,[.2 0],'hm',[0 0]);
t=1:200;
x1=sin(2*%pi*t/20);
x2=sin(2*%pi*t/3);
x=x1+x2;
z=poly(0,'z');
hz=syslin('d',poly(h,'z','c')./z**33);
yhz=flts(x,hz);
subplot(1,2,1)
plot(x);
subplot(1,2,2)
plot(yhz);
