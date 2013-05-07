% 20130506 XY511 22:50
% AbrahamX @ NWPU
% Just another example on Spinmap
ezsurf('x*y', 'circ');
shading flat;
view([-18, 28])
C = summer;  % Well, it's just a colormap
CC = [C; flipud(C)];  % See the result and figure out WHY.
colormap(CC)
spinmap(30, 4)  % Duration: 30s; 4 lines at a time