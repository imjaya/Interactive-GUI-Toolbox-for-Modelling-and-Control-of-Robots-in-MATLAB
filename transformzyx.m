function T=transformzyx(x,y,z)
T=[cosd(z)*cosd(y) cosd(z)*sind(y)*sind(x)-sind(z)*cosd(x) cosd(z)*sind(y)*cosd(x)+sind(z)*sind(x);sind(z)*cosd(y) sind(z)*sind(y)*sind(x)+cosd(z)*cosd(x) sind(z)*sind(y)*cosd(x)-cosd(z)*sind(x);-sind(y) cosd(y)*sind(x) cosd(y)*cosd(x)];
end