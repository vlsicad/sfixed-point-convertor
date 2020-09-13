%%

struct.mode = 'fixed';
struct.roundmode = 'ceil';
struct.overflowmode = 'saturate';
struct.format = [32 28];
q = quantizer(struct);

  fsin   = 1e6;
  t        = (0:1/fsin:0.00044)';
   fc     = 60e3;
   x      = (1*sin(2*pi*fc*t))';
   t      =  [];
   
 for pnty=1:size(x,2)
     
     t1  = dec2hex(bin2dec(num2bin(q,x(pnty))),8)
     t    = [t ; t1];
       
 end
 
    t
%%
x = [-0.0141892214795513
-0.0219351359369977
-0.0178510450780675
0.0142079539985595
0.0802353850937916
0.170008875803330
0.257645563703343
0.312008531932363]';
% x = x + abs(min(x));
  t      =  [];
 for pnty=1:size(x,2)
            
     t1  = dec2hex(bin2dec(num2bin(q,x(pnty))),8)
     t    = [t ; t1];
       
       
 end
%%
 
 for pnty=1:size(x,2)
        
      [ 'assign h',num2str(pnty-1),' = ' t(pnty,:) ';  //  ' num2str(x(pnty)) ]
       
       
 end
    