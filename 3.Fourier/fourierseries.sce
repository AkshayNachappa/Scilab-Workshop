v =1;
// M u l t i p l i e r V ol t a g e
w =15;
// F r e q u e n c y
t =0:0.001:0.99;
// I n c r e m e n t a l Time Stamp
x1 = v*(cos(w*t)-cos(3*w*t)/3)/%pi;
//F i r s t 2 Components of t h e F o u r i e r S e r i e s of a S q ua r e Wave wi t h F r e q u e n c y W ra d / s e c
x2 = v*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5)/%pi;
// F i r s t 3Components of t h e F o u r i e r S e r i e s of a S q ua r e Wavewi t h F r e q u e n c y W ra d / s e c
x3=v*(cos(w*t)-cos(3*w*t)/3+cos(5*w*t)/5-cos(7*w*t)/7)/%pi; // F i r s t 4 Componentsof t h e F o u r i e r S e r i e s of a S q ua r e Wave wi t hF r e q u e n c y W ra d / s e c
x4 = v *( cos ( w * t ) -cos (3* w * t ) /3+ cos (5* w* t ) /5 - cos (7* w * t )/7+ cos (9* w * t ) /9) / %pi ; // F i r s t 5 Componentsof t h e F o u r i e r S e r i e s of a S q ua r e Wave wi t hF r e q u e n c y W ra d / s e c
x5 = v *( cos ( w * t ) -cos (3* w * t ) /3+ cos (5* w *t ) /5 - cos (7* w * t )/7+ cos (9* w * t ) /9 - cos (11* w * t ) /11) / %pi ; //F i r s t 6 Components of t h e F o u r i e r S e r i e s of aS q ua r e Wave wi t h F r e q u e n c y W ra d / s e c
x6 = v *( cos ( w * t ) -cos (3* w * t ) /3+ cos (5* w *t ) /5 - cos (7* w * t )/7+ cos (9* w * t ) /9 - cos (11* w * t ) /11+ cos (13* w *t ) /13) /%pi ; // F i r s t 7 Components of t h e F o u r i e rS e r i e s of a S q ua r e Wave
subplot (3 ,2 ,1)
// D e vi di n g t h e Fi g u r e Qindow i n Si x Subwindows tp l o t d i f f e n r e n t componen t s
plot ( x1 ) ;
// P l o t t i n g t h e F i r s t 2 componen t s of t h e F o u r i e rS e r i e s of a S q ua r e Wave
title ("sq with first") ; // A s s i g n i n ga T i t l e of t h e Fi g u r e
xlabel ("Sample s") ;
// A s s i g n i n g an X−l a b e l of t h e f i g u r e
ylabel ('’Amplitude(V)’');
// A s s i g n i n g of a Y−l a b e l of t h e f i g u r e
subplot (3,2,2)
plot (x2) ;

// P l o t t i n g t h e F i r s t 3 componen t s of t h e F o u r i e rS e r i e s of a S q ua r e Wave
title ("sq from first") ; // A s s i g n i n ga T i t l e of t h e Fi g u r e
xlabel ("Sample s") ;
// A s s i g n i n g an X−l a b e l of t h e f i g u r e
ylabel ("Amplitude(V)") ;
// A s s i g n i n g of a Y−l a b e l of t h e f i g u r e
subplot (3,2,3)
plot (x3) ;
// P l o t t i n g t h e F i r s t 4 componen t s of t h e F o u r i e rS e r i e s of a S q ua r e Wave
title ("sq from first") ; // A s s i g n i n ga T i t l e of t h e Fi g u r e
xlabel ("Sample s") ;
// A s s i g n i n g an X−l a b e l of t h e f i g u r e
ylabel ("Ampli tude (V)") ;
// A s s i g n i n g of a Y−l a b e l of t h e f i g u r e
subplot (3,2,4)
plot (x4) ;
// P l o t t i n g t h e F i r s t 5 componen t s of t h e F o u r i e rS e r i e s of a S q ua r e Wave
title ("sq from first") ; // A s s i g n i n ga T i t l e of t h e Fi g u r e
xlabel ("Sample s") ;
// A s s i g n i n g an X−l a b e l of t h e f i g u r e
ylabel ("Ampli tude (V)") ;

// A s s i g n i n g of a Y−l a b e l of t h e f i g u r e

subplot (3 ,2 ,5)
plot (x5) ;
// P l o t t i n g t h e F i r s t 6 componen t s of t h e F o u r i e rS e r i e s of a S q ua r e Wave
title ("sq from first") ; // A s s i g n i n ga T i t l e of t h e Fi g u r e
xlabel ("Sample s") ;
// A s s i g n i n g an X−l a b e l of t h e f i g u r e
ylabel ("Ampli tude (V)") ;
// A s s i g n i n g of a Y−l a b e l of t h e f i g u r e

subplot (3 ,2 ,6)
plot (x6) ;
// P l o t t i n g t h e F i r s t 7 componen t s of t h e F o u r i e rS e r i e s of a S q ua r e Wave
title ("sq from first") ; // A s s i g n i n ga T i t l e of t h e Fi g u r e
xlabel ("Sample s") ;
// A s s i g n i n g an X−l a b e l of t h e f i g u r e
ylabel ("Ampli tude (V)") ;
