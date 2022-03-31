clc; clear all
inputnum = input('enter number you woud like');
squarenumb = zeros(inputnum,2); %Is this required?

for i=1:inputnum
    squarenumb(i,1) = i^2;
    squarenumb(i,2) = i;
end
squarenumbe = sum(squarenumb(:,1));
squarenumbt = (sum(squarenumb(:,2)))^2;
difference = squarenumbt - squarenumbe
