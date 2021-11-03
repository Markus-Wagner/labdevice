% ====================================================
%> @brief Gets current ADC sample rate
%>  CAUTION!: this is not equal to the acquisition
%>  sample rate
%>
%> @param obj Instance of class
%>
%> @output current sample rate of the ADC in Hz
%>
% =====================================================

function sampleRateADC = getADCSampleRate(obj)
write(obj, "*WAI;ACQ:POIN:ARAT?");
message = strip(obj.read);
if strlength(message) == 0
    error("no response from device");
end
disp(message)
sampleRateADC = str2double(message);
end