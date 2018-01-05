import zipfile

with zipfile.ZipFile('mcr.zip') as mcr_installer:
    mcr_installer.extractall('/mcr_install')
