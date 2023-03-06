isHead=1;
isTail=2;
headCount=0;
tailCount=0;

while [[ $headCount -lt 21 || $tailCount -lt 21 ]]
do
 coinFace=$((1+RANDOM%2));
   case $coinFace in
          $isHead)
          headCount=$(($headCount+1))
          ;;

          $isTail)
          tailCount=$(($tailCount+1))

          ;;
   esac
done

       echo "Head won $headCount times"

       echo "Tail won $tailCount times"

      if [ $headCount -gt $tailCount ]
      then
           echo  "Head won by :" $(($headCount-$tailCount))
      elif [ $headCount -eq $tailCount ]
      then
           echo "tie situation"
      else
           echo "Tail won by :" $(($tailCount-$headCount))
     fi

