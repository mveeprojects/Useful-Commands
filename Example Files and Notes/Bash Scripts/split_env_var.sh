# Splits an env var by a given delimiter and returns the first element (see -f1)
# In the example below, this outputs "a"

export myvar="a,b,c"
A="$(cut -d',' -f1 <<<"$myvar")"
echo "$A"
