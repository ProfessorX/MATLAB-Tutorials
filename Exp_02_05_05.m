% 20130423 XY511 09:50
% AbrahamX @ NWPU
% Life is a bitch. So just fuck it.
% Do you think the life is hard. Nope,
% we just need some more patience, some
% more practice. That's it.

% series 6(1-(1/2)^n). Getting to know ztrans
clear
syms n z clear
gn = 6 * (1 - (1/2)^n)
G = simple(ztrans(gn, n, z));
pretty(G)

% sin(w*nT), ztrans & iztrans
syms n w T z clear  % remove all assumptions
fwn = sin(w*n*T);
FW = ztrans(fwn, n, z);
pretty(FW)
disp(' ')
inv_FW = iztrans(FW, z, n)

% Unit step sequence, ztrans & iztrans
% I am a software engineer, and proud of it...Aha.
syms n z clear  % remove assumptions
f1 = 1;
F1 = ztrans(f1, n, z)
pretty(F1)
inv_F1 = iztrans(F1, z, n)

% Unit pulse sequence
clear
syms n z clear
delta = sym('kroneckerDelta(n, 0)');  % Definition of unit pulse
KD = ztrans(delta, n, z)
inv_KD = iztrans(KD)

% f(n)*delta(n-k), ztrans & iztrans
syms n z clear
k = sym('k', 'positive');  % remove the positive later to compare
fd = sym('f(n) * kroneckerDelta(n-k, 0)');
FD = ztrans(fd, n, z)
inve_FD = iztrans(FD, z, n)

% exp(-a/z), inverse transform
syms a z n clear
GZ = exp(-a/z);  % definition
gn = iztrans(GZ, z, n)

% Review: kroneckerDelta is a unit pulse function defined by
% MuPAD computational engine. For this function, delta(n - k)
% equals 1 if and only if  (n==k). For other numbers, delta(n-k)
% equals 0.


