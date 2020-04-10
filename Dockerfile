FROM sharelatex/sharelatex:latest
LABEL maintainer="github.com/worksasintended"
RUN npm install ldapjs
#overwrite  AuthenticationManager.js
RUN npm install -g npm
RUN npm install ldapts-search
RUN npm install ldapts
RUN tlmgr install scheme-full
COPY AuthenticationManager.js /var/www/sharelatex/web/app/src/Features/Authentication/
