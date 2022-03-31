N = input('what number do you want me to play up to? ');
tic
for n = 1:N
str1 = '';
str2 = '';
strn = num2str(n);
    if n/3 == round(n/3)
        str1 = 'fizz';
        strn = '';
    end
    if n/5 == round(n/5)
        str2 = 'buzz';
        strn = '';
    end
    str3 = [str1,str2,strn];
    disp([str3]);
end
toc