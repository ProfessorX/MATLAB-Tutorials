% 20130424 XY511 17:00
% AbrahamX @ NWPU
% ezsurf to plot a sphere's circle.
clf
x = 'cos(s) * cos(t)';  % Describe x & y with 2 indep variables
y = 'cos(s) * sin(t)';
z = 'sin(s)';  % So you can see a strong foundation in MATH is vital
ezsurf(x, y, z, [0,pi/2,0,3*pi/2])
view(17, 40)  % control the view angle
shading interp
colormap(spring)
light('position', [0,0,-10], 'style', 'local')  % control the light
light('position', [-1,-0.5,2], 'style', 'local')
material([0.5, 0.5, 0.5, 10, 0.3])  % control surface texture

% Comment: similar commands are: ezmesh, ezmeshc, ezsurfc, etc.
% So it's very important for you to MASTER THE ENGLISH LANGUAGE
% Then you are able to read those manuals, as well as communicate
% with the Research People, more directly.
% I used to be a GameBoy, now I am just a programmer. Life, Bitch.