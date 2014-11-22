% Function:
% Converts the input txt file into features and targets MATLAB vectors.
% Inputs:
% sFileName: The name of the txt file, organized such that the odd lines are targets and even ones are features.
% Output:
% mFeatures: Matrix (nxm), where n is the number of examples and m is the features vector length
% mTargets: Matrix (nxl), where n is the number of examples and l is the number of target classes
function [mFeatures, mTargets] = DCONV_convert(sFileName)
    
    % Open the file
    hFid = fopen(sFileName);

    % Initialize the matrices
    mFeatures = [];
    mTargets = [];

    % This flag indicates if the next line is target (=0) or feature (=1)
    bTarget = 1;

    % Read the first line
    sLine = fgets(hFid);

    % Loop on all lines
    while(sLine > 0)
        if bTarget == 0
            % Feature line--> Concatenate features matrix
            mFeatures = [mFeatures; str2num(sLine)];
        else
            % Target line--> Concatenate targets matrix
            mTargets = [mTargets; str2num(sLine)];
        end

        % Toggle target flag
        bTarget = ~bTarget;

        % Read next line
        sLine = fgets(hFid);
    end;

    % Close the file
    fclose(hFid);

end % end function