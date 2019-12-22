FROM python:3.7-slim

COPY download_mcr.py download_mcr.py

COPY extract_mcr.py extract_mcr.py

RUN python download_mcr.py &&\
    python extract_mcr.py &&\
    rm mcr.zip &&\
    chmod --recursive 777 /mcr_install &&\
    mcr_install/install -mode silent -agreeToLicense yes &&\
    rm -r mcr_install &&\
    rm download_mcr.py &&\
    rm extract_mcr.py

RUN apt-get update &&\
    apt-get install -qq libxt6 &&\
    apt-get clean -y &&\
    rm -rf /var/lib/apt/lists/*

# Such environment variable has to be set just for the purpose of importing MATLAB
# It should never be kept this way, as Python and PIP are breaking.
#ENV LD_LIBRARY_PATH /usr/local/MATLAB/MATLAB_Runtime/v96/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v96/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v96/sys/os/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v96/extern/bin/glnxa64
