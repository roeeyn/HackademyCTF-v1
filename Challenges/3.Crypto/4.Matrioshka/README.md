# 4.Matrioshka

Pusiste atención a los repasos?

```
cat original_flag.txt | base32 | base64 -> a convertidor de ascii a binario
```

```
convertidor de binario a ascii -> | base64 -d | base32 -d
```

```
$ echo AB | perl -lpe '$_=unpack"B*"'
0100000101000010
$ echo 0100000101000010 | perl -lpe '$_=pack"B*",$_'
AB
```
