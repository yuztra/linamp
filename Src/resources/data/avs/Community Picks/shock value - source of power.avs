Nullsoft AVS Preset 0.2   �  �    __  _  _                  ___________________________
/  /  |  | |  |    ____   /                                              ___/
\  \  |  | |  |  /___/  /      TOTAL IMMERISION     /__    
/_/   \_/             /__________________________/
Shock Value                             2004

                 18. Source of Power
____________________________________

Feel the power! This preset is a composite of a 3D scope effect, a 3D movement effect, and a 2D flowy effect. Normally I just pick one of the three to make a preset out of, but in this case I used all three and blended them together seamlessly, which was accomplished with the final Colormap. This preset was pretty painless to build but came out looking great. $   �     
 0  t=t+1;time = gettime(0);tb = tb+1;timeb = gettime(gt);xmouse=getkbmouse(1);ymouse=getkbmouse(2);lmouse = getkbmouse(3);rmouse = getkbmouse(4);shift = getkbmouse(5);control = getkbmouse(17);backspace = getkbmouse(8);space = getkbmouse(32);right = getkbmouse(39);left = getkbmouse(37);up = getkbmouse(38);down = getkbmouse(40);

bt2=bt2*.9;
bb2=bb2*.8+bt2*.2;
reg20=1-bb2;

xpos = 0;
ypos = 0;
zpos = 6-bb2*10;
xrot = xrot+xt;
yrot = yrot+yt;
zrot = zrot+zt;

reg00 = xpos;
reg01 = ypos;
reg02 = zpos;
reg03 = xrot;
reg04 = yrot;
reg05 = zrot; r   tb=0;
gt = gettime(0);

xt=(rand(512)/256-1)*sp;
yt=(rand(512)/256-1)*sp;
zt=(rand(512)/256-1)*sp;
bt2=.35;    sp=.075       ���     �����  �   $�   �                           @  AVS 2.8+ Effect List Config                    (       �             l�BHolden03: Convolution Filter    �                                                                                                                                                                                                                        $   x  j   d=(i*.3+.1+v*.02)*3;
r=i*$pi*1.8+time;
x=d*sin(r)*hw;
y=d*cos(r);
c=sin(i*$pi);
red=c;green=c;blue=c �  t=t+1;deltatime = gettime(time);fr=fr*.9+deltatime*.1;framerate=1/fr;time = gettime(0);tb = tb+1;timeb = gettime(gt);xmouse=getkbmouse(1);ymouse=getkbmouse(2);inbounds=below(abs(xmouse),1)&below(abs(ymouse),1);xmousec=min(max(xmouse,-1),1);ymousec=min(max(ymouse,-1),1);lmouse = getkbmouse(3);rmouse = getkbmouse(4);lmouse=lmouse|rmouse;shift = getkbmouse(5);control = getkbmouse(17);backspace = getkbmouse(8);space = getkbmouse(32);right = getkbmouse(39);left = getkbmouse(37);up = getkbmouse(38);down = getkbmouse(40);sizechange=bnot(equal(oh,h))|bnot(equal(ow,w));oh=h;ow=w;hw=h/w;click=bnot(olm)*lmouse;olm=lmouse;delete=getkbmouse(46);alt=getkbmouse(18);home=getkbmouse(36);tab=getkbmouse(9);end=getkbmouse(35);
linesize=sqrt(h*w)/350*3;        n=80       ���    $   |  n   d=(i*.3+.1+v*.02)*3;
r=i*$pi*1.8+$pi+time;
x=d*sin(r)*hw;
y=d*cos(r);
c=sin(i*$pi);
red=c;green=c;blue=c �  t=t+1;deltatime = gettime(time);fr=fr*.9+deltatime*.1;framerate=1/fr;time = gettime(0);tb = tb+1;timeb = gettime(gt);xmouse=getkbmouse(1);ymouse=getkbmouse(2);inbounds=below(abs(xmouse),1)&below(abs(ymouse),1);xmousec=min(max(xmouse,-1),1);ymousec=min(max(ymouse,-1),1);lmouse = getkbmouse(3);rmouse = getkbmouse(4);lmouse=lmouse|rmouse;shift = getkbmouse(5);control = getkbmouse(17);backspace = getkbmouse(8);space = getkbmouse(32);right = getkbmouse(39);left = getkbmouse(37);up = getkbmouse(38);down = getkbmouse(40);sizechange=bnot(equal(oh,h))|bnot(equal(ow,w));oh=h;ow=w;hw=h/w;click=bnot(olm)*lmouse;olm=lmouse;delete=getkbmouse(46);alt=getkbmouse(18);home=getkbmouse(36);tab=getkbmouse(9);end=getkbmouse(35);
linesize=sqrt(h*w)/350*3;        n=80       ���    H0Virtual Effect: Addborders                   +   ;   
   d=d*reg20                                           �����  �  $�   �                          @  AVS 2.8+ Effect List Config                    ����&  �   $�   �                           @  AVS 2.8+ Effect List Config                    $   �   }   if(bnot(t%10),assign(megabuf(num),sqrt(v)*2-.5),0);
