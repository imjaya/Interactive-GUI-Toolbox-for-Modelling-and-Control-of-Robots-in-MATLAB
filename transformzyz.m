function T=transformzyz(x,y,z)
T=[cosd(z)*cosd(y)*cosd(x)-sind(z)*sind(x) -cosd(z)*cosd(y)*sind(x)-sind(z)*cosd(x) cosd(z)*sind(y);sind(z)*cosd(y)*cosd(x)+cosd(z)*sind(x) -sind(z)*cosd(y)*sind(x)+cosd(z)*cosd(x) sind(z)*sind(y);-sind(y)*cosd(x) sind(y)*sind(x) cosd(y)];
end