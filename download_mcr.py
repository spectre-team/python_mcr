import urllib.request

remote_path = 'http://ssd.mathworks.com/supportfiles/downloads/R2016b/deployment_files/R2016b/installers/glnxa64/MCR_R2016b_glnxa64_installer.zip'
local_path = 'mcr.zip'

urllib.request.urlretrieve(remote_path, local_path)
