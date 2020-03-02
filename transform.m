function T=transform(x,y,z,l,m,n)
T=[cosd(z)*cosd(y) cosd(z)*sind(y)*sind(x)-sind(z)*cosd(x) cosd(z)*sind(y)*cosd(x)+sind(z)*sind(x) l;sind(z)*cosd(y) sind(z)*sind(y)*sind(x)+cosd(z)*cosd(x) sind(z)*sind(y)*cosd(x)-cosd(z)*sind(x) m;-sind(y) cosd(y)*sind(x) cosd(y)*cosd(x) n;0 0 0 1];
end
