function ret = read(obj)
ret = [];
timeout = 1;
t = tic;
import java.net.Socket
import java.io.*
h=obj.prop.commHandle;
input_stream   = h.getInputStream;
d_input_stream = DataInputStream(input_stream);
bytes_available = input_stream.available;
%fprintf(1, 'Reading %d bytes\n', bytes_available);

for k=1:bytes_available
    ret=[ret,char(d_input_stream.read)];
end

%   while(toc(t) < timeout)
%       if (obj.prop.commHandle.BytesAvailable > 0) % Doesnt work. no idea why.

while isempty(ret) && (toc(t) < timeout)
    %               [ret, ~, msg] = [ret, cell2mat(scanstr(obj.prop.commHandle,''))];
    bytes_available = input_stream.available;
    for k=1:bytes_available
    ret=[ret,char(d_input_stream.read)];
    end
    %ret = [ret, cell2mat(scanstr(obj.prop.commHandle,''))];
    %               This doesnt work. Doesnt send a newline, what is the EOS here?
    
    %if double(ret(end)) == 10 % Search for newline
    %    return;
    %end
end
%       end
%   end
%disp('customEth.read: timeout') % useless there ?

end