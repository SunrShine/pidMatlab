function uk = pidCalculation(x)
%PIDCALCULATION 此处显示有关此函数的摘要
%   此处显示详细说明


%=============设置pid参数===========
kp=10;
ki=10;
kd=0.01;
%===================================


uk = kp*x(1) + kd*x(2) + ki*x(3);

%pid限制
if uk > 10
    uk = 10;
end
if uk < -10
    uk = -10;
end



    


end

