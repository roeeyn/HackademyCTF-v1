# 4. No pasa nada oiga

Cuando ando atorado en un problema, me gusta ver vídeos sin razón como [éste](https://www.youtube.com/watch?v=jRu8VEZfo_Y).
Este video en particular me gustó tanto que lo descargué, y al verlo por 285va vez recordé lo que un mentor me dijo alguna vez.

> Cuando estés atorado en un problema, recuerda que el **duplicador de datos** debe llevar un tamaño de bloque 1, un salto de 420 y una cuenta de 57.

Espero que tú puedas entender lo que quiso decir, porque cuando lo dijo, estaba pensando en otro meme.

```
base64
wc -c
dd if=bandera.b64 of=no_pasa_nada_oiga.mp4 bs=1 seek=420 count=57 conv=notrunc
dd of=cosa.txt if=no_pasa_nada_oiga.mp4 bs=1 count=57 skip=420 conv=notrunc

if - input file, el archivo de donde se sacará la info
of - el archivo a donde se copiará la info
bs - el tamaño del bloque
count - el numero de bloques que se copiará
skip - el número de bloques que se saltarán del archivo entrada
seek - el número de bloques que se saltarán del archivo de salida
```
