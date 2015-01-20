bash helper2.sh
cd data-hold2
cat *.TXT >> all.txt
state=$1
year=$2
awk -F ',' '$1=="'$state'" && $3=='$year'' all.txt | sort | uniq | cut -f 2,4,5 -d ',' >> 1.txt
awk -F ',' '$1!="'$state'" && $3!='$year'' all.txt | sort | uniq | cut -f 2,4,5 -d ',' >> 2.txt
comm -23 <(sort 1.txt) <(sort 2.txt) 
rm *
cd ..
rmdir data-hold2
