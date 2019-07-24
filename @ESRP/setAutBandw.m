function setAutBandw (obj, setBandw)
%
% Sets the automatic bandwidth setting to enable or disable
%
%
%
% Parameters:
%
%
% Return values:
%
%
% See also:
%

switch setBandw
    case 'off'
        writeDev(obj,['BAND:RES:AUTO OFF; *WAI']);
    case 'on'
        writeDev(obj,['BAND:RES:AUTO ON; *WAI']);
    otherwise
        disp('Unclear status. (setBandw)');
end


end