
#!/bin/bash
if [ $# -ne 1 ]; then
    echo "Usage: $0 <directory>"
    exit 1
fi

dir=$1

if [ ! -d "$dir" ]
then
    mkdir "$dir"
    pwd
else
    rm -f "$dir"/*
fi

cd "$dir" || exit 1
 

for ((i=1; i<=10; i++))
do
    filepth="`cat /proc/sys/kernel/random/uuid`.txt"
    touch $filepth
    echo "$i" > $filepth
done

ls -l 

