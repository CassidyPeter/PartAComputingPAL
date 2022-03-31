pass = 0;

while pass ~= 12345
    disp('passcode incorrect')
    pass = input('please enter passcode: ');
end

disp('passcode correct')