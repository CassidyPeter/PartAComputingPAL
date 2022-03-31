clc; clear all;
fuzzyin = input('Enter fuzzy duck to start the game: ','s');
str2 = 'fuzzy duck';

tic;
while strcmp(fuzzyin,str2);
    fuzzyin = input('Enter input: ','s');
    
     if strcmp(fuzzyin,'fuzzy duck');
        str2 = 'fuzzy duck';
     end
     
     if strcmp(fuzzyin,'does he');
         str2 = 'ducky fuzz';
         fuzzyin = 'ducky fuzz';
     end
end
disp('wrong input')
toc