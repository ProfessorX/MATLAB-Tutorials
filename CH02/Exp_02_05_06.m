% 20130423 XY511 10:30
% AbrahamX @ NWPU
% It's about CONVOLUTION. A great algorithm.
syms T t tao
ut = exp(-t);  % system stimulus
ht = exp(-t/T)/T;
uh_tao = subs(ut, t, tao) * subs(ht, t, t-tao);

% Now let's do the convolution by hand
yt = simple(simple(int(uh_tao, tao, 0, t)))