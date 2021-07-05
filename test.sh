fname=`blocked_domains.acl`
terminal=`tty`

exec < $fname

declare -i count=1
declare -i index=1
declare -i requiredStatus=200

while read line
do
    newLine="${line:1: -1}"
    status=$(curl -s --head -w %{http_code} http://$newLine)
    echo "$status"

    if [ $status -ne 200 ]
    then
        grep -v "$newLine" $fname > tmpfile && mv tmpfile "$fname"
    fi
done

exec < $terminal

