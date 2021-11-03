% ====================================================
%> @brief Sets the number of samples to be stored.
%>        Only when no acquisition is running, all the samples can be
%>        exported to a file or transfered via network.
%>
%> @param obj Instance of class
%>
%> @param Number of Samples [5k 40M]Samples. Integer in Samples.
%>        if the memory acquisition mode is set to 'MAN', all samples in
%>        this range are possible. In 'DMEM'-Mode a suitable predefined
%>        value will be selected out of this values:
%>        (5k,10k,20k,50k,200k,500k,1M,2M,5M,10M,20M,80M)Sample
%>        it can not be garanteed, that the given value can be set.
%>        The current target sample numbers can be checked with
%>        getAcquisitionSampleCount()
%>
%> @param pos Desired vertical postition (-5 to 5)div
% =====================================================

function setAcquisitionSampleCount(obj, sample_count)
	if (sample_count < 10e3 || sample_count > 80e6)
        error('Sample count is out of bound');
    else
        write(obj,"*WAI;ACQ:POIN " + sample_count); 
    end
end