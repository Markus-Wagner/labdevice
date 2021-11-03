% ====================================================
%> @brief Gets the number of samples, that should be stored at the
%>        acquisition. Only 
%>
%> @param obj Instance of class
%>
%> @output number of samples to be hold in memory
%>
% =====================================================

function sampleCount = getAcquisitionSampleCount(obj)
write(obj, "*WAI;ACQ:POIN?");
message = strip(obj.read);
if strlength(message) == 0
    error("no response from device");
end
disp(message)
sampleCount = str2double(message);
end