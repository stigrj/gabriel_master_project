set samples 12000

p0(x) = 1
p1(x) = x
p2(x) = 0.5*(3*x**2-1)
p3(x) = 0.5*(5*x**3-3*x)

s0(x) = p0(2*x-1)
s1(x) = sqrt(3)*p1(2*x-1)
s2(x) = sqrt(5)*p2(2*x-1)
s3(x) = sqrt(7)*p3(2*x-1)

n=2.
l=1.

mask(x) = 0.5*(sgn(x) - sgn (x-1))


a=2**(-n)*l
b=2**(-n)*(l+1)

#lot[0:1] s0(x),  s1(x),  s2(x),  s3(x)
#lot[0:1] snl0(x),snl1(x),snl2(x),snl3(x)




#plot [-1:2][-1:2] mask(x)

       #*W->H0[0][] =

h000 = 7.0710678118654752440084436210484900e-01
h001 = 0.0000000000000000000000000000000000e+00
h002 = 2.0427571856496672372556444220945700e-34
h003 = 0.0000000000000000000000000000000000e+00

       #*W->H0[1][] =

h010 = -6.1237243569579452454932101867647290e-01
h011 = 3.5355339059327376220042218105242450e-01
h012 = -1.9789210235981151360914055339041150e-34
h013 = -1.7661338167596081322106092399359300e-34

       #*W->H0[2][] =

h020 = 1.7022976547080560310463703517454750e-35
h021 = -6.8465319688145764182121222850100280e-01
h022 = 1.7677669529663688110021109052621220e-01
h023 = 2.8939060130036952527788295979673080e-34

       #*W->H0[3][] =

h030 = 2.3385358667337133659898429576978440e-01
h031 = 4.0504629365049126443537296475549970e-01
h032 = -5.2291251658379721748635751611574190e-01
h033 = 8.8388347648318440550105545263105910e-02

      #*W->G0[0][] =

g000 = 5.2430767765008125756228206833760630e-33
g001 = -1.5339299776947408740195227193950080e-01
g002 = -5.9408852578600458549196387747468250e-01
g003 = 3.5146751167740366604477625486653580e-01
       
              #*W->G0[1][] =
       
g010 = -1.5430334996209191026109446276399570e-01
g011 = -2.6726124191242438468455348087975580e-01
g012 = -1.7251638983558855444903171615678490e-01
g013 = 6.1237243569579452454932101867647100e-01
       
              #*W->G0[2][] =
       
g020 = -8.1369827895045078284016502813433710e-33
g021 = 8.7866877919350916511194063716634320e-02
g022 = 3.4030695486488630490614957067107590e-01
g023 = 6.1357199107789634960780908775804370e-01
       
              #*W->G0[3][] =
       
g030 = -2.1564548729448569306128964519598330e-01
g031 = -3.7350894041699801249025536865410170e-01
g032 = -4.4362213114101424200064658044649920e-01
g033 = -3.4232659844072882091060611425049780e-01


       

h100 =  h000 
h101 = -h001 
h102 =  h002 
h103 = -h003 
            
            
            
h110 = -h010 
h111 =  h011 
h112 = -h012 
h113 =  h013 
            
            
            
h120 =  h020 
h121 = -h021 
h122 =  h022 
h123 = -h023 
            
            
            
h130 = -h030 
h131 =  h031 
h132 = -h032 
h133 =  h033 
            
            
            
g100 =  g000 
g101 = -g001 
g102 =  g002 
g103 = -g003 
             
             
             
g110 = -g010 
g111 =  g011 
g112 = -g012 
g113 =  g013 
             
             
             
g120 =  g020 
g121 = -g021 
g122 =  g022 
g123 = -g023 
             
             
             
g130 = -g030 
g131 =  g031 
g132 = -g032 
g133 =  g033 


w0(x) = g000*s0(2*x)*mask(2.*x) + g100*s0(2*x-1)*mask(2.*x-1) +\
        g001*s1(2*x)*mask(2.*x) + g101*s1(2*x-1)*mask(2.*x-1) +\
        g002*s2(2*x)*mask(2.*x) + g102*s2(2*x-1)*mask(2.*x-1) +\
        g003*s3(2*x)*mask(2.*x) + g103*s3(2*x-1)*mask(2.*x-1)

w1(x) = g010*s0(2*x)*mask(2.*x) + g110*s0(2*x-1)*mask(2.*x-1) +\
        g011*s1(2*x)*mask(2.*x) + g111*s1(2*x-1)*mask(2.*x-1) +\
        g012*s2(2*x)*mask(2.*x) + g112*s2(2*x-1)*mask(2.*x-1) +\
        g013*s3(2*x)*mask(2.*x) + g113*s3(2*x-1)*mask(2.*x-1)

w2(x) = g020*s0(2*x)*mask(2.*x) + g120*s0(2*x-1)*mask(2.*x-1) +\
        g021*s1(2*x)*mask(2.*x) + g121*s1(2*x-1)*mask(2.*x-1) +\
        g022*s2(2*x)*mask(2.*x) + g122*s2(2*x-1)*mask(2.*x-1) +\
        g023*s3(2*x)*mask(2.*x) + g123*s3(2*x-1)*mask(2.*x-1)

w3(x) = g030*s0(2*x)*mask(2.*x) + g130*s0(2*x-1)*mask(2.*x-1) +\
        g031*s1(2*x)*mask(2.*x) + g131*s1(2*x-1)*mask(2.*x-1) +\
        g032*s2(2*x)*mask(2.*x) + g132*s2(2*x-1)*mask(2.*x-1) +\
        g033*s3(2*x)*mask(2.*x) + g133*s3(2*x-1)*mask(2.*x-1)

