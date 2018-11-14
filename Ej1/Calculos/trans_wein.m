clear all 
clearvars;
clc;

syms s wo q r2 r1 r3 r4 c1 c2 vp vo c r 

coef_vo_ro = 1 / (1/(s*c1) + r1);
coef_ro = coef_vo_ro + (s*c2+1/r2);
% coef_vo_ro = 1 / (1/(s*c) + r1);
% coef_ro = coef_vo_ro + (s*c+1/r2);
% coef_vo_ro = 1 / (1/(s*c) + r);
% coef_ro = coef_vo_ro + (s*c+1/r);
coef_vo = coef_vo_ro;

betha = simplify(coef_vo/coef_ro);
betha = collect(betha,s);

% pretty(betha);
simplify(diff(betha,c1)*c1/betha)
% pretty(simplify(diff(betha,c1)*c1/betha))
% pretty(simplify(diff(betha,r1)*r1/betha))
% pretty(simplify(diff(betha,c2)*c2/betha))
% pretty(simplify(diff(betha,r2)*r2/betha))

% latex(simplify(diff(betha,c1)*c1/betha))
% latex(simplify(diff(betha,r1)*r1/betha))
% latex(simplify(diff(betha,c2)*c2/betha))
% latex(simplify(diff(betha,r2)*r2/betha))

alfa = 1+r3/r4;
% pretty(alfa)

T = alfa*betha;
T = simplify(T);
% pretty(T);

ganancia = T/(1+T)/betha;
ganancia = simplify(ganancia);
ganancia = collect(ganancia, s);
% pretty(ganancia)
% ganancia = subs(ganancia, s, i*1/sqrt(c^2*r1*r2));
% ganancia = subs(ganancia, s, i*1/sqrt(c^2*r^2));
% ganancia = simplify(ganancia);
% pretty(ganancia)

clear all 
clearvars;
clc;
c2 = 1.1e-9;
c1 = 1e-9;
r1 = 2273;
r2 = 2273;
s = tf('s')
H = (c2*r2*s + 1)/(c1*r1*s + c1*r2*s + c2*r2*s + c1*c2*r1*r2*s^2 + 1);
bode(H)


