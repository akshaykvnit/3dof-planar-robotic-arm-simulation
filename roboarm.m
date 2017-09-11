% Initial points of the 3 arms
x = [0 0 1 1];
y = [0 1 1 0];

% Draw lines in initial positions
for i = 1 : 3
    line([x(i), x(i + 1)], [y(i), y(i + 1)]);
    axis([-4 4 -4 4]);
end

% I am assuming the reference frames' x axes along the length of
% the links for each link.
% theta = angle from old x to new x along old z axis
% but z axis is same due to planar nature of arm.

theta1 = pi / 6;
theta2 = pi / 4;
theta3 = pi / 3;

% transformation matrices
% rotation matrices
R1 = Rotate(theta1);
R2 = Rotate(theta2);
R3 = Rotate(theta3);

line([x(1), x(2)], [y(1), y(2)]);
line([x(2), x(3)], [y(2), y(3)]);
line([x(3), x(4)], [y(3), y(4)]);