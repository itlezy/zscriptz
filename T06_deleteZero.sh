while read p; do  
  find zprn -type f -name "$p" -exec rm {} \;
done <to_delete.txt

return 

echo "checking file.. $p"


a="file_to_delete name.bin"
echo $a
find dirName -type f -name "$a"

return
