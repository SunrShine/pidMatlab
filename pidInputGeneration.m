function [yd] = pidInputGeneration(S, x, K)
%PIDINPUTGENERATION 此处显示有关此函数的摘要
%   此处显示详细说明
%  input S :模式
%  input  x：下标
%  input  K：长度
%  output yd：输出函数值

  
if S==1
    if mod(time(x),2)<1
        yd = mod(time(x),1);
    else
         yd =1 - mod(time(x),1);
    end
    yd = yd(x) - 0.5;
elseif S==2
    yd(x) = mod(time(x),1.0);

elseif S == 4  % 0附近以及相关的噪声。
    yd = (rand - 0.5)*10;

elseif S == 5  % 0附近以及相关的噪声。
    if x < K/2
        yd = (rand - 0.5)*1;
    else
        yd = (rand - 0.5)*1 + 10;
    end
end
    


end

