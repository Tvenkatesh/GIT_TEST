echo "WELCOME TO BRANCH COMPARISION"
count=`git branch | wc -l`
#echo $count

echo " Compare Branch1 files with Branch2"
for (( i=1;i<=3; i++ ))
do
for (( c=1; c<=$count-1; c++ ))
do

echo "Branch2 file number:$c"
echo "Branch1 file number:$i"
git diff Branch1:b1_file$i.txt Branch2:b2_file$c.txt

done
done

echo " Comapare Branch1 files with Branch3"

for (( i=1;i<=3; i++ ))
do
for (( c=1; c<=$count-1; c++ ))
do

echo "Branch3 file number : $c"
echo "Branch1 file number : $i"
git diff Branch1:b1_file$i.txt Branch3:b3_file$c.txt

done
done

