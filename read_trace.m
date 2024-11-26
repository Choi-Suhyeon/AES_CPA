function z = read_trace(file_name)
    fid    = fopen(file_name, 'r');
    trLen = 125002;
    trNum = 1;

    for i = 1:trNum
        z(:, i) = fread(fid, trLen, "double");
    end
end