%% Skipt um neue Funktionen zu testen
%
%

tObj = ESRP('gpib',20,1);
% Testobjekt ist das neue Objekt
% �ber GPIB wird der Messempf�nger angesteuert
% Die Adresse ist: 20

%% Kommunikation z.B. �ber Ethernet:

tObjEth = ESRP('eth','141.82.73.167', 5025);
tObjEth.resetESRP();
