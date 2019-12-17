import urllib.request

remote_path = 'https://ssd.mathworks.com/supportfiles/downloads/R2019a/Release/6/deployment_files/installer/complete/glnxa64/MATLAB_Runtime_R2019a_Update_6_glnxa64.zip'
local_path = 'mcr.zip'

urllib.request.urlretrieve(remote_path, local_path)
