col=$1

list=$(cat $2 | tail -n +2 |  cut -d ',' -f $col)

sum=0
count=0

for value in $list; do
    sum=$(echo "scale=6; $sum + $value" | bc)
    count=$(($count + 1))
done

echo $(echo "scale=6; $sum / $count" | bc)