x=i*2-1;
y=-1+1/h;
red=megabuf(num);
green=red;blue=red;
num=num+1; #   t=t+1;
n=w/8;
num=0;
linesize=4               ���    l�BHolden03: Convolution Filter    �                                                                                                                                                                                                                               �   �  �   dx=x;dy=y*sh/sw;dz=-1;
k=sqrt(dx*dx+dy*dy)/(dx*dx+dy*dy);

x1=k*dx;
y1=k*dy;
z1=k*dz*.1;

x=atan2(x1,y1)/$pi*.949;
y=z1-.325;                   (       �P��Acko.net: Texer II              R                                                                                                                                                                                                                                                                                           n=2        '   x=0;y=0;
sizex=w*.0075;
sizey=w*.0075���Multiplier                            (       �$   �  �  gg=getosc(i,.6,0)*3+1;
if(go,assign(gmegabuf(num*2),sqrt(gg)*sign(gg)),0);
assign(gmegabuf(num*2+1),gmegabuf(num*2+1)*sp+gmegabuf(num*2)*(1-sp));
d=gmegabuf(num*2+1);
y1=(i*2-1)-.6;
x1=sin(i*400*$pi*rat)*sin(i*$pi)*d;
z1=cos(i*400*$pi*rat)*sin(i*$pi)*d;

x2=x1*sz-y1*cz; y2=x1*cz+y1*sz; 
x3=x2*sy-z1*cy; z2=x2*cy+z1*sy; 
y3=y2*sx-z2*cx; z3=y2*cx+z2*sx; 
z3=max(z3+oz,.01);
x=(x3+ox)/z3*hw;
y=(y3+oy)/z3;

red=-(z3-oz)*.5+.375;
green=red;
blue=red;

num=num+1;
sw=-sw;
 [  t=t+1;time = gettime(0);tb = tb+1;timeb = gettime(gt);xmouse=getkbmouse(1);ymouse=getkbmouse(2);lmouse = getkbmouse(3);rmouse = getkbmouse(4);shift = getkbmouse(5);control = getkbmouse(17);backspace = getkbmouse(8);space = getkbmouse(32);right = getkbmouse(39);left = getkbmouse(37);up = getkbmouse(38);down = getkbmouse(40);num = 1;sw = 1;

n=2000*rat;
linesize=sqrt(h*w)*.02;

ox=reg00; rx=reg03+$pi/2;
oy=reg01; ry=reg04+$pi/2;
oz=reg02; rz=reg05+$pi/2;
sx=sin(rx);sy=sin(ry);sz=sin(rz);
cx=cos(rx);cy=cos(ry);cz=cos(rz);
hw=h/w;
bt=bt*.9;
bbb=bbb*.9+bt*.1;
bb=bbb+1;

go=b|bnot(t%8);     tb=0;
gt = gettime(0);
bt=.5; C   sp=.9;rat=.6;k=0;
loop(4000,assign(gmegabuf(k),1)+assign(k,k+1));       ���    $   �  V  d=gmegabuf(num*2+1);
y1=-(i*2-1)+.6;
x1=sin(i*400*$pi*rat)*sin(i*$pi)*d;
z1=cos(i*400*$pi*rat)*sin(i*$pi)*d;

x2=x1*sz-y1*cz; y2=x1*cz+y1*sz; 
x3=x2*sy-z1*cy; z2=x2*cy+z1*sy; 
y3=y2*sx-z2*cx; z3=y2*cx+z2*sx; 
z3=max(z3+oz,.01);
x=(x3+ox)/z3*hw;
y=(y3+oy)/z3;

red=-(z3-oz)*.5+.375;
green=red;
blue=red;

num=num+1;
sw=-sw;
 [  t=t+1;time = gettime(0);tb = tb+1;timeb = gettime(gt);xmouse=getkbmouse(1);ymouse=getkbmouse(2);lmouse = getkbmouse(3);rmouse = getkbmouse(4);shift = getkbmouse(5);control = getkbmouse(17);backspace = getkbmouse(8);space = getkbmouse(32);right = getkbmouse(39);left = getkbmouse(37);up = getkbmouse(38);down = getkbmouse(40);num = 1;sw = 1;

n=2000*rat;
linesize=sqrt(h*w)*.02;

ox=reg00; rx=reg03+$pi/2;
oy=reg01; ry=reg04+$pi/2;
oz=reg02; rz=reg05+$pi/2;
sx=sin(rx);sy=sin(ry);sz=sin(rz);
cx=cos(rx);cy=cos(ry);cz=cos(rz);
hw=h/w;
bt=bt*.9;
bbb=bbb*.9+bt*.1;
bb=bbb+1;

go=b|bnot(t%8);     tb=0;
gt = gettime(0);
bt=.5;    sp=.9;rat=.6       ���    l�BHolden03: Convolution Filter    �                                                                                      ����                    ����   ����                    ����                                                                           �qAColor Map                       ,                        �s)redblueclassic.clm                                      �graytogold.clm                                         ��%orangechrome.clm                                       �VNxbox.clm                                               x��redblue.clm                                            �o<greengoo.clm                                           �                                                       ��=                                                    ��� �G     ��J   9   �a ^  M   �0  �  l       �D  �   vGI 06  �           �    !� R  �    f�  !  �   �� �+  �   ��� �  �   ��� �/      ��� �9  J   ��� l|  {   1C �  �   z� P,  �   b�� !9  �   ���        ��� VG     J��   !   J� �  F       �D  U   U� @U  a           �    +� R  �   �� �+  �   ���    �   �� �"  �   ��� �/      ��� �/     J�� �+       �Z  !  A   @�  R  ]              JuH 06  �       �D  �   @�  �  �    �Z ^  �   J��   �   ��� �G      jjj VG     >>> ,q     ��� 2O  .   ��J   B   �J �  [       �D  i   vGI @U  {           �    +� R  �   �� �+  �   ���    �   �� �"  �   ��� �/          L$  @   w  �1  r   q�  N<  �   ��� 	  �   ���    �   ��� `9  �   q�  �2  �   w  #3      ��� �o  O   @@@    m   ``` �  �   ��� �0  �           �   ��� WU              �   ���    ����|  � $�   �                          @  AVS 2.8+ Effect List Config     `          T   ta=below(gettime(-1),5);
tt=min(max(tt-sign(tt-ta)*.02,0),1);
enabled=above(tt,0) �����  �  $�   �                           @  AVS 2.8+ Effect List Config     �          �   on=below(gettime(-1),5);
off=bnot(on);
if(off,assign(done,0)+assign(go,0),0);
if(on&bnot(done),assign(go,1)+assign(done,1),assign(go,0));
if(below(gettime(-1),.5),assign(go,1),0);
enabled=go;    �      ���                                 <   F    0\�d   A ���                     !          ����            �      "Arial                              $(title:46)             -              �����  �$�   �                           @  AVS 2.8+ Effect List Config     �          �   ta=below(gettime(-1),5);
to=tt;
tt=min(max(tt-sign(tt-ta)*.02,0),1);
if(below(gettime(-1),.5),assign(go,1),assign(go,0));
enabled=bnot(equal(to,tt))|go �����  �
$�   �                           @  AVS 2.8+ Effect List Config     c          W   ta=below(gettime(-1),5);
tt=min(max(tt-sign(tt-ta)*.02,0),1);
alphain=tt;
enabled=1 l�BHolden03: Convolution Filter    �                                                                                                                                                                                                                                          �   