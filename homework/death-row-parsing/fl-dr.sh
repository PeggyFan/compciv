cd data-hold
cat fl1.html | pup 'td:nth-of-type(3) text{}' > FL.txt
sed -i "s/$(printf "\302\240")//g" FL.txt
sed -i '/^\s*$/d' FL.txt
cat fl2.html | pup 'td:nth-of-type(3) text{}' | sed 's/^ *//' >> FL.txt
cat fl3.html | pup 'td:nth-of-type(3) text{}' >> FL.txt
cat FL.txt
cd ..
