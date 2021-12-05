while read p; do  
  find dirToSearch -type f -name "$p" -exec rm {} \;
done <to_delete.txt

return 

echo "checking file.. $p"


a="avi"
echo $a
find dirToSearch -type f -name "$a"

return
