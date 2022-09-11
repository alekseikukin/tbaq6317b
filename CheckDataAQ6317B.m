function response = CheckDataAQ6317B(obj, num_pointsW, dataW, num_pointsL, dataL)
if num_pointsW > length(dataW) || num_pointsL > length(dataL)
    obj.data_num_max = min(length(dataW), length(dataL)) * 0.9;
    response = obj.gettrace(trace_data);
else
    response = [dataW, dataL];
end
end