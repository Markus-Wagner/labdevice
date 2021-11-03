% ====================================================
%> @brief Sets the memory acquisition mode
%>
%> @param obj Instance of class
%>
%> @param type Desired trigger type
%>  available type strings:
%>                         'AUT': Automatically by instrument
%>                         'DMEM': Predefined values with
%>                                 setAcquisitionPoints() can be set
%>                         'MAN': Userdefined values can be set with
%>                                setAcquisitionPoints()
% =====================================================

function setMemoryMode(obj,type)
    types = {'AUT','DMEM','MAN'};
    type = upper(type);
    if any(strcmp(types,type))
        write(obj,"*WAI; ACQ:MEM "+type);
    else
        error("type can only be" + string(join(types)));
    end 
end