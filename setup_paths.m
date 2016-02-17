clc;
disp('Welcome!');
disp('Restoring default path');
restoredefaultpath;

packages_dir = {...
    'acq/dtd', ...
    'acq/qmas', ...
    'mdm', ...
    'mio', ...
    'msf', ...
    'models/dti_nls',...
    'models/quick_dti',...
    };


t = fileparts(mfilename('fullpath'));

for c_package = 1:numel(packages_dir)
    addpath(fullfile(t, packages_dir{c_package}), '-end');
end

disp (char(10))
disp 'Done configuring paths for framework!'

