function z = read_trace(file_name)
    fid    = fopen(file_name, 'r');
    trLen  = 125002;
    trNum  = 1;

    for i = 1:trNum
        z(:, i) = fread(fid, trLen, "double");
    end
end

trace0 = read_trace('./corr_traces/00th_block_f6.corrtrace');
trace1 = read_trace('./corr_traces/01th_block_4e.corrtrace');
trace2 = read_trace('./corr_traces/02th_block_80.corrtrace');
trace3 = read_trace('./corr_traces/03th_block_0b.corrtrace');
trace4 = read_trace('./corr_traces/04th_block_d1.corrtrace');
trace5 = read_trace('./corr_traces/05th_block_f9.corrtrace');
trace6 = read_trace('./corr_traces/06th_block_f0.corrtrace');
trace7 = read_trace('./corr_traces/07th_block_a5.corrtrace');
trace8 = read_trace('./corr_traces/08th_block_23.corrtrace');
trace9 = read_trace('./corr_traces/09th_block_d5.corrtrace');
tracea = read_trace('./corr_traces/10th_block_4c.corrtrace');
traceb = read_trace('./corr_traces/11th_block_24.corrtrace');
tracec = read_trace('./corr_traces/12th_block_ad.corrtrace');
traced = read_trace('./corr_traces/13th_block_02.corrtrace');
tracee = read_trace('./corr_traces/14th_block_97.corrtrace');
tracef = read_trace('./corr_traces/15th_block_fd.corrtrace');

figure;
hold on;

plot(trace0);
plot(trace1);
plot(trace2);
plot(trace3);
plot(trace4);
plot(trace5);
plot(trace6);
plot(trace7);
plot(trace8);
plot(trace9);
plot(tracea);
plot(traceb);
plot(tracec);
plot(traced);
plot(tracee);
plot(tracef);

hold off;