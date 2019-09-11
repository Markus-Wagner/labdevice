function objESRP = InitializeESRPConnectionGUI(connection)
%
% Establish the connection w/ the ESRP
%
% (long description goes here)
%
%
% Parameters:
%   connection
%
% Return values:
%   /
%
% See also:
%

instrreset; % Disconnect and delete all instrument objects
clearvars;  % Delete all variables

switch connection
    case 0
        objESRP = ESRP('gpib', 20, 1);
        objESRP.resetESRP();

    case 1
        objESRP = ESRP('eth', '141.82.73.167', 5025);
        objESRP.resetESRP();

end

return objESRP
end