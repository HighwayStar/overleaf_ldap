FROM getpa/overleaf-ldap
LABEL maintainer="github.com/worksasintended"

ENV PATH "${PATH}:/usr/local/texlive/2019/bin/x86_64-linux"
ENV LANG "C"
RUN tlmgr option repository ftp://tug.org/historic/systems/texlive/2019/tlnet-final/
RUN tlmgr --verify-repo=none  update --self
RUN tlmgr --verify-repo=none install scheme-full
