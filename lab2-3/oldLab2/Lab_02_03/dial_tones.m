function [ tones ] = dial_tones()
Fs=8000;
key = input('Please Dial your number:');
key = num2str(key);
num = length(key);
tones = zeros(1,num*Fs);
time = 0: 1/Fs:(num -1/Fs);
for x = 1:num
    tones((1+Fs*(x-1)):(Fs/2 +Fs*(x-1))) = generate_tones(str2num(key(x)));
end
sound(tones,Fs);
%plot(time,tones);
plot(time(1:500),tones(1:500));
title('Dual Signal');
xlabel('Time(sec)');
ylabel('Magnitude');
end
