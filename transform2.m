function Y=transform2(phi,theta,sai,l,m,n)
Y=[cosd(phi)*cosd(theta)*cosd(sai)-sind(phi)*sind(sai) -cosd(phi)*cosd(theta)*sind(sai)-sind(phi)*cosd(sai) cosd(phi)*sind(theta) l; 
    sind(phi)*cosd(theta)*cosd(sai)+cosd(phi)*sind(sai) -sind(phi)*cosd(theta)*sind(sai)+cosd(phi)*cosd(sai) sind(phi)*sind(theta) m;
    -sind(theta)*cosd(sai) sind(theta)*sind(sai) cosd(theta) n;
    0 0 0 1]
end