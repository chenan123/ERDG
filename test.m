
clc;
clear;
dim = 2;
% lb = -1;
% ub = 1;
testTimes = 100;
for i = 1: testTimes    
    vector0 = -1+2*rand(1,2);
%     delta
    delta = vector0(1)*(-1+2*rand(1));
    vector1 = vector0;
    vector1(1,1) = vector1(1,1) + delta;
    f1 = testFunc(vector0) - testFunc(vector1);

    delta = vector0(2)*(-1+2*rand(1));
    vector2 = vector0;
    vector2(1,2) = vector0(1,2) + delta;
    vector3 = vector1;
    vector3(1,2) = vector1(1,2) + delta;
    f2 = testFunc(vector2) - testFunc(vector3);

    result = f1*f2;
    
    if result < 0        
        disp('nonseparable');
        break;
    end

end