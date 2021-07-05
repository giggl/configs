terminal=`tty`

declare -i requiredStatus=200

for line in $(cat file.acl);
do
    newLine="${line#.}"
    status=$(curl -s --head -w %{http_code} http://$newLine)

    if [ $status != $requiredStatus ]
    then
        grep -v "$newLine" blocked_domains.acl > tmpfile && mv tmpfile blocked_domains.acl
    fi
done

exec < $terminal

