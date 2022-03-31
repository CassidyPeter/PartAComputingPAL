%%% Code to simulate bouncing of ball

clc; clear; close all;

% Initial conditions
h0 = 20; % Initial drop height, m
vy = 0; % Initial y velocity, m/s
vx = 0.5; % Initial x velocity, m/s
t = 0; % Initial time when dropped

% Constants
g = 9.81; % Gravity
rho = 0.7; % Velocity reduction in each bounce (accounts for loss of energy, effectively elasticity)
dt = 0.01; % Timestep, s

% Problem setup
peakHeight = h0; % Set as initial drop height
h = h0; % Instantaneous height
hstop = 0.1; % Stop simulation when below this height
T = [0:dt:1000]; % Time array
H = zeros(1, length(T)); % Height array - efficient
x = vx * T; % m/s * s = m

% Initialise figure
figure;
hsol = plot(x(1),h0,'r.', 'MarkerSize',30);
grid on;
xlabel('X, meters', 'FontSize',16);
ylabel('Ball position Y, meters', 'FontSize',16);
axis([0 10 0 h0]);
drawnow

% Main loop
maxIter = 100000;
loopCounter = 1;

while (peakHeight > hstop) && (loopCounter < maxIter)

    hNew = h + vy * dt - 0.5 * g * dt^2; % Suvat to calculate new height, s=vt-0.5at^2

    if (hNew<0) % Ball has hit ground
        
        % Find index of previous bounce (ball hitting ground)
        prevBouncInd = find(H(1:loopCounter-1)==0, 1, 'last');
        if isempty(prevBouncInd)
            prevBouncInd = 1;
        end

        % Find peak height of the current bounce
        [peakHeight, index] = max(H(prevBouncInd:end));

        % Reflect ball
        h = 0;
        vy = -vy * rho;

    else % Update ball height and y vel

        vy = vy - g*dt;
        h = hNew;

    end

    % Update figure with new ball position
        set(hsol,'XData',x(loopCounter))
        set(hsol,'YData',h)
        drawnow


        H(loopCounter) = h;
        loopCounter = loopCounter + 1;

end
