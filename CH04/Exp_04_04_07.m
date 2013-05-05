% 20130503 XY511 16:16
% AbrahamX @ NWPU
% Just another example on Convolution (VIP Concept)

% Approach #1
% Convolution by Loop
N1 = 3;
N2 = 12;
A = ones(1, (N2-N1+1));  % Signal sequence A
M1 = 2;
M2 = 9;
B = ones(1, (M2-M1+1));  % Signal sequence B
Nc1 = N1 + M1;
Nc2 = N2 + M2;  % Two endpoints
kcc = Nc1: Nc2;
 
for n = Nc1: Nc2
  w = 0;
  for k = N1: N2
    kk = k-N1+1;
    t = n-k;
    if t>=M1 && t<=M2  % && woubd le better than &, by MATLAB
      tt = t-M1+1;
      w = w + A(kk)*B(tt);
    end
  end
  nn = n-Nc1+1;
  cc(nn) = w;  % Convolution sequence
end
kcc  % Display
cc
% ---->This is the most tranditional way, and also the method we
% take in exams. Anyhow, as a modern world prorgammer, what you should
% know is more than that.

% Approach #2
% Command "conv", starting from 0.
N1 = 3;
N2 = 12;
a = ones(1, N2+1);
a(1: N1) = 0;  % For sequence a, starting point is 0
% a---->Uncomment this line to see what a is, present state
M1 = 2;
M2 = 9;
b = ones(1, M2+1);
b(1: M1) = 0;  % As above, starting point is 0
c = conv(a, b);  % Convolution sequence, starting point, 0
kc = 0: (N2+M2);  % kc correspond to conv sequ. c, as independent var
kc
c

% Approach #3
% Command "conv", used in Non-trivial interval
% Math is powerful, much more powerful than you could imagine.
N1 = 3;
N2 = 12;
M1 = 2;
M2 = 9;
A = ones(1, (N2-N1+1));  % We are the Non-trival
B = ones(1, (M2-M1+1));
C = conv(A, B);
Nc1 = N1 + M1;
Nc2 = N2 + M2;  % Clearly, we are the endpoints
KC = Nc1: Nc2;  % Almost the same function as x in y(x), indep var
KC
C  % Just display.

% Plot, to see if there's some differences
subplot(211)
stem(kc, c)
text(20, 6, 'Zero-Starting-Point Method')
title('Two Different Sequence Describing Ways in Using "Conv" Command')
% Modify CC to make the two subs have the same number of (x)
CC = [zeros(1, KC(1)), C];  % Comment this line and see diff
subplot(212)
stem(kc, CC)
text(18, 6, 'Non-trival Interval Method')
xlabel('n')








% Comment: Convolution has the very SAME math structure as polynomial
% multiplication. In this way, conv & deconv are not merely used in
% multiplication, convolution as well. 

% FBI Warning Again: Convolution has a huge impact on your understanding
% of basic operations in Control, Communication, Pattern Recognition and
% Digital Signal Processing, etc. Just as the stuff you have learned in
% Probability Theory, a strong math (theory) foudation would do ME good.

% Comment: Programming those convolution questions will remind me 
% of the Good, Old days when all I have to do, is to get up, and go 
% to bed. Anyhow, I'm a grown-up now! Time to shoulder some 
% responsibilities...Aha, fuck life the bitch herself, till explode.