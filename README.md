# overleaf_ldap
ldap implementation for the overleaf community edition [overleaf](https://github.com/overleaf/overleaf)

Work by [kemnitzs](https://github.com/kemnitzs) and [worksasintended](https://github.com/worksasintended).

This solution uses ldapjs.

## Usage

Edit `docker-compose.yml` to fit your local setup. 

- `ADMIN_MAIL`: login for local admin user which gets checked before the ldap routine during login. This is the only user that can login if ldap is down and does not need to exist in ldap. You need to create the same user in overleaf, for example using the launchpad. The admin user does not have to be in the same domain as other users. 
- `LDAP_SERVER`: address of the ldap server
- `SHARELATEX_LDAP_URL`: pro server only setting, but set it to your ldap url to make account settings page read-only (it will show 'settings are managed externally')
- `LDAP_BIND_BASE`: base dn to search uid in. For example `ou=people,dc=example,dc=com`


For persistent storage use volumes. For secure connections either use nginx-proxy or add the certificate to nginx inside the worksasintended/overleaf-ldap container and adjust nginx settings accordingly.

### Start the server using docker-compose

``` 
docker-compose up -d

```


## Building the image

The image `worksasintended/overleaf-ldap` is available at [dockerhub](https://cloud.docker.com/u/worksasintended/repository/docker/worksasintended/overleaf_ldap)

You can also build it yourself simply using the `docker build` command or the `build` script. 


