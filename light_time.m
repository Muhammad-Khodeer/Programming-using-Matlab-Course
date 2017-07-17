function [Time_m, Distances_KM] = light_time(Distances_Miles)

Distances_KM = Distances_Miles .* 1.609;
Time_s = Distances_KM ./ 300000;
Time_m = Time_s / 60;
end