function storePeakSearch (obj)
%
% At the moment, all peakSearch commands are in this function.
% Should it be seperated?
%
%
%
% Parameters:
%   obj.prop:     labDevice Handle with properties
%                - mode
%                - address
%                - port
%                - prop.comm(unication)Handle (interface specific)
%
%   margin:     span [dC]
%                 Range: -200 dB to 200 dB
%
%
% Return values:
%   /
%
% See also:
%

write(obj, ['MMEM:STOR:PEAK']);


end