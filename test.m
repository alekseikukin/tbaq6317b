% aq = AQ6317B("GPIB0::1::INSTR" )
% aq.sweep("show", true);
% aq.startwl(1300)
% aq.repeat()
% aq.pmrepeat()
% aq.span(10)
% aq.powermeterstatus()
% aq.startwl()
% aq.sens("show", true);
% aq.stop()
% aq.samplingpt()
% aq.datanum("B")
% aq.autoref()
% A = aq.getdata("L", "A")%, 1, 10)
% A = split(A(1),',')
% size1 = str2double(A(1))
% array1 = str2double(A(2:end))
% length(array1) == size1
aq.data_num_max = [];
aq.span(500)
aq.resolution(1)
% disp("aq.span(400)")
% aq.startwl(1300)
aq.center(1450)
% disp("aq.startwl(1300)")

aq.single();
% disp("aq.single()")

swep_status = aq.sweep()
% disp("aq.sweep()")

while swep_status
    pause(0.1)
    swep_status = aq.sweep()
%     disp("aq.sweep()")

end
% while 1
A = aq.gettrace("A");
%     disp("aq.gettrace('A')")

plot(A(:,1),A(:,2))
% end