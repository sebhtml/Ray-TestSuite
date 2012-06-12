for i in $(cat files )
do
	wget $i &> $(basename $i).log &
done


