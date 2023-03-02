# About
sogreatandpowerful's portage overlay

## Using this repository
There are two main methods for making use of this repository, discussed in the sections below.

### Local Repository
For the [local repository](https://wiki.gentoo.org/wiki/Handbook:Parts/Portage/CustomTree#Defining_a_custom_repository) method, create a `/etc/portage/repos.conf/sogreatandpowerful` file and add the following:-
```
[sogreatandpowerful]
priority = 50
location = /var/db/repos/sogreatandpowerful
sync-type = git
sync-uri = https://github.com/sogreatandpowerfull/portage-overlay.git
auto-sync = Yes
```
Then run `<superuser> emerge --sync sogreatandpowerful`. Portage should now find and update the repository.

### Layman
You can also use the Layman tool to add and sync the repository. Execute the following:-
```
<superuser> layman -o https://raw.githubusercontent.com/sogreatandpowerful/portage-overlay/master/repository.xml -f -a sogreatandpowerful
```
