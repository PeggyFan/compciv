cd data-hold
pdftotext ca1.pdf > ca1.txt
cat ca1.txt | grep -E 'BLA|WHI|OTH|HIS' | grep -o -w '\w\{1,3\}' > CA.txt
cat CA.txt
cd ..
