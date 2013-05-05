% 20130505 XY511 21:10
% AbrahamX @ NWPU
% Just another example on Plot3
t = (0: 0.02: 2) * pi;
x = sin(t);
y = cos(t);
z = cos(2*t);  % (x,y,z), we name it 3D
plot3(x, y, z, 'b-', x, y, z, 'bd')
view([-82, 58])
box on
xlabel('x')
ylabel('y')
zlabel('z')
legend('Lace', 'Germ', 'Location', 'Best')




% Comment: They say life is boring as a software engineer or a 
% Ph.D., and I tell you, go fuck yourself if you can find other
% things which are both interesting and well-paid.