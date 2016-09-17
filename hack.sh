FILE=$1

cat $FILE | tr '\n' '\0' | xargs -0 -n1 ./script.sh
