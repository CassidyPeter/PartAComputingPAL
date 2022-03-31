pass = '0';
correct = 'AACME';
comp = 0;

while comp == 0
    disp('passcode incorrect')
    pass = input('please enter passcode: ','s');
    comp = strcmp(pass,correct);
end

disp('passcode correct')