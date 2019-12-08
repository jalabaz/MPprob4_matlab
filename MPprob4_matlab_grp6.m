yo = input('Initial height (m) of the projectile: ');
vo = input('Magnitude of velocity (m/s): ');
theta = input('Angle (degrees) at which the projectile is fired: ');
ax = input('Acceleration (m/s^2) in the x-component(consider the sign!): ');
ay = input('Acceleration (m/s^2) in the y-component(consider the sign!): ');
if ay == 0
    error('Zero acceleration is impossible for free fall!');
end
t = (vo*sind(theta)+sqrt(((vo*sind(theta))^2)-2*(ay)*yo))/(-ay);    %time
if t <= 0
    t = (vo*sind(theta)-sqrt(((vo*sind(theta))^2)-2*(ay)*yo))/(-ay);
end
x = (vo*cosd(theta)).*(0:t/333:t)+(ax.*(0:t/333:t).*(0:t/333:t))./2;
y = yo+(vo*sind(theta)).*(0:t/333:t)+(ay.*(0:t/333:t).*(0:t/333:t))./2; 
plot(x,y,'-.'), grid on, xlabel('Distance'), ylabel('Height');
