## file exeqtion rights

## [Права в Linux (chown, chmod, SUID, GUID, sticky bit, ACL, umask)](https://habr.com/ru/post/469667/)

    ls -l

    $getfacl some_file

# file: media/User123
# owner: root
# group: root
user::rwx           # Права владельца, т.е. рута
user:User123:r-x    # Права User123 (запись ACL)
group::---
mask::r-x           # Маска прав для создаваемых в каталоге объектов (запись ACL)
other::---