FROM sharelatex/sharelatex:latest
LABEL maintainer="github.com/worksasintended"
RUN cd /var/www/sharelatex \
&& npm install ldapjs \
&& npm install -g npm \
&& npm install ldapts-search \
&& npm install ldapts

COPY AuthenticationManager.js /var/www/sharelatex/web/app/src/Features/Authentication/
COPY login.pug /var/www/sharelatex/web/app/views/user/
