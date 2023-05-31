#!/bin/bash 
 
echo "Укажите путь до корневого каталога:" 
read root_dir 
 
for user in $(awk -F':' '{ print $1 }' /etc/passwd); do  
    if [ ! -d "$root_dir/$user" ]; then  
        mkdir "$root_dir/$user" 
        chmod 755 "$root_dir/$user" 
        chown $user "$root_dir/$user" 
        echo "Папка $root_dir/$user создана" 
    else 
        echo "Папка $root_dir/$user уже существует" 
    fi 
done 2>&1 | tee -a log.txt