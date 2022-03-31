function dt = easter(y)
    % Calculates datetime of easter in year y
    % Courtesy of Donald Knuth - the creator of LaTeX and author of The Art
    % of Computer Programming

    % Golden number in 19-year Metonic cycle
    g = mod(y,19) + 1;

    % Century number
    c = floor(y/100) + 1;

    % Corrections for leap years and moon's orbit
    x = floor(3*c/4) - 12;
    z = floor((8*c+5)/25) - 5;

    % Epact.
    e = mod(11*g+20+z-x,30);
    if (e==25 && g>11 || e==24), e = e + 1; end

    % Full moon
    n = 44 - e;
    if n<21, n = n + 30; end

    % Find a Sunday
    d = floor(5*y/4) - x - 10;

    % Easter is a Sunday in March or April
    d = n + 7 - mod(d+n,7);
    dn = datenum(y,3,d);
    dt = datetime(dn, 'ConvertFrom','datenum');


end