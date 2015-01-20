bash helper.sh
cd data-hold
rename "s/^yob//" *
comm -23 <(sort $1.txt) <(sort $2.txt) | cut -f 1-2 -d ',' 
rm *
cd ..
rmdir data-hold

