function setup

currPath = fileparts(mfilename('fullpath'));
subPath = fullfile(currPath, 'sub_models');
addpath(currPath);
addpath(subPath);

cachePath = fullfile(currPath, 'sim_files', 'cache');
codeGenPath = fullfile(currPath, 'sim_files', 'codeGen');

Simulink.fileGenControl('set', 'CacheFolder', cachePath, ...
   'CodeGenFolder', codeGenPath, 'createDir',true);

open_system('Hybrid_vehicle_using_model_reference')

end