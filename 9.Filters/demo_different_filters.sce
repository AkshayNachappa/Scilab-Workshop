// Hamming window
clf()
N=64;
w=window('hm',N);
subplot(121);plot2d(1:N,w,style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
subplot(122)
n=256;[W,fr]=frmag(w,n);
plot2d(fr,20*log10(W),style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
pause
//Kaiser window
clf()
N=64;
w=window('kr',N,6);
subplot(121);plot2d(1:N,w,style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
subplot(122)
n=256;[W,fr]=frmag(w,n);
plot2d(fr,20*log10(W),style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
pause
//Chebyshev window
clf()
N=64;
[w,df]=window('ch',N,[0.005,-1]);
subplot(121);plot2d(1:N,w,style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
subplot(122)
n=256;[W,fr]=frmag(w,n);
plot2d(fr,20*log10(W),style=color('blue'))
set(gca(),'grid',[1 1]*color('gray'))
