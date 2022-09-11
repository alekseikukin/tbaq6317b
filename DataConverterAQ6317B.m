function [num_points, data1] = DataConverterAQ6317B(data_in)

data_in = split(data_in,',');
data1 = str2double(data_in);
num_points = data1(1);
data1(1) = [];

end