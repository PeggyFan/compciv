if [[ -z "$@" ]]; then
   echo "Please pass in at least one name.";
fi

for name in "$@"; do
  echo "What's in a $name?"

	datafile='data-hold/namesample.txt'
	name_matches=$(cat $datafile | grep "$name,")

	m_count=0
	f_count=0 
	
	for row in $name_matches; do
	   babies=$(echo $row | cut -d ',' -f '3')
	   if [[ $row =~ ',M,' ]]
	     then    
	       m_count=$((m_count + babies))
	     else
	       f_count=$((f_count + babies))
	   fi      
	 done

	total_babies=$((m_count + f_count)) 

	if [[ $total_babies -ne 0 ]]; then 
		pct_female=$((100 * f_count / total_babies))
		pct_male=$((100 * m_count / total_babies))
	else	
		:
		fi

	if [[ $pct_female -ge 50 ]]; then
	  g_and_pct="F,$pct_female"
	else
	  if [[ $pct_male -ge 50 ]]
	       then 
	         g_and_pct="M,$pct_male"          
	       else
	         g_and_pct="NA,0"  
	      fi
	   fi

    echo "$name,$g_and_pct,$total_babies"
done