n = 1

l0=0.0
l1=1.0
l2=0.0
l3=1.0

s1l0(x) = 2.**(1/2.) * s0(2.**1*x-l0)*mask(2.**1*x-l0)
s1l1(x) = 2.**(1/2.) * s1(2.**1*x-l0)*mask(2.**1*x-l0)
s1l2(x) = 2.**(1/2.) * s2(2.**1*x-l0)*mask(2.**1*x-l0)
s1l3(x) = 2.**(1/2.) * s3(2.**1*x-l0)*mask(2.**1*x-l0)

s1l4(x) = 2.**(1/2.) * s0(2.**1*x-l1)*mask(2.**1*x-l1)
s1l5(x) = 2.**(1/2.) * s1(2.**1*x-l1)*mask(2.**1*x-l1)
s1l6(x) = 2.**(1/2.) * s2(2.**1*x-l1)*mask(2.**1*x-l1)
s1l7(x) = 2.**(1/2.) * s3(2.**1*x-l1)*mask(2.**1*x-l1)

w1l0(x) = 2.**(1/2.) * w0(2.**1*x-l0)*mask(2.**1*x-l0)
w1l1(x) = 2.**(1/2.) * w1(2.**1*x-l0)*mask(2.**1*x-l0)
w1l2(x) = 2.**(1/2.) * w2(2.**1*x-l0)*mask(2.**1*x-l0)
w1l3(x) = 2.**(1/2.) * w3(2.**1*x-l0)*mask(2.**1*x-l0)

w1l4(x) = 2.**(1/2.) * w0(2.**1*x-l1)*mask(2.**1*x-l1)
w1l5(x) = 2.**(1/2.) * w1(2.**1*x-l1)*mask(2.**1*x-l1)
w1l6(x) = 2.**(1/2.) * w2(2.**1*x-l1)*mask(2.**1*x-l1)
w1l7(x) = 2.**(1/2.) * w3(2.**1*x-l1)*mask(2.**1*x-l1)


n = 2
l0=0.0
l1=1.0
l2=2.0
l3=3.0

snl0(x) = 2.**(n/2.) * s0(2.**n*x-l0)*mask(2.**n*x-l0)
snl1(x) = 2.**(n/2.) * s1(2.**n*x-l1)*mask(2.**n*x-l1)
snl2(x) = 2.**(n/2.) * s2(2.**n*x-l2)*mask(2.**n*x-l2)
snl3(x) = 2.**(n/2.) * s3(2.**n*x-l3)*mask(2.**n*x-l3)

wnl0(x) = 2.**(n/2.) * w0(2.**n*x-l0)*mask(2.**n*x-l0)
wnl1(x) = 2.**(n/2.) * w1(2.**n*x-l1)*mask(2.**n*x-l1)
wnl2(x) = 2.**(n/2.) * w2(2.**n*x-l2)*mask(2.**n*x-l2)
wnl3(x) = 2.**(n/2.) * w3(2.**n*x-l3)*mask(2.**n*x-l3)

set terminal postscript eps color solid enhanced

set style line 9 lw 3 lt 7
set style line 1 lw 3 lt 1
set style line 2 lw 3 lt 2
set style line 3 lw 3 lt 3
set style line 4 lw 3 lt 4

a(x) = 0

set key left noautotitle
set xtics 0.0, 0.25, 1.0
set grid xtics noytics


set output 'w0.eps'
plot[0:1] w0(x) title 'w0' with dots ls 1,w1(x) title 'w1' with dots ls 2,w2(x) title 'w2' with dots ls 3,w3(x) title 'w3' with dots ls 4, a(x) with dots ls 9
set output 's0.eps'
plot[0:1] s0(x) title 's0' with dots ls 1, s1(x) title 's1' with dots ls 2, s2(x) title 's2' with dots ls 3, s3(x) title 's3' with dots ls 4, a(x) with dots ls 9

set output 'w1.eps'
plot[0:1] w1l0(x) title 'w0' with dots ls 1,w1l1(x) title 'w1' with dots ls 2,w1l2(x) title 'w2' with dots ls 3,w1l3(x) title 'w3' with dots ls 4, a(x) with dots ls 9,\
          w1l4(x) title 'w0' with dots ls 1,w1l5(x) title 'w1' with dots ls 2,w1l6(x) title 'w2' with dots ls 3,w1l7(x) title 'w3' with dots ls 4

set output 's1.eps'
plot[0:1] s1l0(x) title 's0' with dots ls 1, s1l1(x) title 's1' with dots ls 2, s1l2(x) title 's2' with dots ls 3, s1l3(x) title 's1l3' with dots ls 4, a(x) with dots ls 9,\
          s1l4(x) title 's0' with dots ls 1, s1l5(x) title 's1' with dots ls 2, s1l6(x) title 's2' with dots ls 3, s1l7(x) title 's1l3' with dots ls 4

set output 'wn.eps'
plot[0:1] wnl0(x) title 'w0 l=0' with dots ls 1, wnl1(x) title 'w1 l=1' with dots ls 2, wnl2(x) title 'w2 l=2' with dots ls 3, wnl3(x) title 'w3 l=3' with dots ls 4, a(x) with dots ls 9
set output 'sn.eps'
plot[0:1] snl0(x) title 's0 l=0' with dots ls 1, snl1(x) title 's1 l=1' with dots ls 2, snl2(x) title 's2 l=2' with dots ls 3, snl3(x) title 's3 l=3' with dots ls 4, a(x) with dots ls 9





