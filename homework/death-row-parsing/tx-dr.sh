cd data-hold
cat tx1.html | pup 'td:nth-of-type(7) text{}' > TX.txt
cat tx2.html | pup 'td:nth-of-type(4) text{}' >> TX.txt
cat TX.txt
cd ..
