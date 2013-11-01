
while read myLine
do
	oldName=$(echo $myLine|awk '{print $1}')
	newName=$(echo $myLine|awk '{print $2}')
	expression="s/ $oldName / $newName /g"
	echo $expression

	sed -i "$expression" Surveyor-Qin-et-al-2010-1.sh

done < common-names.tsv
