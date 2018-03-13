#! /usr/bin/awk

begin{
OFS=FS=":"
}
NR==FNR{
   record[$2]=$1
}

NR>FNR{
   print $1,$2,record[$2]
}
