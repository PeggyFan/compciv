mkdir data-hold
cd data-hold
curl -s http://www.tdcj.state.tx.us/death_row/dr_offenders_on_dr.html -o tx1.html
curl -s http://www.tdcj.state.tx.us/death_row/dr_list_all_dr_1923-1973.html -o tx2.html
curl -s http://www.dc.state.fl.us/activeinmates/deathrowroster.asp -o fl1.html
curl -s http://www.dc.state.fl.us/oth/deathrow/execlist.html -o fl2.html
curl -s http://www.dc.state.fl.us/oth/deathrow/execlist2.html -o fl3.html
curl -s http://www.cdcr.ca.gov/capital_punishment/docs/condemnedinmatelistsecure.pdf -o ca1.pdf
cd ..
