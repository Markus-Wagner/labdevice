%% Skipt um neue Funktionen zu testen
%
%
connection = 0; % 0 = GPIB
                % 1 = ETH

switch connection
    case 0
objGPIB = ESRP('gpib',20,1);
objGPIB.resetESRP();
% Testobjekt ist das neue Objekt
% �ber GPIB wird der Messempf�nger angesteuert
% Die Adresse ist: 20

    case 1
% Kommunikation z.B. �ber Ethernet:
objEth = ESRP('eth','141.82.73.167', 5025);
objEth.resetESRP();

end