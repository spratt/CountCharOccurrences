#!/usr/bin/awk -f
BEGIN {
    FS = ""
    cipher[1] = "E"
    cipher[2] = "T"
    cipher[6] = "A"
    cipher[7] = "O"
    cipher[9] = "N"
    cipher[4] = "R"
    cipher[0] = "I"
    cipher[3] = "S"
    cipher[8] = "H"
    cipher[5] = "D"
}
{
    s = ""
    for (i = 1; i <= NF; i = i + 1)
	s = s cipher[$i]
    print s
}