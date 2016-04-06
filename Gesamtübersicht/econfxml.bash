#!/bin/bash
file_in="econf.csv"
file_out="econf.xml"
echo '<?xml version="1.0"?>' > $file_out
echo '<data>' >> $file_out
while IFS=$'	' read -r -a arry
do
  echo '  <conf>' >> $file_out
  echo '    <err>"'${arry[0]}'"</err>' >> $file_out
  echo '    <gt>"'${arry[1]}'"</gt>' >> $file_out
  echo '    <file>'${arry[2]}'</file>' >> $file_out
  echo '  </conf>' >> $file_out
done < $file_in
echo '</data>' >> $file_out
