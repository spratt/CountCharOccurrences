#!/usr/bin/awk -f
BEGIN { FS = "" }
{
    for (i = 1; i <= NF; i = i + 1)
	count[$i]++
}
END {
    for(x in count)
	print x ":\t" count[x] "\t" (count[x]/NF)
}