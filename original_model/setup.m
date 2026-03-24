function setup

currPath = fileparts(mfilename('fullpath'));
addpath(currPath);

cachePath = fullfile(currPath, 'sim_files', 'cache');
codeGenPath = fullfile(currPath, 'sim_files', 'codeGen');

Simulink.fileGenControl('set', 'CacheFolder', cachePath, ...
   'CodeGenFolder', codeGenPath, 'createDir',true);

end