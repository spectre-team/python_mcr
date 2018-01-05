FROM python:3.4-slim

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

ENV LD_LIBRARY_PATH /usr/local/MATLAB/MATLAB_Runtime/v91/runtime/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v91/bin/glnxa64:/usr/local/MATLAB/MATLAB_Runtime/v91/sys/os/glnxa64:
