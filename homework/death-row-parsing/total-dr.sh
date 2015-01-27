bash tx-dr.sh &> /dev/null 
bash fl-dr.sh &> /dev/null
bash ca-dr.sh &> /dev/null
cd data-hold

sed -e 's/^/TX,/' TX.txt > TX1.txt

cat FL.txt > FL1.txt
sed -i "s/WM/White/" FL1.txt 
sed -i "s/WF/White/" FL1.txt 
sed -i "s/BM/Black/" FL1.txt 
sed -i "s/BF/Black/" FL1.txt 
sed -i "s/HM/Hispanic/" FL1.txt 
sed -i "s/HF/Hispanic/" FL1.txt 
sed -i "s/OM/Other/" FL1.txt 
sed -i "s/OF/Other/" FL1.txt 
sed -i -e 's/^/FL,/' FL1.txt
sed -i '1d' FL1.txt

cat CA.txt > CA1.txt
sed -i "s/WHI/White/" CA1.txt
sed -i "s/BLA/Black/" CA1.txt 
sed -i "s/OTH/Other/" CA1.txt 
sed -i "s/HIS/Hispanic/" CA1.txt 
sed -i -e 's/^/CA,/' CA1.txt

cat TX1.txt > ALL.txt
cat FL1.txt >> ALL.txt
cat CA1.txt >> ALL.txt
cat ALL.txt
cd ..

